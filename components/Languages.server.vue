<script lang="ts" setup>
import { sql } from '@vercel/postgres'

const { limit } = withDefaults(
  defineProps<{
    limit: number
  }>(),
  {
    limit: 10,
  },
)

const { rows: languages } =
  await sql`SELECT * FROM languages ORDER BY RANDOM() LIMIT ${limit}`
</script>

<template>
  <div class="flex justify-center items-center max-w-4xl pt-10">
    <ul>
      <li v-for="lang in languages" :key="lang.id" class="pb-10">
        <span>{{ lang.name }}</span>
        <img :src="lang.image" class="w-40" />
      </li>
    </ul>
  </div>
</template>
