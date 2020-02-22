<template>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-lg text-center">
          <h4 id="quickloanC" class="display-4 font-weight-bold color-blue">Quick loan Calculator</h4>
          <p class="font-weight-bold">Have an idea of how procredita loan works</p>
        </div>
      </div>
      <div class="row justify-content-sm-center">
        <div class=" col-lg-7 card-deck bg-white p-4 c-border shadow overflow-hidden">
          <div class="card border-0 p-4">
            <div class="card-text">
              <h4 id="text1" class="display-5 color-blue font-weight-bold">
                Please use
                our loan calculator
              </h4>
              <p id="checkthein">check the interest rate<br> and monthly repayment.</p>
              <div class="row justify-content-end">
                <div class="col-lg-5 pr-0">
                  <span id="rate" class="color-blue font-weight-bold1">Interest Rate</span>
                  <br />
                  <span id="perMonth" class="lead">per month</span>
                </div>
                <div class="col-lg-4 ml-0 color-blue font-weight-bold card bg-lightblue text-center">
                  <span id="five" class="font-weight-bold color-blue">5%</span>
                </div>
                <div class="col-lg-3">
                  
                </div>
              </div>
            </div>
          </div>
          <div class="card border-0">
            <div class="card-body">
              <form>
                <!-- <div class="form-group">
                                    <input type="text" v-model="$store.state.loanAmount" class="form-control br-15 border-0 c-bg p-4" @keyup="$store.commit('calculateLoan')" placeholder="Enter loan amount">
                                    <i src="../assets/images/img1.png" aria-hidden="true" alt="" ></i>
                </div>-->
                <div class="form-group relative">
                  <input
                    v-model="$store.state.loanAmount"
                    type="text"
                    @keyup="$store.commit('calculateLoan')"
                    placeholder="Enter loan amount"
                    class="form-control border-0 br-15 c-bg p-4"
                  />
                  <img src="../assets/images/folder/Icons/Money.svg" alt class="icon" />
                </div>
                <div class="form-group relative">
                  <input
                    v-model="$store.state.loanDuration"
                    type="text"
                    placeholder="Enter loan duration"
                    @keyup="$store.commit('calculateLoan')"
                    class="form-control border-0 br-15 c-bg p-4"
                  />
                  <img src="../assets/images/folder/Icons/Calendar.svg" alt class="icon" />
                </div>
                <!-- <div class="form-group">
                                    <input type="text" disabled v-model="$store.state.monthlyRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Monthly repayment">
                                    <i class="fa fa-money fa-lg icon3" aria-hidden="true"></i>
                </div>-->
                <div class="form-group relative">
                  <input
                    type="text"
                    disabled
                    v-model="$store.state.monthlyRepayment"
                    class="form-control br-15 border-0 c-bg p-4"
                    placeholder="Monthly repayment"
                  />
                  <img src="../assets/images/folder/Icons/Money.svg" alt class="icon" />
                </div>
                <!-- <div class="form-group">
                                    <input type="text" disabled v-model="$store.state.totalRepayment" class="form-control br-15 border-0 c-bg p-4" placeholder="Total repayment">
                                    <i class="fa fa-money fa-lg icon4" aria-hidden="true"></i>
                </div>-->
                <div class="form-group relative">
                  <input
                    type="text"
                    disabled
                    v-model="$store.state.totalRepayment"
                    class="form-control br-15 border-0 c-bg p-4"
                    placeholder="Total repayment"
                  />
                  <img src="../assets/images/folder/Icons/Money.svg" alt class="icon" />
                </div>
                <div class="form-group"></div>
              </form>
            </div>
            <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt class="img1" />
            <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt class="img2" />
            <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt class="img3" />
            <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt class="img4" />
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import commonMixin from "../mixins/common";
export default {
  name: "LoanTerm",
  mixins: [commonMixin]
};
</script>

<style>
.br-15 {
  border-radius: 15px;
}
.icon1,
.icon2,
.icon3,
.icon4 {
  position: absolute;
  right: 10%;
}
.icon1 {
  top: 13%;
}
.icon2 {
  top: 33%;
}
.icon3 {
  top: 52%;
}
.icon4 {
  top: 72%;
}
.c-bg {
  background-color: rgba(245, 249, 255, 1);
}
.icon {
  position: absolute;
  right: 5%;
  top: 36%;
}
.font-weight-bold {
    font-weight: 700 !important;
    font-size: 18px;
    font-family: "Raleway";
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
#text1{
    z-index: 3;
  width: 187px;
  height: 123px;
  color: #041e8b;
  font-family: Raleway-bold;
  font-size: 35px;
  font-weight: 600;
  line-height: 41px;
  letter-spacing: -0.2476415px;
}
.img3 {
  position: absolute;
  left: -137%;
  top: 91%;
  opacity: 0.5;
  width: 30%;
  transform: rotate(35deg);
}
.img4 {
  position: absolute;
  left: -149%;
  top: 86%;
  opacity: 0.5;
  width: 30%;
  transform: rotate(35deg);
}
#checkthein {
  z-index: 3;
  height: 47px;
  color: #5c5c5c;
  font-family: Raleway;
  font-size: 16px;
  font-weight: 500;
  line-height: 19px;
  letter-spacing: -0.1132075px;
}
#rate{
    z-index: 4;
  width: 97.87px;
  height: 19px;
  color: #041e8b;
  font-family: Raleway-bold;
  font-size: 16px;
  font-weight: 700;
  line-height: 19px;
  letter-spacing: -0.1132075px;
}
#perMonth {
  z-index: 4;
  width: 56.27px;
  height: 14px;
  color: #041e8b;
  font-family: Raleway;
  font-size: 12px;
  font-weight: 300;
  line-height: 14px;
  letter-spacing: -0.08490566px;
}
#quickloanC {
  z-index: 3;
  height: 47px;
  color: #041e8b;
  font-family: Raleway-bold;
  font-size: 40px;
  font-weight: 700;
  line-height: 47px;
  text-align: center;
  letter-spacing: -0.2830189px;
}
#five{
    font-size: 33px;
    font-family:Raleway-bold;
}

</style>