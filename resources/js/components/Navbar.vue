<template>
  <div id="nav" class="media col-10 offset-1 c-m  nav-section">
            <img class="align-self-start mr-3 img-fluid brand-image pointer" onclick="location.assign('./')" src="../assets/images/folder/Header_logo.svg"
                alt="Generic placeholder image">
            <div class="media-body bg-blue c-style">
                <ul class="nav justify-content-end">
                    <li class="nav-item">
                        <a class="nav-link" :href="$store.state.base_url + '/why-credita'">Why procredita</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/faq">FAQ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" :href="$store.state.base_url +'/loan-term'">Loan terms</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#ContactUs">Contact us</a>
                    </li>
                    <template v-if="!$store.state.authUser">
                        <li class="nav-item">
                            <a class="nav-link" :href="$store.state.base_url +'/login'">
                                <img src="../assets/images/user.png" alt="" width="15%" class="img-fluid">
                                Signin
                            </a>
                        </li>
                        
                        <li class="nav-item">
                            <a class="nav-link" :href="$store.state.base_url +'/register'">
                                <button class="btn btn-primary btn-sm c-radius">Apply Now</button>
                            </a>
                        </li>

                    </template>
                    <template v-else>
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{ $store.state.authUser.name }}
                                  <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="" @click.prevent="$store.dispatch('logout')">
                                    Logout
                                </a>

                                
                            </div>
                        </li>

                    </template>

                </ul>
            </div>
        </div>
</template>

<script>
export default {
    name: 'Navbar'

}
</script>

<style scoped>
a.dropdown-item{
    color: black;
}

#nav {
  margin-top: 4%;
  border-radius: 10px;
  padding: 1.3%;
}

#nav .c-style {
  border-radius: 10px;
  padding: 11px;
}

#nav .brand-image {
    background-color: #102073;
    width: 6.7%;
    border-radius: 10px;
}
</style>