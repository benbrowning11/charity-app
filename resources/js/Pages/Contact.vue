<template>
    <GuestLayout>
      <Head title="Contact Us - LEDU" />
  
      <div class="relative min-h-screen bg-white overflow-hidden">
        <!-- Background World Illustration -->
        <div class="absolute inset-0 overflow-hidden">
          <img 
            src="/storage/bigWorld.png" 
            alt=""
            class="absolute top-0 right-0 w-[70%] h-full object-cover object-left"
          />
        </div>
  
        <!-- Main Content -->
        <div class="relative min-h-screen">
          <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-16">
            <!-- Header Section -->
            <div class="max-w-2xl">
              <h1 class="text-6xl font-gloria mb-6">Our Goals</h1>
              
              <p class="text-lg font-verdana text-gray-700 mb-16">
                At LEDU, we believe that education has the power to transform lives and communities. 
                That's why our mission is twofold:
              </p>
            </div>
  
            <!-- Goals Sections -->
            <div class="grid gap-12 max-w-3xl">
              <!-- Teachers Section -->
              <div class="relative group backdrop-blur-sm bg-white/30 rounded-3xl p-8">
                <h2 class="text-3xl font-gloria text-[#1135F3] mb-4">Find Teachers</h2>
                <p class="text-lg font-verdana text-gray-800 max-w-xl mb-6">
                  We are searching for passionate educators who are eager to share their knowledge 
                  and make a lasting impact by teaching English to children in need around the globe.
                </p>
                <Link 
                  href="/apply_to_teach"
                  class="inline-flex items-center gap-2 bg-white/80 rounded-full px-6 py-3 text-lg font-gloria text-gray-800 hover:bg-white/90 transition-all group-hover:translate-x-1"
                >
                  Apply to Teach
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" class="transition-transform group-hover:translate-x-1">
                    <path d="M12 4L20 12L12 20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M4 12H20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                  </svg>
                </Link>
              </div>
  
              <!-- Schools Section -->
              <div class="relative group backdrop-blur-sm bg-white/30 rounded-3xl p-8">
                <h2 class="text-3xl font-gloria text-[#53A21A] mb-4">Find Schools</h2>
                <p class="text-lg font-verdana text-gray-800 max-w-xl mb-6">
                  We aim to connect with schools in underserved regions, providing them with access 
                  to resources, support, and transformative learning opportunities.
                </p>
                <Link 
                  href="/register_school"
                  class="inline-flex items-center gap-2 bg-white/80 rounded-full px-6 py-3 text-lg font-gloria text-gray-800 hover:bg-white/90 transition-all group-hover:translate-x-1"
                >
                  Register Your School
                  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" class="transition-transform group-hover:translate-x-1">
                    <path d="M12 4L20 12L12 20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                    <path d="M4 12H20" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                  </svg>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    </GuestLayout>
  </template>

<script setup lang="ts">
import { Head, Link } from '@inertiajs/vue3'
import GuestLayout from '@/Components/Layout/GuestLayout.vue'
</script>

<style scoped>
.backdrop-blur-sm {
  backdrop-filter: blur(8px);
  -webkit-backdrop-filter: blur(8px);
}
</style>