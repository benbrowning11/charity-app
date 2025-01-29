<template>
  <div 
    class="w-full h-full bg-[#CFE9FF] border border-black rounded-[50px] p-6 flex flex-col"
  >
    <!-- Title and Goal -->
    <div class="flex justify-between items-center">
      <h3 class="text-2xl font-gloria">{{ title }}</h3>
      <div 
        class="rounded-full bg-white border border-black px-3 py-1"
        :class="progress >= 100 ? 'bg-green-600' : 'bg-gray-200'"
      >
        <span class="text-sm" >Goal: ${{ goal.toLocaleString() }}</span>
      </div>
    </div>

    <!-- Image -->
    <div class="w-full mt-4">
      <img 
        :src="imageUrl" 
        :alt="title"
        class="aspect-video w-full h-40 object-cover"
      />
    </div>

    <!-- Description Box -->
    <div class="flex-1 flex flex-col mt-4">
      <h4 class="text-lg mb-2">Why We Need It:</h4>
      <p class="text-sm flex-1">
        {{ description }}
      </p>
    </div>

    <!-- Progress Section -->
    <div class="space-y-2 mt-6">
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