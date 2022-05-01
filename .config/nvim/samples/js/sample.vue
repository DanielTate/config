<template>
    <div>
        <div v-for="(item, i) in items" :key="i">
            {{ item.name }}
        </div>
    </div>
</template>

<script>
module.exports = {
    data() {
        return {
            items: [
                {
                    name: 'test'
                }
            ]
        }
    }
}
</script>

<style>
p {
    font-size: 18px;
}
</style>
