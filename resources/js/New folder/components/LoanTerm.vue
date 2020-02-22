<template>
    <div>
        <div class="container ">
            <div class="row">
                <div class="col-lg text-center">
                    <h4 class="display-4 font-weight-bold color-blue">Quick loan Calculator</h4>
                    <p class="font-weight-bold">
                        Have an idea of how procredita loan works
                    </p>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="card-deck bg-white p-4 c-border shadow">
                    <div class="card border-0 p-4">
                        <div class="card-text">
                            <h4 class="display-5 color-blue font-weight-bold">Please use
                                our loan calculator</h4>
                            <p>check the interest rate and monthly repayment.</p>
                            <div class="row">
                                <div class="col-lg">
                                    <h4 class="display-5 color-blue">Interest Rate</h4>
                                    <p class="lead color-blue">Per Month</p>
                                </div>
                                <div class="col-lg">
                                    <h4 class="display-4 color-blue">5%</h4>
                                </div>
                            </div>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                        <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    </div>
                    <div class="card border-0">
                        <div class="card-body">
                            <form>
                                <!-- <div class="form-group">
                                    <input type="text" v-model="$store.state.loanAmount" class="form-control br-15 border-0 c-bg p-4" @keyup="$store.commit('calculateLoan')" placeholder="Enter loan amount">
                                    <i src="../assets/images/img1.png" aria-hidden="true" alt="" ></i>
                                </div> -->
                                <div  class="form-group relative">
                                    <input v-model="$store.state.loanAmount" type="text"  @keyup="$store.commit('calculateLoan')" placeholder="Enter loan amount" class="form-control border-0 br-15 c-bg p-4"> 
                                <img  src="/images/img1.png" alt="" class="icon"> 
                                </div>
                                <div  class="form-group relative">
                                    <input v-model="$store.state.loanDuration" type="text"  placeholder="Enter loan duration" @keyup="$store.commit('calculateLoan')" class="form-control border-0 br-15 c-bg p-4"> 
                                <img  src="/images/img2.png" alt="" class="icon"> 
                                </div>
                                <!-- <div class="form-group">
                                    <input type="text" disabled v-model="$store.state.monthlyRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Monthly repayment">
                                    <i class="fa fa-money fa-lg icon3" aria-hidden="true"></i>
                                </div> -->
                                <div  class="form-group relative">
                                    <input type="text" disabled v-model="$store.state.monthlyRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Monthly repayment"> 
                                <img  src="/images/img3.png" alt="" class="icon"> 
                                </div>
                                <!-- <div class="form-group">
                                    <input type="text" disabled v-model="$store.state.totalRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Total repayment">
                                    <i class="fa fa-money fa-lg icon4" aria-hidden="true"></i>
                                </div> -->
                                <div  class="form-group relative">
                                    <input type="text" disabled v-model="$store.state.totalRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Total repayment">
                                    <img  src="/images/img4.png" alt="" class="icon"> 
                                </div>
                                <div class="form-group">
                                </div>

                            </form>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                        <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import commonMixin from '../mixins/common'
    export default {
        name: 'LoanTerm',
        mixins: [commonMixin],
        
    }

</script>

<style>
.br-15{
    border-radius: 15px;
}
.icon1,.icon2,.icon3,.icon4{
    position: absolute;
    right: 10%;
}
.icon1{
    top: 13%;
}
.icon2{
    top: 33%;
}
.icon3{
    top: 52%;
}
.icon4{
    top: 72%;
}
.c-bg{
    background-color: rgba(245,249,255,1.0);
}
.icon {
    position: absolute;
    right: 5%;
    top: 36%;
}
</style>