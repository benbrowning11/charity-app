<template>
    <h1 
      class="text-6xl font-gloria leading-tight"
      :class="[
        color === 'blue' && 'text-[#0E26A5]',
        color === 'orange' && 'text-[#DB6B24]',
        color === 'green' && 'text-[#3E6F1B]',
        color === 'default' && 'text-black'
      ]"
    >
      <slot />
    </h1>
  </template>
  
  <script setup lang="ts">
  withDefaults(defineProps<{
    color?: 'default' | 'blue' | 'orange' | 'green'
  }>(), {
    color: 'default'
  })
  </script>
  