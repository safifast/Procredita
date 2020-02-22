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
                        <h3 class="heading1 display-5">Transaction Histroy</h3>
                    </div>

                </div>
                <div class="card c-border border-0">
                    <img class="card-img" src="../assets/images/exported/img16.png" alt="Card image">
                    <div class="card-img-overlay">
                        <h1 class="heading1 font-weight-bold">Check your transaction records</h1>
                        <p class="info-text">If you have any issue with your procredita account you can always contact <br> 
                        our an account officers by clicking on the support button😉.</p>

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
            <div class="col-lg bg-white">
                <ul class="nav justify-content-around p-3 mb-3 bg-lightblue c-border shadow" v-for="(item, ind) in $store.state.userHistoryData" :key="ind">
                    <li class="nav-item">
                        <button class="btn c-border1 bg-green">
                            <i class="fa fa-arrow-up" aria-hidden="true"></i>
                        </button>
                    </li>
                    <li class="nav-item">
                        {{item.loan_amount}}
                    </li>
                    <li class="nav-item">
                        From Procredita to {{$store.state.authUser.name}}
                    </li>
                    <li class="nav-item">
                        {{item.created_at}}
                    </li>
                    <li class="nav-item">
                        {{item.file_size}}
                    </li>
                    <li class="nav-item">
                        <img src="../assets/images/exported/img9.png" alt="">
                    </li>
                    <li class="nav-item">
                        <img src="../assets/images/exported/img10.png" alt="">
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
        name: 'UDHistory',
        mounted() {
            this.$store.dispatch('getHistoryForUser')
        }
    }

</script>

<style>

</style>
