<template>

    <div class="py-5">
        <div class="row">
            <div class="col-lg text-center">
                <h4 class="display-4 font-weight-bold color-blue">Welcome back,<span class="text-muted"> login in to
                        continue</span></h4>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 offset-lg-2 p-4">
                <div class="card border-0 shadow overflow-hidden">
                    <ValidationObserver v-slot="{ invalid }">
                        <div class="card-body">
                            <form>

                                <div class="row">
                                <div class="col-lg-3"></div>

                                <div class="form-group relative col-lg-6">
                                    <ValidationProvider name="email" rules="required|email" v-slot="{ errors }">
                                        <input type="email" class="form-control br-25 c-bg p-4" v-model="$store.state.registrationFormData.c_d_email"
                                            placeholder="Email Address">
                                        <img src="../assets/images/folder/Icons/Email.svg" class="icon" alt="">
                                        <span class="error">{{ errors[0] }}</span>
                                    </ValidationProvider>
                                </div>
                                <div class="col-lg-3"></div>
                                </div>

                                <div class="row">
                                <div class="col-lg-3"></div>
                                <div class="form-group relative col-lg-6">
                                    <ValidationProvider name="password" rules="required|alpha_num" v-slot="{ errors }">
                                        <input type="password" class="form-control br-15 c-bg p-4" v-model="$store.state.registrationFormData.c_d_createPassword"
                                            placeholder="Password">
                                        <img src="../assets/images/folder/Icons/blind.svg" class="icon" alt="">
                                        <span class="error">{{ errors[0] }}</span>
                                    </ValidationProvider>
                                </div>
                                <div class="col-lg-3"></div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3"></div>
                                <div class="form-group col-lg-6">
                                    <a href="./password/reset">Forget password?</a>
                                    <br>
                                    <span class="color-blue">New user?</span> <a href="./register">Create account</a>
                                </div>
                                <div class="col-lg-3"></div>
                                </div>
                                <div class="form-group text-center">
                                    <button class="btn c-button btn-lg col-lg-6" :disabled="invalid" @click.prevent="$store.dispatch('loginUser')">Sign In</button>
                                </div>

                                <div class="row">
                                    <div class="col-lg-3"></div>
                                <div class="form-group col-log-6">
                                    <span class="color-blue">Trouble signing in?</span> <a href="./help">Contact
                                        support</a>
                                </div>
                                <div class="col-lg-3"></div>
                                </div>
                            </form>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img3">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img4">
                    
                    </ValidationObserver>

                </div>

            </div>
        </div>
    </div>
</template>

<script>
    import commonMixin from '../mixins/common'
    export default {
        name: 'LoginComponent',
        mixins: [commonMixin],

    }

</script>

<style scoped>
.display-4 {
    font-size: 2.5rem;
    font-weight: 300;
    line-height: 1.2;
}

.form-control {
    display: block;
    width: 100%;
    height: calc(1.6em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 0.9rem;
    font-weight: 400;
    line-height: 1.6;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border-radius: 25px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.icon {
    position: absolute;
    right: 10%;
    top: 36%;
}

.btn-lg, .btn-group-lg > .btn {
    padding: 0.5rem 1rem;
    font-size: 1.125rem;
    line-height: 1.5;
    border-radius: 25px;
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid rgba(0, 0, 0, 0.125);
    border-radius: 15px;
}
.img1 {
    position: absolute;
    left: 76%;
    top: 92%;
    opacity: 0.5;
    width: 30%;
    transform: rotate(40deg);
}
.img2 {
    position: absolute;
    left: 69%;
    top: 94%;
    opacity: 0.5;
    width: 30%;
    transform: rotate(40deg);
}
.img3 {
    position: absolute;
    left: -4%;
    top: 79%;
    opacity: 0.5;
    width: 30%;
    transform: rotate(35deg);
}
.img4 {
    position: absolute;
    left: 5%;
    top: 86%;
    opacity: 0.5;
    width: 30%;
    transform: rotate(35deg);
}


</style>