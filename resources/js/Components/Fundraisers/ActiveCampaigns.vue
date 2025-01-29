<template>
  <section class="py-8 overflow-hidden">
    <div class="container mx-auto">
      <h2 class="text-4xl font-gloria mb-8 px-4">Active Campaigns</h2>
      <CampaignScroller :campaigns="campaigns" />
    </div>
  </section>
</template>
  
  <script setup lang="ts">
  import CampaignScroller from '@/Components/Shared/CampaignScroller.vue'
  
  defineProps<{
    campaigns: Array<{
      id: number
      title: string
      goal: number
      raised: number
      imageUrl: string
      description: string
      status: 'active'
    }>
  }>()
  </script>