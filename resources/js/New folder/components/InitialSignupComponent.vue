<template>
    <div class="row">
        <div class="col-lg-10 offset-lg-1">
            <div class="card shadow overflow-hidden">
                <div class="card-body countainer">
                    <div class="row justify-content-end">
                        <div class="col-lg-2">
                            <span class="color-blue font-weight-bold1">Interest Rate</span>
                            <br>
                            <span class="lead">per month</span>
                        </div>
                        <div id="mr3" class="col-lg-1 color-blue font-weight-bold card bg-lightblue text-center">
                            <span class="font-weight-bold color-blue">20%</span>
                        </div>
                    </div>
                    <div class="container BarForm">
                    <form>
                        <div class="p-3">
                            <span class="color-blue font-weight-bold">How much would you like to borrow?</span>
                        </div>
                        <div class="form-group f-border">
                            
                            <div class="range-slider">
                                <input class="range-slider__range" v-model="$store.state.loanAmount" type="range"
                                    value="100" min="500000" max="10000000" @change="$store.commit('calculateLoan')">
                                <span class="range-slider__value">{{$store.state.loanAmount | putComma}} </span>
                                <br>
                                <span class="pull-left color-blue">
                                    ₦500,000
                                </span>
                                <span class="pright mr-5 color-blue">
                                    ₦10,000,000
                                </span>
                            </div>
                        </div>
                        <div class="p-3">
                            <span class="color-blue font-weight-bold">For how long?</span>
                        </div>
                        <div class="f-border">
                            
                            <div class="range-slider">
                                <input class="range-slider__range" v-model="$store.state.loanDuration" type="range"
                                    value="1" min="1" max="6" @change="$store.commit('calculateLoan')">
                                <span class="range-slider__value">{{$store.state.loanDuration}} </span>
                                <br>
                                <span class="pull-left color-blue">
                                    1 Month
                                </span>
                                <span class="pright mr-5 color-blue">
                                    6 Month
                                </span>
                            </div>
                        </div>
                        <div class="form-group p-3">
                            <span class="color-blue font-weight-bold">6 Months Maximum loan Tenor</span>
                        </div>



                    </form>
                    </div>
                    <div class="row justify-content-lg-around">
                        <div id="mr1" class="col-lg color-blue font-weight-bold text-center">
                            {{$store.state.loanDuration}} Monthly
                            Repayment
                        </div>
                        <div class="col-lg color-blue font-weight-bold card bg-lightblue text-center">
                            ₦{{$store.state.monthlyRepayment | putComma}}
                        </div>
                        <div class="col-lg color-blue font-weight-bold text-center">
                            Total Interest
                        </div>
                        <div class="col-lg color-blue font-weight-bold card bg-lightblue text-center">
                            ₦{{$store.state.totalInterest | putComma}}
                        </div>
                        <div class="col-lg color-blue font-weight-bold ">
                            Total Amount
                            To Repay
                        </div>
                        <div id="mr2" class="col-lg color-blue font-weight-bold card bg-lightblue text-center">
                            ₦{{$store.state.totalRepayment | putComma}}
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-lg text-center">
                            <p class="font-weight-bold text-dark">
                                Costs are illustrative and based on a 30 day month
                            </p>
                            <p>
                                <button class="btn c-button btn-lg col-lg-5"
                                    @click="$store.commit('nextStep')" :disabled="$store.state.disableBtn">Continue</button>
                            </p>
                        </div>
                    </div>
                    <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img3">
                    <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img4">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    import commonMixin from '../mixins/common'
    export default {
        name: 'InitialSignupComponent',
        mixins: [commonMixin],
        beforeDestroy() {
            
            
            if (this.$store.state.loanAmount > 500 && this.$store.state.loanDuration > 1) {
                this.$store.commit('setButtonStatus', false)
                
            } else {
                this.$store.commit('setButtonStatus', true)
                
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
.BarForm{
    padding: 2% 10%;
}
.pright{
    position: absolute;
    right: 22%;
}
.p-3 {
    padding: 0.5rem 1.5rem 0.5rem!important;
}
.f-border {
    border: 2px solid gray;
    border-radius: 65px;
    padding: 30px 20px 20px 30px;
}
.range-slider {
    width: 93%;
    margin-top: 0;
}
.range-slider__value {
    display: inline-block;
    position: absolute;
    width: 95px;
    color: #fff;
    line-height: 20px;
    text-align: center;
    border-radius: 3px;
    background: #2c3e50;
    padding: 5px 10px 5px 10px;
    margin-left: 15px;
    margin-top: -5px;
}
#mr1 {
    margin-left: 3%;
}
#mr2 {
    margin-right: 3%;
}
#mr3 {
    margin-right: 3%;
}
.font-weight-bold {
    font-weight: 700 !important;
    font-size: 18px;
    font-family: "Raleway";
}
.text-center {
    text-align: center !important;
    justify-content: center;
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
    /* background-color: #fff; */
    background-clip: border-box;
    border: 1px solid rgba(0, 0, 0, 0);
    border-radius: 15px;
}
.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1.25rem 1.25rem 3.75rem 1.25rem;
}
.font-weight-bold1 {
    font-weight: 700 !important;
    font-size: 21px;
    font-family: "Raleway";
    float: right;
}
.lead {
    font-size: 0.75rem;
    font-weight: 300;
    float: right;
}
</style>
