<template>
    <GuestLayout>
      <Head title="About Us - LEDU" />
      
      <!-- Hero Section -->
      <section class="relative h-[733px] overflow-hidden">
        <img 
          src="/storage/about-us-hero.jpeg" 
          alt="About Us Hero"
          class="absolute inset-0 w-full h-full object-cover"
        />
        <div class="absolute inset-0 bg-gradient-to-b from-transparent to-white/40" />
        
        <div class="relative z-10 container mx-auto px-4 pt-52">
          <PageTitle class="text-center text-white">About Us</PageTitle>
        </div>
      </section>
      
      <!-- Main Content -->
      <main>
        <WhoWeAre />
        <Beginning />
        <Prakash />
        <VideoPage v-if="showImpactVideo" />
      </main>
      
      <ScrollToTop />
    </GuestLayout>
  </template>
  
  <script setup lang="ts">
  import { Head } from '@inertiajs/vue3'
  import GuestLayout from '@/Components/Layout/GuestLayout.vue'
  import PageTitle from '@/Components/Shared/PageTitle.vue'
  import WhoWeAre from '@/Components/About/WhoWeAre.vue'
  import Beginning from '@/Components/About/Beginning.vue'
  import Prakash from '@/Components/About/Prakash.vue'
  import VideoPage from '@/Components/About/VideoPage.vue'
  import ScrollToTop from '@/Components/Shared/ScrollToTop.vue'
  
  defineProps<{
    assets: Record<string, string>
    showImpactVideo?: boolean
  }>()
  </script>