<template>
    <div 
      class="rounded-[50px] overflow-hidden bg-white shadow-sm"
      :class="[
        variant === 'primary' && 'bg-white',
        variant === 'secondary' && 'bg-[rgba(221,239,255,0.4)] backdrop-blur-md border border-white/30',
        variant === 'blue' && 'bg-[#E7F8FF]'
      ]"
    >
      <div v-if="$slots.header" class="px-6 py-4 border-b border-gray-200">
        <slot name="header" />
      </div>
      
      <div class="p-6">
        <slot />
      </div>
      
      <div v-if="$slots.footer" class="px-6 py-4 border-t border-gray-200">
        <slot name="footer" />
      </div>
    </div>
  </template>
  
  <script setup lang="ts">
  withDefaults(defineProps<{
    variant?: 'primary' | 'secondary' | 'blue'
  }>(), {
    variant: 'primary'
  })
  </script>