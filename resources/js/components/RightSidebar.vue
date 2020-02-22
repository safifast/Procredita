<template>
    <div class="col-lg-4 border-0">
        <div class="card bg-lightblue c-border mt-3 border-0 bg-color1">
            <div class="card-body">
                <div class="row justify-content-between">
                    <div class="col-lg p-0">
                        <div class="dropdown">
                            <button class="btn btn-light dropdown-toggle btn-block bg-transparent mt-5 border-0"
                                type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <span class="font-weight-bold text-dark">Jannie</span>
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </div>


                    </div>
                    <div class="col-lg p-0">
                        <img src="../assets/images/icons/profile-image.png" class="img-fluid" alt="">
                        <ul class="nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle pl-0 pr-0" data-toggle="dropdown" href="#"
                                    role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="../assets/images/icons/icons8-help-24.png" class="img-fluid" width="50%"
                                        alt="">
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle pl-0 pr-0" data-toggle="dropdown" href="#"
                                    role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="../assets/images/icons/icons8-settings-32.png" class="img-fluid"
                                        width="50%" alt="">
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle pl-0 pr-0" data-toggle="dropdown" href="#"
                                    role="button" aria-haspopup="true" aria-expanded="false">
                                    <img src="../assets/images/icons/icons8-bell-50.png" class="img-fluid" width="30%"
                                        alt="">
                                </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">Separated link</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <div class="card border-0 c-border mt-3">
            <vue-cal xsmall hide-view-selector click-to-navigate :time="false" default-view="month" />

        </div>
        <div class="card border-0 bg-transparent mt-3">
            <div class="card-header bg-transparent border-0">
                <div class="row justify-content-between bg-transparent mt-3">
                    <div class="col-lg">
                        <h5 class="display-6">Next Debit Date</h5>
                    </div>
                    <div class="col-lg text-right">
                        <button class="btn btn-light btn-sm">view all ></button>
                        <button class="btn text-right">
                            <i class="fa fa-ellipsis-v " aria-hidden="true"></i>
                        </button>
                    </div>
                </div>
            </div>
            <div class="card-body c-brl bg-white c-border">
                <div class="row">

                    <h6>₦20,000.00 is to be debited today</h6>
                </div>
                <div class="media">
                    <img src="../assets/images/icons/icons8-clock-24.png" alt="">
                    <div class="media-body ml-2">
                        Jan 3 - Jan 31,
                        <br>
                        2020
                    </div>
                </div>
            </div>
        </div>

    </div>
</template>

<script>
    import VueCal from 'vue-cal'
    import 'vue-cal/dist/vuecal.css'
    export default {
        name: 'RightSidebar',
        components: {
            VueCal
        },
        data() {
            return {

            }
        },
        methods: {

        },
        mounted() {


        }
    }

</script>

<style>

.vuecal__cell.disabled {text-decoration: line-through;}
.vuecal__cell.disabled.before-min {color: #b6d6c7;}
.vuecal__cell.disabled.after-max {color: #008b8b;}

</style>