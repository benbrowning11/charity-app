<template>
    <button
      class="relative w-[88px] h-[101px] focus:outline-none"
      @click="$emit('toggle')"
      :aria-expanded="isOpen"
      aria-controls="mobile-menu"
      aria-label="Toggle menu"
    >
      <div class="text-3xl font-gloria absolute top-0 left-1">Menu</div>
      
      <!-- Menu Lines -->
      <div class="absolute left-0 space-y-1">
        <img 
          v-for="(line, index) in 3" 
          :key="index"
          src="/storage/menu-line.png"
          :style="{
            top: `${45 + (index * 14)}px`
          }"
          class="absolute w-[88px] h-7 object-cover transition-transform duration-200"
          :class="[
            isOpen && index === 0 && 'rotate-45 translate-y-3',
            isOpen && index === 1 && 'opacity-0',
            isOpen && index === 2 && '-rotate-45 -translate-y-3'
          ]"
          alt=""
        />
      </div>
    </button>
  </template>
  
  <script setup lang="ts">
  defineProps<{
    isOpen: boolean
  }>()
  
  defineEmits<{
    (e: 'toggle'): void
  }>()
  </script>