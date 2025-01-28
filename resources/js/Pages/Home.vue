<template>
  <GuestLayout>
    <Head title="Home - LEDU" />
    
    <!-- Hero Section -->
    <Hero :background-image="assets.ropax1" />
    
    <!-- What We Do Section -->
    <WhatWeDo @watch-video="showVideo = true" />
    
    <!-- Our Philosophy Section -->
    <OurPhilosophy />
    
    <!-- Newsletter Section -->
    <NewsletterSection />
    
    <!-- Video Modal -->
    <Modal :show="showVideo" @close="showVideo = false">
      <div class="bg-black p-4 rounded-lg">
        <video 
          src="/storage/our-mission.mp4" 
          controls 
          class="w-full max-w-4xl mx-auto"
        />
      </div>
    </Modal>
    
    <ScrollToTop />
  </GuestLayout>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import { Head } from '@inertiajs/vue3'
import GuestLayout from '@/Components/Layout/GuestLayout.vue'
import Hero from '@/Components/Home/Hero.vue'
import WhatWeDo from '@/Components/Home/WhatWeDo.vue'
import OurPhilosophy from '@/Components/Home/OurPhilosophy.vue'
import NewsletterSection from '@/Components/Home/NewsletterSection.vue'
import Modal from '@/Components/Shared/Modal.vue'
import ScrollToTop from '@/Components/Shared/ScrollToTop.vue'

defineProps<{
  assets: Record<string, string>
}>()

const showVideo = ref(false)
</script>