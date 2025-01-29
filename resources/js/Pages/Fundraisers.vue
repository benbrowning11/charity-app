// pages/Fundraisers.vue
<template>
  <GuestLayout>
    <Head title="Fundraisers - LEDU" />
    <div class="min-h-screen bg-white">
      <!-- General Fund Section -->
      <GeneralFund />

      <!-- Active Campaigns Section -->
      <ActiveCampaigns :campaigns="activeCampaigns" />

      <!-- Completed Campaigns Section -->
      <CompletedCampaigns :campaigns="completedCampaigns" />
    </div>
  </GuestLayout>
</template>

<script setup lang="ts">
import { Head } from '@inertiajs/vue3'
import GuestLayout from '@/Components/Layout/GuestLayout.vue'
import GeneralFund from '@/Components/Fundraisers/GeneralFund.vue'
import ActiveCampaigns from '@/Components/Fundraisers/ActiveCampaigns.vue'
import CompletedCampaigns from '@/Components/Fundraisers/CompletedCampaigns.vue'

const navLinks = [
  { id: 'general-fund', text: 'General Fund' },
  { id: 'active-campaigns', text: 'Active Campaigns' },
  { id: 'completed-campaigns', text: 'Completed Campaigns' }
]

// Sample data - would come from props in real implementation
const activeCampaigns = [
  {
    id: 1,
    title: 'Books',
    goal: 500,
    raised: 375,
    imageUrl: '/storage/books.png',
    description: 'Access to educational materials is essential for nurturing young minds and fostering creativity. This fundraiser will help provide books for children in remote areas, creating opportunities for growth and learning.',
    status: 'active' as const
  },
  {
    id: 2,
    title: 'Books 2',
    goal: 500,
    raised: 375,
    imageUrl: '/storage/books.png',
    description: 'Access to educational materials is essential for nurturing young minds and fostering creativity. This fundraiser will help provide books for children in remote areas, creating opportunities for growth and learning.',
    status: 'active' as const
  },
  {
    id: 3,
    title: 'Books 3',
    goal: 500,
    raised: 375,
    imageUrl: '/storage/books.png',
    description: 'Access to educational materials is essential for nurturing young minds and fostering creativity. This fundraiser will help provide books for children in remote areas, creating opportunities for growth and learning.',
    status: 'active' as const
  }
]

const completedCampaigns = [
  {
    id: 1,
    title: 'Books for Bright Minds',
    goal: 500,
    raised: 500,
    imageUrl: '/storage/booksForBright.png',
    description: 'Thanks to your incredible support, we successfully provided a new collection of books to Impact Schools, inspiring a love for reading among children.',
    status: 'completed' as const
  }
]
</script>

<style scoped>
/* Add any additional custom styles here */
html {
  scroll-behavior: smooth;
}
</style>