<template>
    <div class="col-lg bg-white big-border mr1">

        <div class="row justify-content-between">
            <div class="col-lg">
                <div class="card c-border border-0">
                    <div class="row mt-3">
                        <div class="col-lg-6 ml-5">
                            <search-form></search-form>
                        </div>
                    </div>
                    <div class="card-header bg-transparent border-0 ">
                        <h3 class="heading1 display-5">Request a Loan</h3>
                    </div>

                </div>
                <div class="card c-border border-0">
                    <img class="card-img" src="../assets/images/exported/img3.png" alt="Card image">
                    <div class="card-img-overlay">
                        <h1 class="heading2 font-weight-bold">Few clicks away to get your loan</h1>
                        <br>
                        <br>
                        <h6 class="color-blue">Risk assessment and due diligence charges.</h6>
                        <p class="info-text">Please note that our due diligence checks are conducted by
                            <br> 
                            third-party
                            companies through Procredita. Always ensure that 
                            <br>
                            all the information provided are
                            accurate and up to date.</p>

                    </div>
                </div>
            </div>

        </div>
        
        <div class="row bg-white mt-3">
            <div class="col-lg">
                <div class="card c-border bg-blue text-white shadow">
                    <div class="card-header bg-transparent border-0">
                        <div class="row justify-content-between">
                            <div class="col-lg">
                                <img src="../assets/images/folder-icon.png" width="20%" alt=""
                                    class="c-icon3 shadow">
                            </div>
                            <div class="col-lg text-right">
                                <div class="row justify-content-center">
                                    <span class="mt-2">Interest Rate</span>
                                    <button class="btn btn-sm bg-white font-weight-bold ml-1 c-border1 ml-2">20%</button>
                                    <div class="dropdown mr2">
                                        <button class="btn c-dropdown dropdown-toggle" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <img src="../assets/images/exported/img4.png" alt="">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="card-body bg-transparent">
                        <div class="media">
                            <img src="../assets/images/folder.png" width="10%" alt=""
                                class="c-icon4 shadow">
                            <div class="media-body ml-3">
                                <div class="range-slider">
                                    <input class="range-slider__range" v-model="$store.state.loanAmount" type="range"
                                        value="100" min="500000" max="10000000"
                                        @change="$store.commit('calculateLoan')">

                                    <br>
                                    <span class="pull-left text-white">
                                        ₦500,000
                                    </span>
                                    <span class="pull-right mr3 text-white">
                                        ₦10,000,000
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="media">
                            <img src="../assets/images/folder.png" width="10%" alt=""
                                class="c-icon5 shadow">
                            <div class="media-body ml-3">
                                <div class="range-slider">
                                    <input class="range-slider__range" v-model="$store.state.loanDuration" type="range"
                                        value="1" min="1" max="6" @change="$store.commit('calculateLoan')">

                                    <br>
                                    <span class="pull-left text-white">
                                        1 Month
                                    </span>
                                    <span class="pull-right mr3 text-white">
                                        6 Month
                                    </span>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg">
                    <div class="card c-border bg-blue1 text-white shadow">
                        <div class="card-header bg-transparent border-0">
                            <div class="row justify-content-between">
                                <div class="col-lg">
                                    <img src="../assets/images/folder-icon2.png" width="20%" alt=""
                                        class="c-icon2 shadow">
                                </div>
                                <div class="col-lg text-right">

                                    <div class="dropdown">
                                        <button class="btn c-dropdown dropdown-toggle" type="button"
                                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                            aria-expanded="false">
                                            <img src="../assets/images/exported/img4.png" alt="">
                                        </button>
                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <a class="dropdown-item" href="#">Action</a>
                                            <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body bg-transparent">
                            <div class="row media">
                                <div class="col-lg font text-white text-small">
                                    {{$store.state.loanDuration}} Monthly
                                    Repayment
                                </div>
                                <div class="media-body">
                                    <h4 class="col-lg  text-white font-weight-bold">
                                        ₦{{$store.state.monthlyRepayment | putComma}}
                                    </h4>
                                </div>
                            </div>
                            <div class="row media">
                                <div class="col-lg font text-white text-small">
                                    Total Interest
                                </div>
                                <div class="media-body">
                                    <h4 class="col-lg  font-weight-bold text-white">
                                        ₦{{$store.state.totalInterest | putComma}}
                                    </h4>
                                </div>
                            </div>
                            <div class="row media">
                                <div class="col-lg  font-weight-bold text-white">
                                    Total Amount
                                    To Repay
                                </div>
                                <div class="media-body">
                                    <div
                                        class="col-lg card text-center c-border color-blue font-weight-bold c-font-size p-1">
                                        ₦{{$store.state.totalRepayment | putComma}}
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
        </div>
        <div class="row bg-white mt-3">
            <div class="col-lg">
                <h6 class="color-blue text-small">6 Months Maximum loan Tenor</h6>
                <h6>Costs are illustrative and based on a 30 day month</h6>
                <button class="text-white btn bt-blue btn-lg btn-block col-lg-6 mr4">Proceed to pay</button>
            </div>
        </div>

    </div>
</template>

<script>
    import commnMixin from '../mixins/common'
    export default {
        name: 'UDLoanRequest',
        mixins: [commnMixin]
    }

</script>

<style scoped>
.mr1 {
    padding: 0% 2% 0% 3%;
}
.mr2 {
    margin-right: 7%;
}
.mr3 {
    margin-right: 0.5rem;
}
.mr4 {
    margin-bottom: 15rem;
}
.card-header {
    padding: 0.75rem 0.1rem 0rem 0.1em;
    margin-bottom: 0;
    background-color: rgba(0, 0, 0, 0.03);
    border-bottom: 1px solid rgba(0, 0, 0, 0.125);
}
.card-img {
    flex-shrink: 0;
    width: 100%;
    height: 250px;
}
.c-icon2 {
    position: absolute;
    left: 27px;
    background-color: #030f41;
    border-radius: 10px;
    padding: 5px;
    width: 25%;
}
.c-icon3 {
    position: absolute;
    left: 27px;
    background-color: #102073;
    border-radius: 10px;
    padding: 5px;
    width: 25%;
}
.range-slider__range {
    -webkit-appearance: none;
    width: calc(100% - (10px));
    height: 10px;
    border-radius: 5px;
    background: #d7dcdf;
    outline: none;
    padding: 0;
    margin: 0;
}
.media-body {
    flex: 1;
    font-size: 14px;
    line-height: 2;
    font-weight: 500;
}
.font {
    font-size: 10px;
    font-weight: 300;
}
.c-font-size {
    font-size: 18px;
}
.bg-blue1 {
    background-color: #030f41;
}
</style>
