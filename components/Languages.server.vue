<script lang="ts" setup>
import { sql } from '@vercel/postgres'

const { limit } = defineProps<{
  limit: number
}>()

const { rows: languages } =
  await sql`SELECT * FROM languages ORDER BY RANDOM() LIMIT ${limit}`
</script>

<template>
  <ul>
    <li v-for="lang in languages" :key="lang.id" class="pb-10">
      <span>{{ lang.name }}</span>
      <img :src="lang.image" class="w-40" />
    </li>
  </ul>
</template>
