<template>
    <!-- <div class="row">
        <nav class="navbar fixed-bottom navbar-light bg-transparent">
            <a class="navbar-brand ml-auto">
                <div class="row justify-content-between">
                    <div class="col-lg">

                        <div class="card c-border2 border-0">
                            <img class="card-img" src="../assets/images/exported/img19.png" alt="Card image">
                            <div class="card-img-overlay">
                                <h1 class="heading3 font-weight-bold text-white">Procredita</h1>
                                <p class="info-text text-white">We’ll be right here if you need any help with
                                    <br>
                                    your Procredita account; we’re just a chat
                                    <br>
                                    away 😊 </p>

                                <ul class="nav">
                                    <li class="nav-item">
                                        <img src="../assets/images/exported/img20.png" alt="">
                                        <br>
                                        <span class="text-small font-weight-light text-white">Femi</span>
                                    </li>
                                    <li class="nav-item ml-3">
                                        <img src="../assets/images/exported/img21.png" alt="">
                                        <br>
                                        <span class="text-small font-weight-light text-white">Banji</span>
                                    </li>
                                    <li class="nav-item ml-3">
                                        <img src="../assets/images/exported/img22.png" alt="">
                                        <br>
                                        <span class="text-small font-weight-light text-white">Kayode</span>
                                    </li>
                                </ul>
                                <p class="text-info text-white">
                                    Have a chat with us
                                </p>

                            </div>
                            <div class="form-group p-3">
                                <label class="c-lebel" for="">Leave your email…</label>
                                <hr>
                                <input type="text" class="form-control c-lebel border-0" name="" placeholder="write your message">
                            </div>

                        </div>
                    </div>
                </div>


                <img src="../assets/images/exported/img18.png" alt="">
            </a>
        </nav>
    </div> -->
    <ul class="nav chat-section">
        <transition name="fade">
            <li class="nav-item justify-content-end c-b-margin" v-if="$store.state.showChat">
                <div class="card c-border2 border-0">
                    <img class="card-img" src="../assets/images/exported/img19.png" alt="Card image">
                    <div class="card-img-overlay">
                        <button class="btn bg-blue text-white float-right" @click="$store.commit('toggleChat')">
                            <img src="../assets/images/exported/img23.png" alt="">
                        </button>
                        <button class="btn bg-blue text-white float-left bg-transparent">
                            <img src="../assets/images/exported/img24.png" alt="">
                        </button>
                        <h1 class="heading3 font-weight-bold text-white mt-3">Procredita</h1>
                        <p class="info-text text-white pl-3">We’ll be right here if you need any help with
                            <br>
                            your Procredita account; we’re just a chat
                            <br>
                            away 😊 </p>

                        <ul class="nav pl-3">
                            <li class="nav-item">
                                <img src="../assets/images/exported/img20.png" alt="">
                                <br>
                                <span class="text-small font-weight-light text-white">Femi</span>
                            </li>
                            <li class="nav-item ml-3">
                                <img src="../assets/images/exported/img21.png" alt="">
                                <br>
                                <span class="text-small font-weight-light text-white">Banji</span>
                            </li>
                            <li class="nav-item ml-3">
                                <img src="../assets/images/exported/img22.png" alt="">
                                <br>
                                <span class="text-small font-weight-light text-white">Kayode</span>
                            </li>
                        </ul>
                        <p class="text-white pl-3">
                            Have a chat with us
                        </p>

                    </div>

                </div>
                <div class="card">
                    <div class="card-body no-gutters p-0">
                        <form action="" class="form">
                            <div class="form-group p-3">
                                <input type="text" class="form-control c-lebel border-0" name=""
                                    placeholder="Leave your email…">
                            </div>
                            <hr>
                            <div class="form-group p-3">
                                <textarea name="" id="" class="form-control border-0" placeholder="write your message"></textarea>

                            </div>
                        </form>
                    </div>

                </div>
                

            </li>

        </transition>
        <li class="nav-item btn-section">
            <img src="../assets/images/exported/img25.png" class="float-right mr-3 pointer" alt="" @click="$store.commit('toggleChat')" v-if="$store.state.showChat">
            <img src="../assets/images/exported/img18.png" class="float-right mr-3 pointer" alt="" @click="$store.commit('toggleChat')" v-else>

        </li>
    </ul>
</template>

<script>
    export default {
        name: 'ChatSection'

    }

</script>

<style>
.chat-section{
        position: fixed;
        bottom: 0;
        right: 0;
        z-index: 10;
}

.btn-section{
    position: fixed;
    bottom: 0;
    right: 0;
    margin-right: 3%;
}
.c-b-margin{
    margin-bottom: 26%;
}
</style>
