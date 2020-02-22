<template>
    <form class="form">
        <div class="form-group">
            <input type="text" v-model="$store.state.searchText" class="form-control br-15 c-bg p-4"
                placeholder="Search">
            <img src="../assets/images/icons/icons8-search-50.png" width="20%" class="search-icon" alt="">
        </div>
    </form>
</template>

<script>
    export default {
        name: 'SearchForm'
    }

</script>

<style>

</style>
