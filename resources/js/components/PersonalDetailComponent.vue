<template>
    <div class="row pb-5">
        <div class="col-lg-8 offset-lg-2 p-4">
            <div class="card border-0 shadow overflow-hidden">
                <ValidationObserver v-slot="{ invalid }">
                    <div class="card-body">
                        <form class="">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="title" rules="required" v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.p_d_title"
                                                class="form-control br-15 c-bg p-4" placeholder="Title">
                                            <!-- <i class="fa fa-user fa-lg icon" aria-hidden="true"></i> -->
                                            <img src="../assets/images/folder/Icons/User_Data.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="fname" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.p_d_fName"
                                                class="form-control br-15 c-bg p-4" placeholder="First Name">
                                            <img src="../assets/images/folder/Icons/User.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="lname" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text" class="form-control br-15 c-bg p-4"
                                                placeholder="Last Name"
                                                v-model="$store.state.registrationFormData.p_d_lName">
                                            <img src="../assets/images/folder/Icons/User.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="mname" rules="required|alpha_spaces"
                                            v-slot="{ errors }">
                                            <input type="text" v-model="$store.state.registrationFormData.p_d_mName"
                                                class="form-control br-15 c-bg p-4" placeholder="Middle Name">
                                            <img src="../assets/images/folder/Icons/User.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="dependent"
                                            :rules="{required: true, regex: /^(19|20)\d{2}(\-)(((0)[0-9])|((1)[0-2]))(\-)([0-2][0-9]|(3)[0-1])$/i }"
                                            v-slot="{ errors }">
                                            <input type="date" required ref="dateINput"
                                                v-model="$store.state.registrationFormData.p_d_dateOfBirth" 
                                                placeholder="Date Of Birth" title="Date Of Birth" class="form-control br-15 c-bg p-4">
                                            <img src="../assets/images/folder/Icons/Calendar.svg" class="icon" alt="">
                                            <span class="error">{{ errors[0] }}</span>
                                        </ValidationProvider>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group relative">
                                        <ValidationProvider name="dependent" rules="required|integer"
                                            v-slot="{ errors }">
                                            <input type="number"
                                                v-model="$store.state.registrationFormData.p_d_noOfDependents"
                                                class="form-control br-15 c-bg p-4" placeholder="Number of Dependents">
                                            <img src="../assets/images/folder/Icons/family.svg" class="icon" alt="">
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
                                        @click="gotoNext">Continue</button>
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
        name: 'PersonalDetailComponent',
        mixins: [commonMixin],
        methods: {
            gotoNext() {
                if (this.$store.state.registrationFormData.p_d_dateOfBirth == "") {
                    this.$refs.dateINput.focus()
                    this.$refs.dateINput.blur()
                } else {
                    this.$store.commit('nextStep')

                }
            },
        },



    }

</script>

<style scoped>
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
.img3{
    position: absolute;
    left: -12%;
    top: 87%;
    opacity: 0.5;
    width: 30%;
    transform: rotate(35deg);
}
.img4{
    position: absolute;
    left: 6%;
    top: 86%;
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
</style>
