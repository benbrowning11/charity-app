<template>
    <div 
      class="w-full bg-[#CFE9FF] border border-black rounded-[50px] p-6"
    >
      <!-- Title and Goal -->
      <div class="flex justify-between items-center mb-4">
        <h3 class="text-2xl font-gloria">{{ title }}</h3>
        <div class="rounded-full bg-white border border-black px-3 py-1">
          <span class="text-sm">Goal: ${{ goal.toLocaleString() }}</span>
        </div>
      </div>
  
      <!-- Image -->
      <div class="w-full mb-4">
        <img 
          :src="imageUrl" 
          :alt="title"
          class="w-full h-40 object-cover"
        />
      </div>
  
      <!-- Description Box -->
      <div>
        <h4 class="text-lg mb-2">Why We Need It:</h4>
        <p class="text-sm mb-6">
          {{ description }}
        </p>
      </div>
  
      <!-- Progress Section -->
      <div class="space-y-2">
        <div class="flex items-center gap-2">
          <span class="text-sm">Progress: {{ progress }}%</span>
          <div class="flex-1 h-2 bg-gray-200 rounded-full overflow-hidden">
            <div 
              class="h-full bg-green-600 rounded-full transition-all duration-300"
              :style="{ width: `${progress}%` }"
            />
          </div>
        </div>
        
        <div class="text-sm">
          <span>${{ raised.toLocaleString() }} raised out of ${{ goal.toLocaleString() }}</span>
        </div>
      </div>
  
      <!-- Donate Button -->
      <button class="w-full bg-[#B21414] text-white rounded-full py-3 mt-6 text-xl font-gloria">
        Donate Now
      </button>
    </div>
  </template>
  
  <script setup lang="ts">
  import { computed } from 'vue'
  
  interface Props {
    title: string
    goal: number
    raised: number
    imageUrl: string
    description: string
  }
  
  const props = defineProps<Props>()
  
  const progress = computed(() => 
    Math.round((props.raised / props.goal) * 100)
  )
  </script>