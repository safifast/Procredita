<template>
  <div>
    <div class="row">
      <div id="sec1" class="col-lg text-center">
        <h4 class="display-4 font-weight-bold color-blue">Few clicks away to get your loan</h4>
      </div>
    </div>
    <div id="mr1" class="row">
      <div class="col-lg">
        <ul class="nav justify-content-lg-around">
          <li class="nav-item" v-for="(item, ind) in $store.getters.navItems" :key="ind">
            <div v-if="item.name != 'initial'" class="d-flex align-items-baseline">
              <div class="circle text-left" :class="{'circle-active': item.isActive}"></div>
              <a
                class="nav-link font-weight-bold text-dark active"
                href="#"
                @click.prevent="goToComponent(item, ind)"
              >{{item.name}}</a>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <!-- sign up page form dynamic component will change here -->
    <component :is="$store.getters.activeComponent"></component>
  </div>
</template>

<script>
import InitialSignupComponent from "./InitialSignupComponent";
import PersonalDetailComponent from "./PersonalDetailComponent";
import ContactDetailComponent from "./ContactDetailComponent";
import YourIncomeComponent from "./YourIncomeComponent";
import BankAccountDetailComponent from "./BankAccountDetailComponent";
import DocumentUploads from "./DocumentUploads";
import RiskAssesment from "./RiskAssesment";
export default {
  name: "SignUpComponent",
  components: {
    InitialSignupComponent,
    PersonalDetailComponent,
    ContactDetailComponent,
    YourIncomeComponent,
    BankAccountDetailComponent,
    DocumentUploads,
    RiskAssesment
  },
  data() {
    return {};
  },
  methods: {
    goToComponent(item, ind) {
      this.$store.commit("goBackToComponent", { item, ind });
    }
  },
  mounted() {
    // console.log(location.pathname);
    this.$store.commit("resetComponents");
  }
};
</script>

<style scoped>
.circle {
  width: 15px;
  height: 15px;
  border-radius: 50%;
  background-color: #03a2e2;
}
.circle-active {
  border: 4px solid #102073;
}
#sec1 {
  padding: 0% 13% 0% 13%;
}
.display-4 {
  font-size: 2.5rem;
  font-weight: 300;
  line-height: 1.2;
  font-family: "Raleway";
}
#mr1 {
  margin-bottom: 5%;
}
</style>
