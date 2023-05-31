<template>
    <top-nav :show-h-menu="showRightColumn"/>

    <side-nav v-if="$vuetify.display.mdAndDown || !showRightColumn"/>

	<v-main v-if="$store.getters['auth/getUser'] !== null">
        <v-row class="justify-center">
            <v-col cols="12" :lg="showRightColumn ? 6 : 12" :class="{ 'pr-lg-6': showRightColumn }">
                <template v-if="eventSlugs[0]">
                    <judge-rating :event-slug="eventSlugs[0]"/>
                </template>
            </v-col>
            <v-col v-if="showRightColumn" cols="12" lg="6" class="pl-lg-6">
                <template v-if="eventSlugs[1]">
                    <judge-rating :event-slug="eventSlugs[1]"/>
                </template>
            </v-col>
        </v-row>
	</v-main>
</template>


<script>
    import topNav from '../components/nav/TopNav.vue';
    import sideNav from '../components/nav/SideNav.vue';
    import judgeRating from '../components/score/JudgeRating.vue';

    export default {
        name: 'Judge',
        emits: ['startPing'],
        components: {
            topNav,
            sideNav,
            judgeRating
        },
        data() {
            return {
                duoSlug: null
            }
        },
        computed: {
            eventSlugs() {
                let slugs = [null, null];
                if(this.duoSlug) {
                    const duo = this.$store.getters['events/getAssignedDuos'].find(duo => duo.slug === this.duoSlug);
                    if(duo)
                        slugs = duo.eventSlugs;
                }
                return slugs;
            },
            showRightColumn() {
                return this.eventSlugs[1] != null && this.eventSlugs[1] !== 'production-attire';
            }
        },
        watch: {
            $route: {
                immediate: true,
                handler(to, from) {
                    this.duoSlug = null;

                    // delay duoSlug change to force re-render
                    setTimeout(() => {
                        this.duoSlug = to.params.duoSlug;
                    }, 60);
                }
            }
        },
        mounted() {
            this.$emit('startPing');
        }
    }
</script>


<style scoped>

</style>