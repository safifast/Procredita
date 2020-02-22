<template>
    <div class="container">
        <div class="row">
            <div class="col-lg text-center">
                <ul class="nav justify-content-around c-border bg-blue col-lg-4 offset-lg-4 auth-section">
                    <li class="nav-item">
                        <button class="btn c-button btn-lg " @click="gotoPage('register')"
                            :class="{'active': $store.state.currentLink != 'login'}">Sign Up</button>
                    </li>
                    <li class="nav-item">
                        <button class="btn c-button btn-lg " @click="gotoPage('login')"
                            :class="{'active': $store.state.currentLink == 'login'}">Log in</button>
                    </li>

                </ul>
                <br>



            </div>
        </div>
        <LoginComponent v-if="$store.state.currentLink == 'login'"/>
        <SignUpComponent v-else/>
    </div>
</template>

<script>
    import LoginComponent from './LoginComponent'
    import SignUpComponent from './SignUpComponent'
    export default {
        name: 'AuthPage',
        components: {
            LoginComponent,
            SignUpComponent
        },
        data() {
            return {}
        },
        mounted() {
            // console.log(this.$store.state.currentLink);
            this.$store.commit('setCurrentLink')

        },
        methods:{
            gotoPage(name) {
                // console.log(location);
                location.assign(location.origin + '/' + name)
            }
        }
    }

</script>

<style>

</style>
