<template>
    <div class="row pb-5">
        <div class="col-lg-8 offset-lg-2 p-4">
            <div class="card border-0 shadow overflow-hidden">
                <ValidationObserver v-slot="{ invalid }">
                    <div class="card-body">
                        <form class="">
                            <ValidationObserver>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group relative">
                                            <ValidationProvider name="confirm" v-slot="{ errors }">
                                                <input type="email"
                                                    v-model="$store.state.registrationFormData.c_d_email"
                                                    class="form-control br-15 c-bg p-4" placeholder="Email Address">
                                                <img src="../assets/images/folder/Icons/Email.svg" class="icon" alt="">
                                                <span class="error">{{ errors[0] }}</span>
                                            </ValidationProvider>
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group relative">
                                            <ValidationProvider name="c_d_email"
                                                rules="required|email|checkEmail:@confirm" v-slot="{ errors }">
                                                <input type="email"
                                                    v-model="$store.state.registrationFormData.c_d_reEnterEmail"
                                                    class="form-control br-15 c-bg p-4"
                                                    placeholder="Confirm Email Address">
                                                <img src="../assets/images/folder/Icons/Confirm_email.svg" class="icon" alt="">
                                                <span class="error">{{ errors[0] }}</span>
                                            </ValidationProvider>
                                        </div>
                                    </div>
                                </div>
                            </ValidationObserver>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="c_d_phone" rules="required|checkPhone"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.c_d_phone"
                                                class="form-control br-15 c-bg p-4" placeholder="Phone Number">
                                            <img src="../assets/images/folder/Icons/Phone.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="c_d_current-address" rules="required|checkAddress"
                                            v-slot="{ errors }">


                                            <input type="text"
                                                v-model="$store.state.registrationFormData.c_d_currentAddress"
                                                class="form-control br-15 c-bg p-4" placeholder="Current Address">
                                            <img src="../assets/images/folder/Icons/Current_Address.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="c_d_liveDucation" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.c_d_liveDucation"
                                                class="form-control br-15 c-bg p-4" placeholder="How long have you lived there?">
                                            <img src="../assets/images/folder/Icons/Calendar.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                        
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="c_d_residencial" rules="required" v-slot="{ errors }">
                                            <select class="custom-select"
                                                v-model="$store.state.registrationFormData.c_d_residencial">
                                                <option disabled value="">Residencial Status</option>
                                                <option :value="item.text"
                                                    v-for="(item, ind) in $store.state.residentialStatus_options"
                                                    :key="ind">{{item.text}}</option>

                                            </select>

                                            <img src="../assets/images/folder/Icons/Resdential_Status.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="confirmP" rules="required" v-slot="{ errors }">
                                            <input type="password"
                                                v-model="$store.state.registrationFormData.c_d_createPassword"
                                                class="form-control br-15 c-bg p-4" placeholder="Create Password">
                                            <img src="../assets/images/folder/Icons/View_password.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="c_d_re-password"
                                            rules="required|checkPassword:@confirmP" v-slot="{ errors }">
                                            <input type="password"
                                                v-model="$store.state.registrationFormData.c_d_rePassword"
                                                class="form-control br-15 c-bg p-4" placeholder="Re-enter Password">
                                            <img src="../assets/images/folder/Icons/View_password.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>

                        </form>
                        <div class="row mt-3">
                            <div class="col-lg text-center">

                                <p>
                                    <button class="btn c-button btn-lg col-lg-6 c-border" :disabled="invalid"
                                        @click="$store.commit('nextStep')">Continue</button>
                                </p>
                            </div>
                        </div>
                    </div>

                </ValidationObserver>
                <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img3">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img4">
            </div>
        </div>
    </div>
</template>

<script>
    import commonMixin from '../mixins/common'
    export default {
        name: 'ContactDetailComponent',
        mixins: [commonMixin]

    }

</script>
<style scoped>
.img1 {
    position: absolute;
    left: 76%;
    top: 92%;
    width: 30%;
    opacity: 0.5;
    transform: rotate(40deg);
}
.img2 {
    position: absolute;
    left: 69%;
    top: 94%;
    width: 30%;
    opacity: 0.5;
    transform: rotate(40deg);
}
.img3{
    position: absolute;
    left: -12%;
    opacity: 0.5;
    top: 87%;
    width: 30%;
    transform: rotate(35deg);
}
.img4{
    position: absolute;
    left: 6%;
    top: 86%;
    opacity: 1;
    opacity: 0.5;
    width: 30%;
    transform: rotate(35deg);
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
    border: 1px solid #ced4da;
    border-radius: 25px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.btn-lg, .btn-group-lg > .btn {
    padding: 0.5rem 1rem;
    font-size: 1.125rem;
    line-height: 1.5;
    border-radius: 25px;
}
.custom-select {
    height: 47px;
    border-radius: 25px;
    /* background-color: #f5f9ff; */
    background-color: #fff;
}
</style>
