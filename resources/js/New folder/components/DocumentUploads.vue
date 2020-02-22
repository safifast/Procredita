<template>
    <div class="row">
        <div class="col-lg-10 offset-lg-1 p-4">
            <div class="card border-0 shadow overflow-hidden">
                <ValidationObserver v-slot="{ invalid }">
                <div class="card-body">
                    <div class="row mb-2">
                        <div class="col-lg text-center color-blue">
                            Please, kindly provide a valid Identification Card and a Utility Bill (not less than 3
                            months)
                        </div>
                        <div class="col-lg text-center alert alert-danger" v-if="showFileSelectError">
                            Please select Government Issued, Utility Bill and 6 months bank statement files
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-lg text-center">
                            <ValidationProvider rules="required|mimes:image/jpeg,image/png,pdf" ref="provider1"
                                v-slot="{ errors, validate }">
                                <input type="file" name="govFile" @change="handleGovFileChange" id="file" ref="govFile"
                                    style="display:none">
                                <span class="error">{{ errors[0] }}</span>
                            </ValidationProvider>
                            <ValidationProvider rules="required|mimes:image/jpeg,image/png,pdf" ref="provider2"
                                v-slot="{ errors, validate }">
                                <input type="file" name="utilityFile" @change="handleUtilityFileChange" id="file" ref="utilityFile"
                                    style="display:none">
                                <span class="error">{{ errors[0] }}</span>
                            </ValidationProvider>
                            <ValidationProvider rules="required|mimes:image/jpeg,image/png,pdf" ref="provider3"
                                v-slot="{ errors, validate }">
                                <input type="file" name="bankFile" @change="handleBankFileChange" id="file" ref="bankFile"
                                    style="display:none">
                                <span class="error">{{ errors[0] }}</span>
                            </ValidationProvider>
                        </div>
                    </div>
                    <form class="">
                        <div class="row">
                            <div class="col-lg-6">


                                <div class="form-group relative">


                                    <button class="btn btn-outline-info btn-block btn-lg text-small"
                                        @click.prevent="$refs.govFile.click()">
                                        Government issued ID; choose a file(PDF,JPEG,PNG)
                                    </button>
                                    <img src="../assets/images/icons/id-card.png" class="icon" alt="">

                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group relative">
                                    <button class="btn btn-outline-info btn-block btn-lg text-small"
                                        @click.prevent="$refs.utilityFile.click()">
                                        Utility Bill:choose a file(PDF,JPEG,PNG)
                                    </button>
                                    <img src="../assets/images/icons/invoice-copy.png" class="icon" alt="">
                                </div>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-6 offset-lg-3">
                                <div class="form-group relative">
                                    <button class="btn btn-outline-info btn-block btn-lg text-small"
                                        @click.prevent="$refs.bankFile.click()">
                                        6 months' Bank Statement;choose a file(PDF,JPEG,PNG)
                                    </button>
                                    <img src="../assets/images/icons/invoice-copy.png" class="icon" alt="">
                                </div>

                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-8 offset-lg-2">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
                                    <label class="form-check-label text-small" for="defaultCheck2">
                                        I accept that all the information provided for my loan application is correct.
                                    </label>
                                    <p class="color-blue text-small">
                                        Click submit to proceed with payment for risk assessment and due diligence.
                                    </p>
                                </div>
                            </div>

                        </div>



                    </form>
                    <div class="row mt-3">
                        <div class="col-lg text-center">

                            <p>
                                <button id="b" class="btn c-button btn-lg col-lg-4" :disabled="invalid"
                                    @click="checkBeforeGoingToNextPage()">Submit</button>
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
        name: 'DocumentUploads',
        mixins: [commonMixin],
        data() {
            return {
                showFileSelectError: false
            }
        },
        methods: {
            async handleGovFileChange(e) {
                const {
                    valid
                } = await this.$refs.provider1.validate(e);

                if (valid) {
                    // TODO: Upload the file
                    this.$store.commit('setGovFileData', e.target.files[0])
                    
                }
            },
            async handleUtilityFileChange(e) {
                const {
                    valid
                } = await this.$refs.provider2.validate(e);

                if (valid) {
                    // TODO: Upload the file
                    this.$store.commit('setUtilityFileData', e.target.files[0])
                    
                }
            },
            async handleBankFileChange(e) {
                const {
                    valid
                } = await this.$refs.provider3.validate(e);

                if (valid) {
                    // TODO: Upload the file
                    this.$store.commit('setBankFileData', e.target.files[0])
                    
                }
            },
            checkBeforeGoingToNextPage() {
                if (this.$store.state.govmentIssuedFileInfo && this.$store.state.UtilityBillFileInfo && this.$store.state.BankStatementFileInfo) {
                    this.showFileSelectError = false
                    this.$store.commit('nextStep')
                    
                    
                }else {
                    this.showFileSelectError = true
                }
            }
        }
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

.btn-lg, .btn-group-lg > .btn {
    padding: 1rem;
    font-size: 11px;
    line-height: 1.5;
    border-radius: 25px;
}
.btn-outline-info {
    color: #6cb2eb;
    border-color: #042745;
}
.btn {
    color: gray;
}
#b {
    color: #fff
}
.btn:hover {
    color: #fff !important;
    border-color: gray !important;
    text-decoration: none;
}
</style>
