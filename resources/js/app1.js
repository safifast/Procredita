/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');
import Vuex from 'vuex'

Vue.use(Vuex)
import storeData from './store/index'
const store = new Vuex.Store(storeData)

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

Vue.component('home-page', require('./components/HomePage.vue').default);
Vue.component('navbar-section', require('./components/Navbar.vue').default);
Vue.component('user-dashboard', require('./components/UserDashboard.vue').default);
Vue.component('sidebar-section', require('./components/Sidebar.vue').default);
Vue.component('right-sidebar', require('./components/RightSidebar.vue').default);
Vue.component('footer-section', require('./components/Footer.vue').default);
Vue.component('why-credit', require('./components/WhyCredit.vue').default);
Vue.component('loan-term', require('./components/LoanTerm.vue').default);
Vue.component('auth-page', require('./components/AuthPage.vue').default);
Vue.component('search-form', require('./components/SearchForm.vue').default);
Vue.component('faq-section', require('./components/Faq.vue').default);
Vue.component('chat-section', require('./components/ChatSection.vue').default);

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app',
    store
});
