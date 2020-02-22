<template>
    <form class="form">
        <div class="form-group">
            <input type="text" v-model="$store.state.searchText" class="form-control br-15 c-bg p-4"
                placeholder="Search">
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
