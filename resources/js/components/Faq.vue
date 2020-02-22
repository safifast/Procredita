<template>
  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div id="sec1" class="col-lg text-center">
          <h1 id="heading" class="display-4 font-weight-bold color-blue">Frequently Asked Questions</h1>
          <div class="form-group col-lg-6 offset-lg-3">
            <input type="text" class="form-control1 p-4" placeholder="Serach for a question…" name />
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid bg-white">
      <div class="row">
        <div class="col-lg-8 offset-lg-2">
          <div class="card border-0 bg-transparent">
            <div class="card-body1 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">Am I eligible for a procredita loan?</h2>
                <i id="q1" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a1">To be eligible to apply for a procredita loan, you must be at least 21 years old, have a government issue ID, a Nigerian resident and have a Nigerian bank account and debit card. You must also have a verifiable source of income, and have a mobile phone.</p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">Can you tell me if I will be accepted for a procredita loan before I apply?</h2>
                <i id="q2" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a2">Unfortunately not. Each application we receive is assessed on an individual basis taking a number of factors into account. We are therefore unable to offer an indication of whether or not your application would be accepted before you submit it. </p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">How do you verify my information when I apply?</h2>
                <i id="q3" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a3">As part of our commitment to responsible lending, our partner third party companies carry out risk assessment and due diligence checks on all applications submitted to us. This assists with fraud prevention and also ensures we only approve applications from people who we believe will be able to repay what they borrow. </p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">How do I apply?</h2>
                <i id="q4" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a4">All applications for a loan with procredita have to be received through our website, where we have made the application process quick and easy to follow. </p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">What information do you need?</h2>
                <i id="q5" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a5">We’ll need a verifiable source of income, bank and debit card details (including account number), as well as a verifiable address. We also need details of your income and expenditure, including any current financial obligations, to ensure our loans are affordable for you. You might be required to submit extra documentation. We will contact you by email if this happens to let you know what we need, and provide you instructions on how to upload the documents we require through your My Account area. </p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">Am I eligible for a procredita loan?</h2>
                <i id="q6" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a6">We can transfer funds for successful applicants to any valid Nigerian bank account bearing your name. </p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">When will the money be in my account? </h2>
                <i id="q7" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a7">Once your application has been approved, we will normally send the money to you within 15 minutes. Most banks will credit your account within an hour, but your bank should be able to advise you more precisely as to when it will credit your account.</p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">I am having trouble completing my application, what should I do?</h2>
                <i id="q8" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a8">If you have any problems or experience difficulty with completing your online application, please contact our Customer Support team on + (234) 814 7630 499 or support@procredita.com for assistance.</p>
            </div>
          </div>
          <div class="card border-0 bg-transparent">
            <div id="pd" class="card-body2 cb">
              <div class="row justify-content-lg-between q">
                <h2 class="display-5 color-blue">Am I eligible for a procredita loan?</h2>
                <i id="q9" class="fa fa-2x fa-minus text-right color-blue" aria-hidden="true"></i>
              </div>
              <hr />
              <p id="a9">To be eligible to apply for a procredita loan, you must be at least 21 years old, have a government issue ID, a Nigerian resident and have a Nigerian bank account and debit card. You must also have a verifiable source of income, and have a mobile phone. </p>
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Faq"
};
$(document).ready(function(){
  $("#q1").click(function(){
    $("#a1").toggle();
    $("#q1").toggleClass("fa-plus fa-minus");
    
  });
});
$(document).ready(function(){
  $("#q2").click(function(){
    $("#a2").toggle();
    $("#q2").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q3").click(function(){
    $("#a3").toggle();
    $("#q3").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q4").click(function(){
    $("#a4").toggle();
    $("#q4").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q5").click(function(){
    $("#a5").toggle();
    $("#q5").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q6").click(function(){
    $("#a6").toggle();
    $("#q6").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q7").click(function(){
    $("#a7").toggle();
    $("#q7").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q8").click(function(){
    $("#a8").toggle();
    $("#q8").toggleClass("fa-minus fa-plus");
  });
});
$(document).ready(function(){
  $("#q9").click(function(){
    $("#a9").toggle();
    $("#q9").toggleClass("fa-minus fa-plus");
  });
});
</script>

<style>
#sec1 {
  padding: 6% 0%;
}

.form-control1 {
  display: block;
  width: 100%;
  height: calc(1.6em + 0.75rem + 2px);
  padding: 0.375rem 0.75rem;
  color: #495057;
  font-family: Raleway;
  font-size: 18px;
  font-weight: 300;
  line-height: 21px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ced4da;
  border-radius: 0.5rem;
  box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
  transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.card-body1 {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 5rem 0rem 0rem 0rem;
}
.card-body2 {
  flex: 1 1 auto;
  min-height: 1px;
  padding: 1.25rem 0 0;
}
.q {
  margin-left: 0;
  margin-right: 0;
}
.cb p {
  color: #030f41;
  font-family: Raleway;
  font-size: 18px;
  font-weight: 500;
  line-height: 21px;
  margin-top: 0;
  margin-bottom: 1rem;
}
.cb h2 {
  color: #041e8b;
  font-family: Raleway;
  font-size: 25px;
  font-weight: 700;
  line-height: 29px;
  letter-spacing: -0.1768868px;
}
#pd p {
    padding-bottom: 5%;
}
#heading{
    z-index: 3;
    height: 62px;
    color: #041e8b;
    font-family: Raleway-bold;
    font-size: 50px;
    font-weight: 700;
    line-height: 62px;
    letter-spacing: -2.093467px;
}
</style>