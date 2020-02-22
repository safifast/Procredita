<template>
    <div>
        <div class="">
            <div class="row">
                <component :is="$store.getters.activeDashboardComponent"></component>
                <!-- right side -->
                
            </div>
            <chat-section></chat-section>
        </div>
    </div>
</template>

<script>
    import UDHome from './UDHome'
    import UDLoanRequest from './UDLoanRequest'
    import UDHistory from './UDHistory'
    import UDReferral from './UDReferral'
    import ChatSection from './ChatSection'
    export default {
        name: 'UserDashboard',
        components: {
            UDHome,
            UDLoanRequest,
            UDHistory,
            UDReferral,
            ChatSection
        }

    }

</script>

<style>


</style>
