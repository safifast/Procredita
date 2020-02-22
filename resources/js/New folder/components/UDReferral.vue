<template>
    <div class="col-lg bg-white big-border">

        <div class="row justify-content-between">
            <div class="col-lg">
                <div class="card c-border border-0">
                    <div class="row mt-3">
                        <div class="col-lg-6 ml-5">
                            <search-form></search-form>
                        </div>
                    </div>
                    <div class="card-header bg-transparent border-0 ">
                        <h3 class="heading1 display-5">Refer a friend</h3>
                    </div>

                </div>
                <div class="card c-border border-0">
                    <img class="card-img" src="../assets/images/exported/img2(copy).png" alt="Card image">
                    <div class="card-img-overlay">
                        <h1 class="heading1 font-weight-bold">Earn monies through referring a friend
                            Share referral link</h1>
                        <p class="info-text">Copy the custom generated code and share with your
                            <br> friends 👫 to earn
                            points and cash out as much as you can.</p>
                        <button class="btn bg-blue text-white c-border">
                            Share referral link
                            <i class="fa fa-clone" aria-hidden="true"></i>
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                        </button>

                    </div>
                </div>
            </div>

        </div>
        
        <div class="row justify-content-between mt-3">

            <div class="col-lg text-right">
                <button class="btn btn-light">view all ></button>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg">
                <div class="card c-border bg-blue text-white shadow">
                    <div class="card-header bg-transparent border-0">
                        <div class="row justify-content-between">
                            <div class="col-lg">
                                <img src="../assets/images/exported/img17.png" width="20%" alt=""
                                    class="c-icon2 shadow">
                            </div>
                            <div class="col-lg text-right">
                                <div class="dropdown">
                                    <button class="btn c-dropdown dropdown-toggle" type="button" id="dropdownMenuButton"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                        <h4 class="card-title">Current Rewards Earned</h4>
                        <h1><span class="Symbol">₦</span>0</h1>
                    </div>
                </div>
            </div>
            <div class="col-lg">
                    <div class="card c-border bg-skyblue text-white shadow">
                        <div class="card-header bg-transparent border-0">
                            <div class="row justify-content-between">
                                <div class="col-lg">
                                    <img src="../assets/images/exported/img17.png" width="20%" alt=""
                                        class="c-icon3 shadow">
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
                            <ul class="nav justify-content-lg-around">
                                <li class="nav-item text-center">
                                    Per Referral
                                    <br>
                                    <h4><span class="Symbol">₦</span>250</h4>
                                </li>
                                <li class="nav-item text-center">
                                    Referral Count
                                    <br>
                                    <h4 >0/500</h4>

                                </li>
                                <li class="nav-item text-center">
                                    Current Signups
                                    <br>
                                    <h4 class=" c-font-size">0</h4>
                                </li>
                            </ul>
                            <div class="media">
                                <i class="fa fa-clock-o" aria-hidden="true"></i>
                                <div class="media-body ml-2">
                                    Jan 3 - Jan 31, 2020
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <div class="row justify-content-between mt-3">
            <div class="col-lg">
                <h3>Payout</h3>
            </div>
            <div class="col-lg text-right">
                <button class="btn btn-light">view all ></button>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-lg">
                <ul class="nav justify-content-around p-3 mb-3 bg-lightblue c-border shadow">
                    <li class="nav-item">
                        <button class="btn c-border1 bg-green">
                            <i class="fa fa-arrow-up" aria-hidden="true"></i>
                        </button>
                    </li>
                    <li class="nav-item">
                        No Payout History

                    </li>

                    <li class="nav-item">
                        <img src="../assets/images/exported/img11.png" alt="">
                    </li>
                </ul>

            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: 'UDReferral'
    }

</script>

<style scoped>
.card-body{
    padding-top: 0%;
}
.Symbol {
    font-size: 55%;
    color: #ffffff;
    font-family: Raleway;
    /* font-size: 20px; */
    font-weight: 400;
    line-height: 23px;
    letter-spacing: 0.2857143px;
}
</style>
