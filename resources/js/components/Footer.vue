<template>
  <div class="bg-image3">
    <div class="container" style="padding:0% 5% 0% 5%;">
      <div name="#ContactUs" class="row">
        <div class="col-lg-3 footerSec">
          <img
            class="img-fluid"
            style="margin:4%;"
            onclick
            src="../assets/images/folder/Footer_Logo.svg"
            alt="Generic placeholder image"
          />
          <ul class="nav">
            <li class="nav-item mr-1 ml-3">
              <a href="# "> <img src="../assets/images/folder/Icons/instagram.svg"></a>
            </li>
            <li class="nav-item mr-1">
              <a href="# "> <img src="../assets/images/folder/Icons/Facebook.svg"></a>
            </li>
            <li class="nav-item mr-1">
              <a href="# "> <img src="../assets/images/folder/Icons/LinkedIn.svg"></a>
            </li>
            <li class="nav-item mr-1">
              <a href="# "> <img src="../assets/images/folder/Icons/Twitter.svg"></a>
            </li>
          </ul>
        </div>
        <div class="col-lg footerSec">
          <h4 class="display-5 color-blue">Company</h4>
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link1 active" href="#">Why procredita</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">FAQ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">Loan terms</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">Apply Now</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">Contact us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">Login</a>
            </li>
          </ul>
        </div>
        <div class="col-lg footerSec">
          <h4 class="display-5 color-blue">Legal</h4>
          <ul class="nav flex-column">
            <li class="nav-item">
              <a class="nav-link1 active" href="#">Cookies Policy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link1" href="#">Privacy Policy</a>
            </li>
          </ul>
        </div>
        <div class="col-lg">
          <div class="relative">
            <img id="map1" src="../assets/images/folder/Map/mapBackground.png" width="375px" height="200px">
            <img id="map2" src="../assets/images/folder/Map/map.svg">
            
            <!-- <img src="../assets/images/desktop-hd-copy-3-oval-16-copy@2x.png" class="img-fluid circle-1" alt="">
                    <img src="../assets/images/desktop-hd-copy-3-oval-16-copy@2x.png" class="img-fluid circle-2" alt="">
                    <img src="../assets/images/desktop-hd-copy-3-oval-16-copy@2x.png" class="img-fluid circle-3" alt="">

                    <div class="card map-info">
                        <div class="arrow-up"></div>
                        <div class="card-body">
                            <div class="media">
                                <i class="fa fa-map-marker p-3 fa-lg" aria-hidden="true"></i>
                                <div class="media-body">
                                    <p>
                                        1686 Oladele Olashore Street, Off Sanusi Fafunwa Street, Victoria Island,
                                        Lagos.
                                    </p>
                                </div>
                            </div>
                            <div class="media">
                                <i class="fa fa-phone p-3 fa-lg" aria-hidden="true"></i>
                                <div class="media-body color-blue">
                                    + (234) 814 7630 499
                                </div>
                            </div>
                            <div class="media">
                                <i class="fa fa-envelope-o p-3 fa-lg" aria-hidden="true"></i>
                                <div class="media-body">
                                    <p class="nav-link">
                                        info@procredita.com
                                    </p>
                                </div>
                            </div>
                        </div>
            </div>-->
          </div>
        </div>
      </div>
      <div id="ff" class="card bg-transparent border-0">
        <div class="card-text">
          <hr class="bg-blue" />
          <h4 class="display-5 color-blue last2">This website uses cookies</h4>
          <p>
            We use cookies to personalise content and ads, to provide social media features and to analyse our
            traffic. We also share information about your use of our site with our social media, advertising and
            analytics partners who may combine it with other information that you’ve provided to them or that
            they’ve collected from your use of their services. Check <a class="color-blue" href="#"> Privacy Policy. </a>
          </p>
          <h4 class="color-blue display-5 last">© Procredita 2020, all rights reserved</h4>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Footer"
};
</script>

<style>
.bg-image3 {
  background-image: url("../assets/images/bg3.png") !important;
}

.circle-1,
.circle-2,
.circle-3 {
  position: absolute;
  left: 0;
}

.circle-1 {
  width: 50%;
  opacity: 0.2;
}

.circle-2 {
  width: 25%;
  left: 12%;
  margin-top: 11%;
  opacity: 0.6;
}

.circle-3 {
  width: 12%;
  left: 18%;
  margin-top: 16%;
}
.bg-image3 {
  background-image: url(/images/1.png);
}

.arrow-up {
  width: 0;
  height: 0;
  border-left: 11px solid transparent;
  border-right: 11px solid transparent;
  border-bottom: 11px solid white;
  position: absolute;
  left: 21%;
  top: -4%;
}

#map1{
  position: relative;
}
#map2{
      position: absolute;
    left: 7% !important;
    top: 61%;
}

.map-info {
  z-index: 1;
  position: absolute;
  margin-top: 34%;
  border-radius: 15px;
}
.footerSec {
  padding-top: 15%;
}
.btn-info {
  color: #fff;
  background-color: #0091ff;
  border-color: #0091ff;
  border-radius: 10px;
}
.footerSec a {
  color: #6d7278;
  text-decoration: none;
  background-color: transparent;
  font-weight: 500;
  line-height: 24px;
}
.nav-link1 {
  display: block;
}
.footerSec h4 {
  font-weight: 700;
  margin-bottom: 10%;
}
#ff hr {
  margin-top: 3rem;
}
#ff p {
  color: #6d7278;
  font-size: 13px;
    font-weight: 600;
    line-height: 20px;
    letter-spacing: 0.2500001px;
}
#ff a{
  font-weight: 700;
}
#ff .last2 {
  font-size: 14px;
    font-weight: 600;
    line-height: 20px;
    letter-spacing: 0.2500001px;
}
#ff .last {
  font-size: 14px;
    font-weight: 600;
    line-height: 20px;
    letter-spacing: 0.2500001px;
  margin-bottom: 5%;
}
</style>