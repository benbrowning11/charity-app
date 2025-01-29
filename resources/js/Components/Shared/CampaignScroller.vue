<template>
  <div class="w-full max-w-[1200px] mx-auto">
    <div class="relative px-16">
      <!-- Navigation Buttons -->
      <button 
        @click="previousCard"
        class="absolute left-0 top-1/2 -translate-y-1/2 z-10"
        aria-label="Previous campaign"
      >
        <span class="text-6xl font-bold">←</span>
      </button>

      <!-- Cards Container with Overflow -->
      <div class="overflow-visible">
        <div 
          class="flex "
          :style="{
            transform: `translateX(${-100}%)`
          }"
        >
        <div 
            v-for="(campaign, index) in visibleCampaigns" 
            :key="campaign.id"
            class="w-full flex-none px-4 transition-transform duration-500 ease-in-out"
            :style="{
              opacity: getCardOpacity(index),
              transform: getCardTransform(index),
              zIndex: getCardZIndex(index)
            }"
          >
            <div class="max-w-[400px] mx-auto relative">
              <CampaignCard v-bind="campaign" />
            </div>
          </div>
        </div>
      </div>

      <!-- Next Button -->
      <button 
        @click="nextCard"
        class="absolute right-0 top-1/2 -translate-y-1/2 z-10"
        aria-label="Next campaign"
      >
        <span class="text-6xl font-bold">→</span>
      </button>
    </div>
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

// Create a computed array that includes visible cards
const visibleCampaigns = computed(() => {
  // Create a circular array by repeating the campaigns
  const repeatedCampaigns = [...props.campaigns, ...props.campaigns, ...props.campaigns]
  const startIndex = normalizedIndex.value + props.campaigns.length - 1
  return repeatedCampaigns.slice(startIndex, startIndex + 3)
})

const nextCard = () => {
  currentIndex.value = (currentIndex.value + 1) % props.campaigns.length
}

const previousCard = () => {
  currentIndex.value = (currentIndex.value - 1 + props.campaigns.length) % props.campaigns.length
}

const getCardOpacity = (index: number) => {
  // Center card is index 1 in the visible array
  if (index === 1) return 1
  return 0.5 // Side cards
}

const getCardTransform = (index: number) => {
  // Center card is index 1
  if (index === 1) return 'scale(1) translateX(0)'
  if (index === 0) return 'scale(0.95) translateX(50%)'  // Left card
  if (index === 2) return 'scale(0.95) translateX(-50%)' // Right card
  return 'scale(0.9)'
}

const getCardZIndex = (index: number) => {
  return index === 1 ? 2 : 1  // Center card higher
}
</script>