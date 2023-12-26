<script setup lang="ts">
const limit = ref(5)
</script>

<template>
  <div class="flex flex-col max-w-4xl p-10">
    <div class="pb-10 font-semibold">
      <label
        >Limit: <input v-model="limit" type="number" class="w-10" min="0"
      /></label>
    </div>
    <hr class="pb-10" />
    <Languages :limit="limit" />
  </div>
</template>
