<?php
require_once '_init.php';

// get authenticated user
$authUser = getUser();

if(!$authUser)
    denyAccess();

else if($authUser['userType'] !== 'judge')
    denyAccess();

else {
    require_once 'models/Judge.php';
    $judge = new Judge($authUser['username'], $_SESSION['pass']);

    if(!$judge->authenticated())
        denyAccess();

    else {
        // ping judge
        if(isset($_POST['ping'])) {
            $judge->ping();
            if(isset($_POST['duoSlug']))
                $judge->setActivePortion($_POST['duoSlug']);

            echo json_encode([
                'pinged'  => true,
                'calling' => $judge->isCalling()
            ]);
        }

        // call help for judge
        else if(isset($_POST['call'])) {
            $judge->call(filter_var($_POST['call'], FILTER_VALIDATE_BOOLEAN));

            echo json_encode([
                'called' => true,
            ]);
        }

        // get events assigned to judge
        else if(isset($_GET['getEvents'])) {
            require_once 'models/Duo.php';

            echo json_encode([
                'duos'   => Duo::rows(),
                'events' => $judge->getRowEvents()
            ]);
        }

        // get scoreSheet of the passed event
        else if(isset($_GET['getScoreSheet'])) {
            require_once 'models/Event.php';

            $event_slug = trim($_GET['getScoreSheet']);
            $event = Event::findBySlug($event_slug);
            if(isset($_GET['duoSlug']))
                $judge->setActivePortion($_GET['duoSlug']);

            echo json_encode([
                'event'    => $event->toArray(),
                'criteria' => $event->getRowCriteria(),
                'teams'    => $event->getRowTeams(),
                'ratings'  => $judge->getRowEventRatings($event)
            ]);
        }

        // auto save criterion rating for teams
        else if(isset($_POST['rating'])) {
            require_once 'models/Criterion.php';
            require_once 'models/Team.php';

            $rating = $_POST['rating'];
            $value  = floatval($rating['value']);

            $team = Team::findById($rating['team_id']);
            $criterion = Criterion::findById($rating['criterion_id']);
            $judge->setCriterionTeamRating($criterion, $team, $value);

            // map [production-number] to [production-attire]
            require_once 'models/Event.php';
            $event1 = $criterion->getEvent();
            if($event1->getSlug() == 'production-number') {
                if($event2 = Event::findBySlug('production-attire')) {
                    foreach($event2->getAllCriteria() as $event2_criterion) {
                        if(trim(strtolower($criterion->getTitle())) == trim(strtolower($event2_criterion->getTitle()))) {
                            $value = ($event2_criterion->getPercentage() * $value) / $criterion->getPercentage();
                            $judge->setCriterionTeamRating($event2_criterion, $team, $value);
                            break;
                        }
                    }
                }
            }
        }

        // submit ratings
        else if(isset($_POST['ratings'])) {
            require_once 'models/Event.php';
            require_once 'models/Criterion.php';
            require_once 'models/Team.php';

            // determine if locking ratings or not
            $locking = false;
            if(isset($_POST['locking']))
                $locking = filter_var($_POST['locking'], FILTER_VALIDATE_BOOLEAN);

            $event1 = null;
            $event2 = null;
            $event2_criteria = [];
            foreach($_POST['ratings'] as $rating) {
                $value = floatval($rating['value']);

                $team = Team::findById($rating['team_id']);
                $criterion = Criterion::findById($rating['criterion_id']);
                $rating_is_locked = filter_var($rating['is_locked'], FILTER_VALIDATE_BOOLEAN);

                $judge->setCriterionTeamRating($criterion, $team, $value, ($rating_is_locked || $locking));

                // map [production-number] to [production-attire]
                if(!$event1)
                    $event1 = $criterion->getEvent();

                if($event1->getSlug() == 'production-number') {
                    if(!$event2)
                        $event2 = Event::findBySlug('production-attire');

                    if($event2) {
                        if(sizeof($event2_criteria) <= 0)
                            $event2_criteria = $event2->getAllCriteria();

                        foreach($event2_criteria as $event2_criterion) {
                            if(trim(strtolower($criterion->getTitle())) == trim(strtolower($event2_criterion->getTitle()))) {
                                $value = ($event2_criterion->getPercentage() * $value) / $criterion->getPercentage();
                                $judge->setCriterionTeamRating($event2_criterion, $team, $value, ($rating_is_locked || $locking));
                                break;
                            }
                        }
                    }
                }
            }
        }

        else
            denyAccess();
    }
}
