<template>
    <div class="row">
        <div class="col-lg-8 offset-lg-2 p-4">
            <div class="card border-0 shadow overflow-hidden">
                <ValidationObserver v-slot="{ invalid }">
                    <div class="card-body">
                        <form class="">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_accountName" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text"
                                                v-model="$store.state.registrationFormData.b_a_accountName"
                                                class="form-control br-25 c-bg p-4" placeholder="Account Name">
                                            <img src="../assets/images/icons/man-(1)-copy-2.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_accountNumber" rules="required|integer"
                                            v-slot="{ errors }">
                                            <input type="text"
                                                v-model="$store.state.registrationFormData.b_a_accountNumber"
                                                class="form-control br-25 c-bg p-4" placeholder="Account Number">
                                            <img src="../assets/images/icons/calculator.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_bankName" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.b_a_bankName"
                                                class="form-control br-25 c-bg p-4" placeholder="Bank Name">
                                            <img src="../assets/images/icons/temple.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_bvn" rules="required|alpha_num"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.b_a_bvn"
                                                class="form-control br-25 c-bg p-4" placeholder="BVN">
                                            <img src="../assets/images/icons/touch.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_accountOld" rules="required|alpha_num"
                                            v-slot="{ errors }">
                                            <input type="text"
                                                v-model="$store.state.registrationFormData.b_a_accountOld"
                                                class="form-control br-25 c-bg p-4"
                                                placeholder="How old is your account">
                                            <img src="../assets/images/icons/date-copy.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="b_a_phoneNumber" rules="required|checkPhone"
                                            v-slot="{ errors }">
                                            <input type="text"
                                                v-model="$store.state.registrationFormData.b_a_phoneNumber"
                                                class="form-control br-25 c-bg p-4" placeholder="Phone Number">
                                            <img src="../assets/images/icons/smartphone.png" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>



                        </form>
                        <div class="row mt-3">
                            <div class="col-lg text-center">

                                <p>
                                    <button class="btn c-button btn-lg col-lg-6" :disabled="invalid"
                                        @click="$store.commit('nextStep')">Continue</button>
                                </p>
                            </div>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img3">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img4">
                    </div>
                </ValidationObserver>

            </div>

        </div>
    </div>
</template>

<script>
    import commonMixin from '../mixins/common'
    export default {
        name: 'BankAccountDetailComponent',
        mixins: [commonMixin]
    }

</script>

<style scoped>
.img1 {
    position: absolute;
    left: 76%;
    top: 92%;
    opacity: 1.5;
    width: 30%;
    transform: rotate(40deg);
}
.img2 {
    position: absolute;
    left: 69%;
    top: 94%;
    opacity: 1;
    width: 30%;
    transform: rotate(40deg);
}
.img3{
    position: absolute;
    left: -12%;
    top: 87%;
    opacity: 1.5;
    width: 30%;
    transform: rotate(35deg);
}
.img4{
    position: absolute;
    left: 6%;
    top: 86%;
    opacity: 1;
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

</style>
