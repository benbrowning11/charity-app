<template>
  <div class="relative w-[400px] mx-auto">
    <!-- Navigation Buttons -->
    <button 
      @click="previousCard"
      class="absolute -left-12 top-1/2 -translate-y-1/2 z-10"
      aria-label="Previous campaign"
    >
      <span class="text-6xl font-bold">←</span>
    </button>

    <!-- Cards Container -->
    <div class="overflow-x-hidden w-full">
      <div 
        class="flex gap-4 transition-transform duration-500 ease-in-out w-full"
        :style="{
          transform: `translateX(${-currentIndex * 100}%)`
        }"
      >
        <div 
          v-for="(campaign, index) in campaigns" 
          :key="campaign.id"
          class="w-full flex-none"
          :style="{
            opacity: getCardOpacity(index),
            transform: getCardTransform(index),
            zIndex: getCardZIndex(index)
          }"
        >
          <CampaignCard v-bind="campaign" />
        </div>
      </div>
    </div>

    <!-- Next Button -->
    <button 
      @click="nextCard"
      class="absolute -right-12 top-1/2 -translate-y-1/2 z-10"
      aria-label="Next campaign"
    >
      <span class="text-6xl font-bold">→</span>
    </button>
  </div>
</template>
  
  <script setup lang="ts">
  import { ref, computed } from 'vue'
  import CampaignCard from '@/Components/Fundraisers/CampaignCard.vue'
  
  const props = defineProps<{
    campaigns: Array<{
      id: number
      title: string
      goal: number
      raised: number
      imageUrl: string
      description: string
      status: 'active' | 'completed'
    }>
  }>()
  
  const currentIndex = ref(0)
  
  const normalizedIndex = computed(() => {
    return ((currentIndex.value % props.campaigns.length) + props.campaigns.length) % props.campaigns.length
  })
  
  const nextCard = () => {
    currentIndex.value = (currentIndex.value + 1) % props.campaigns.length
  }
  
  const previousCard = () => {
    currentIndex.value = (currentIndex.value - 1 + props.campaigns.length) % props.campaigns.length
  }
  
  const getCardOpacity = (index: number) => {
    const distance = Math.abs(index - normalizedIndex.value)
    if (distance === 0) return 1
    if (distance === 1) return 0.3
    return 0
  }
  
  const getCardTransform = (index: number) => {
    const distance = index - normalizedIndex.value
    
    if (distance === 0) return 'scale(1) translateX(0)'
    if (distance === 1) return 'scale(0.95) translateX(5%)'
    if (distance === -1) return 'scale(0.95) translateX(-5%)'
    
    if (distance === props.campaigns.length - 1) return 'scale(0.95) translateX(-5%)'
    if (distance === -(props.campaigns.length - 1)) return 'scale(0.95) translateX(5%)'
    
    return 'scale(0.9) translateX(0)'
  }
  
  const getCardZIndex = (index: number) => {
    return index === normalizedIndex.value ? 2 : 1
  }
  </script>