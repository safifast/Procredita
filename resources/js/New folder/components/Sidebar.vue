<template>
  <ul class="nav flex-column">
  <li class="nav-item">
    <a class="nav-link active" href="#">
        <img class="align-self-start mr-3 img-fluid "  onclick="location.assign('./user/home')" src="../assets/images/exported/side-logo.png"
                alt="Generic placeholder image">
    </a>
  </li>
  <li class="nav-item p-2" v-for="(item, ind) in $store.state.sideNavbarItems" :key="ind">
    <a class="nav-link " :class="[item.isActive ? 'nav-active text-white' : 'text-muted']" href="#" @click.prevent="$store.commit('setActiveSidebarItem', item)">
    <!-- <i :class="[item.isActive ? item.icon + ' link-color' : item.icon]" aria-hidden="true"></i> -->
    <img :src="item.icon" class="img-fluid" alt="">
    {{item.name}}
    </a>
  </li>
  <li class="nav-item p-2">
      <a class="nav-link text-muted" href="#" @click.prevent="$store.dispatch('logout')">
          <img src="../assets/images/exported/sideicon6.png" class="img-fluid" alt="">
          Logout
      </a>
  </li>
  <li class="nav-item p-2">
      <a class="nav-link text-muted" href="../faq">
          <img src="../assets/images/exported/sideicon7.png" class="img-fluid" alt="">
          FAQ
      </a>
  </li>
  
</ul>
</template>

<script>
export default {
    name: 'Sidebar',
}
</script>

<style>

</style>