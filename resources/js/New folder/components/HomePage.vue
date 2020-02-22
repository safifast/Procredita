<template>
    <div>

        <div class="container-fluid ">
            <div class="row">
                <div class="col-lg">
                    <div class="jumbotron bg-transparent">
                        <hr class="rectanglecopy">
                        <p class="lead display-5 color-blue font-weight-bold letter-spacing">
                            Fast, flexible loan with
                            <br>
                            no collateral from
                        </p>
                        <h4 class="display-3 color-blue font-weight-bold letter-spacing relative">
                            N500,000 -
                            N10,000,000
                        </h4>
                        <hr class="rectangle3">
                        <button class="btn  bg-blue text-white c-width btn-lg my-4 c-image">
                            Apply Now
                        </button>
                    </div>
                </div>
                <div class="col-lg">
                    <img src="../assets/images/img-2.png" class="img-fluid ref-image1" alt="">
                    <img src="../assets/images/home-group.png" class="img-fluid ref-image2" alt="">
                </div>
            </div>
        </div>
        <div class="container c-margin bg-light-blue">
            <div class="row text-center mb-3">
                <div class="col-lg">
                    <h4 class="display-4 font-weight-bold color-blue">Why choose procredita ?</h4>
                </div>
            </div>
            <div class="row">
                <div class="card-deck">
                    <div class="card">
                        <div class="card-body relative">
                            <h4>
                                <i class="fa fa-clock-o fa-lg link-color" aria-hidden="true"></i>
                            </h4>
                            <h5 class="card-title c-font-size color-blue p-3">Get the quick loan you need within 24
                                hours.</h5>
                            <p class="card-text display-5 p-3">Our easy process will give you a quick decision and if
                                approved you’ll
                                receive the cash loan within 15 minutes.</p>
                            <a href="#" class="btn nav-link link-color">Apply Now ></a>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                        <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                    </div>
                    <div class="card">
                        <div class="card-body relative">
                            <h4>
                                <i class="fa fa-commenting-o fa-lg link-color" aria-hidden="true"></i>
                            </h4>
                            <h5 class="card-title c-font-size color-blue p-3">Personal
                                Service</h5>
                            <p class="card-text display-5 p-3">We treat our customers like family. Become one of the
                                thousands of
                                customers that trust procredita for their funding needs.</p>
                            <a href="#" class="btn nav-link link-color">Apply Now ></a>
                        </div>
                        <img src="../assets/images/home-copy-2-bitmap-1@2x.png" alt="" class="img1">
                        <img src="../assets/images/home-copy-2-bitmap-1@2x.png" alt="" class="img2">
                    </div>
                    <div class="card">
                        <div class="card-body relative">
                            <h4>
                                <i class="fa fa-bar-chart fa-lg link-color" aria-hidden="true"></i>
                            </h4>
                            <h5 class="card-title c-font-size color-blue p-3">Low
                                interest rate.</h5>
                            <p class="card-text display-5 p-3">We offer the best interest rate in the market to make
                                sure our
                                customers are well taken care of.</p>
                            <a href="#" class="btn nav-link link-color">Apply Now ></a>
                        </div>
                        <img src="../assets/images/home-copy-bitmap-copy-2@2x.png" alt="" class="img2">
                        <img src="../assets/images/home-copy-2-bitmap-copy@2x.png" alt="" class="img1">
                    </div>

                </div>

            </div>
        </div>
        <div class="container-fluid c-margin bg-white">
            <div class="row">
                <div class="col-lg-6">
                    <div class="jumbotron bg-transparent">
                        <h1 class="display-5">At Procredita, we believe that everyone deserves a right to grow through
                            credit.</h1>
                        <hr class="my-3">
                        <p class="lead">Our Loans are created to help solve that financial headache without creating a
                            new one. A right to credit is a right to humanity.</p>

                        <p class="lead">
                            <button class="btn  bg-blue text-white c-width btn-lg my-4 c-image">
                                Apply Now
                            </button>
                        </p>
                    </div>
                </div>
                <div class="col-lg-6 relative animation-section relative">
                    <img src="../assets/images/home-path-3-1.png" alt="" class="sec3-img1" width="90%" height="90%">
                    <img src="../assets/images/home-copy-shutterstock1314920081.png" alt="" class="sec3-img2">
                    <img src="../assets/images/home-shutterstock617165606.png" alt="" class="sec3-img3">
                    <img src="../assets/images/home-copy-shutterstock1261453465.png" alt="" class="sec3-img4">
                    <div class="media c-media p-2 color-blue">
                        <button class="btn btn-info btn-lg mr-3">
                            <i class="fa fa-users fa-lg" aria-hidden="true"></i>
                        </button>
                        <div class="media-body">
                            <h5 class="mt-0">
                                <strong>3000</strong> <sup>+</sup>
                                satisfied
                                <br>
                                customers Over N2Billion in loans
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid c-margin bg-info relative">
            <div class="row">
                <div class="col-lg text-center mt-3">
                    <p class="display-5 font-weight-bold">
                        What our customers are saying

                    </p>
                    <h4 class="display-5 text-white">Loved by 3000 <sup>+</sup> customers;enterpreneur and startups</h4>


                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 ">
                    <vueper-slides :visible-slides="3" :gap="3" :slide-ratio="1 / 4" :dragging-distance="200"
                        :breakpoints="{ 800: { visibleSlides: 2, slideMultiple: 2 } }" :bullets="false" :autoplay="true"
                        :alwaysRefreshClones="true" :arrows="false">
                        <vueper-slide v-for="(slide, i) in slides" :key="i">
                            <template v-slot:content>
                                <div class="card">
                                    <div class="media">
                                        <img class="mr-3 img-fluid" width="20%" :src="slide.imageLink"
                                            alt="Generic placeholder image">
                                        <div class="media-body">
                                            <h5 class="mt-0">Media heading</h5>
                                            <p>
                                                {{slide.text}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </template>
                        </vueper-slide>
                    </vueper-slides>
                    <vueper-slides :visible-slides="3" :gap="3" :slide-ratio="1 / 4" :dragging-distance="200"
                        :breakpoints="{ 800: { visibleSlides: 2, slideMultiple: 2 } }" :bullets="false" :autoplay="true"
                        :alwaysRefreshClones="true" :arrows="false">
                        <vueper-slide v-for="(slide, i) in slides" :key="i">
                            <template v-slot:content>
                                <div class="card">
                                    <div class="media">
                                        <img class="mr-3 img-fluid" width="20%" :src="slide.imageLink"
                                            alt="Generic placeholder image">
                                        <div class="media-body">
                                            <h5 class="mt-0">Media heading</h5>
                                            <p>
                                                {{slide.text}}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </template>
                        </vueper-slide>
                    </vueper-slides>
                </div>
            </div>
            <img src="../assets/images/desktop-hd-copy-10-rectangle-1@2x.png" class="img-fluid c-image2" alt="">
        </div>
        
    </div>

</template>

<script>
    import {
        VueperSlides,
        VueperSlide
    } from 'vueperslides'
    import 'vueperslides/dist/vueperslides.css'
    export default {
        name: 'HomePage',
        components: {
            VueperSlides,
            VueperSlide
        },
        data() {
            return {
                startAnimation: false,
                slides: [{
                        imageLink: require('../assets/images/home-group-2-11@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                    {
                        imageLink: require('../assets/images/home-group-2-7@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                    {
                        imageLink: require('../assets/images/home-copy-group-2-9@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                    {
                        imageLink: require('../assets/images/home-copy-2-group-2@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                    {
                        imageLink: require('../assets/images/home-copy-group-2-2@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                    {
                        imageLink: require('../assets/images/home-copy-2-group-2@4x.png'),
                        name: 'user 1',
                        startNo: 5,
                        date: new Date().toDateString(),
                        text: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt libero facere, debitis temporibus labore eveniet. Qui distinctio, molestiae quas inventore consequuntur voluptatum quisquam veniam ab facilis placeat delectus recusandae commodi!'
                    },
                ]
            }
        }

    }

</script>

<style scoped>
    

    .ref-image1 {
        position: relative;
    }

    .ref-image2 {
        position: absolute;
        left: 16%;
        top: 17%;
        animation-name: changePosition;
        animation-duration: 2s;
        animation-direction: alternate;
        animation-timing-function: ease-in-out;
        animation-iteration-count: infinite;
    }

    @keyframes changePosition {
        from {
            top: 18%;
        }

        to {
            top: 23%;
        }
    }

    .rectanglecopy {
        background-color: rgba(3, 25, 114, 1.0);
        height: 6px;
        width: 54px;
        margin: 0;
        border-radius: 2px;
    }

    .rectangle3 {
        background-color: rgba(50, 197, 255, 1.0);
        height: 44px;
        width: 57%;
        position: absolute;
        margin: 0;
        left: 6%;
        z-index: -1;
        top: 52%;
    }

    .c-image {
        background-image: url('../assets/images/home-copy-oval-1@2x.png');
        background-position: unset;
        background-repeat: no-repeat;
    }

    .c-image:hover {
        background-position-x: center;
        transition: background-position-x 2s ease-in-out;
    }

    .c-width {
        width: 50%;
    }

    .for-aniimation {
        left: 10%;
        animation-name: customAnimation;
        animation-direction: alternate;
        animation-duration: 3s;
        animation-timing-function: ease-in-out;
    }

    @keyframes customAnimation {
        from {
            left: 10%;
        }

        to {
            left: -10%;
        }
    }

    

    .bg-light-blue {
        background-color: rgba(245, 249, 255, 1.0);
    }

    .c-font-size {
        font-size: 29px;
    }

    

    .sec3-img2,
    .sec3-img3,
    .sec3-img4 {
        position: absolute;
        border-radius: 15px;
        width: 40%;
        height: 45%;
    }

    .sec3-img2 {

        left: 0;

        top: 67%;

        z-index: -1;
        transition: all 2s ease-in-out;
    }

    .sec3-img3 {
        left: 0;
        top: 0%;
        transition: all 2s ease-in-out;
    }

    .sec3-img4 {
        left: 56%;
        transition: all 2s ease-in-out;
    }

    .animation-section:hover .sec3-img2 {
        left: 56%;
        top: 0;
    }

    .animation-section:hover .sec3-img3 {
        top: 67%;
    }

    .animation-section:hover .sec3-img4 {
        left: 0;
    }

    .c-media {
        position: absolute;
        right: 4%;
        bottom: 13%;
    }

    .c-image2 {
        position: absolute;
        left: 0;
        top: 19%;
        transform: scale(2.5);
    }

    

    

</style>
