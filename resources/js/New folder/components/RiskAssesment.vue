<template>
    <div class="row">
        <div class="col-lg-8 offset-lg-2 p-4">
            <div class="card border-0 shadow overflow-hidden">
                <div class="card-body text-center">
                    <div class="col-lg text-center color-blue">
                        Risk assessment and due diligence charges.
                    </div>
                    <p class="info-text">
                        Please note that our due diligence checks are conducted by third party companies through
                        Procredita.
                        Ensure that all the information provided are accurate.
                    </p>
                    <button
                        class="btn btn button-blue btn-block col-lg-4 offset-lg-4 bg-blue text-white mb-4 c-border p-4 heading1">₦13,500</button>
                    <br>
                    <button
                        class="btn button-blue btn-block col-lg-4 offset-lg-4 bg-blue text-white mb-4 c-border heading1" @click="$store.dispatch('finalStep')">
                        Proceed to pay
                        <img src="../assets/images/exported/img27.png" alt="">
                    </button>
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
    export default {
        name: 'RiskAssesment'
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
</style>
