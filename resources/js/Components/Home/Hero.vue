<template>
    <section class="relative h-[1024px] overflow-hidden bg-gradient-to-b from-[#cfe9ff] via-[rgba(207,233,255,0.5)] to-[rgba(255,217,179,0.5)]">
      <img 
        :src="backgroundImage" 
        alt="Hero Background" 
        class="absolute inset-0 w-full h-full object-cover"
      />
      
      <div class="relative pt-52 px-4">
        <!-- Hero Content -->
        <div class="relative max-w-7xl mx-auto">
          <div class="absolute top-[235px] -left-[200px] w-[822px] h-[399px] rounded-[90px] bg-gradient-radial from-black/30 via-black/16 to-black/1" />
          
          <h1 class="relative text-8xl leading-[120px] text-white max-w-[541px] ml-10 font-gloria drop-shadow-xl">
            By Giving We Receive Much More
          </h1>
          
          <!-- Info Box -->
          <div class="absolute top-66 left-[588px] w-[801px] backdrop-blur-md rounded-[50px] bg-[rgba(221,239,255,0.4)] border border-white/30 p-8 shadow-md">
            <h2 class="text-2xl text-white text-center font-gloria">What We Do</h2>
            <div class="h-px bg-white/50 my-4 max-w-xs mx-auto"></div>
            <p class="text-xl font-verdana max-w-[422px] mx-auto">
              We provide education to children in humanitarian crisis areas through online lessons tailored to their needs, 
              while also supporting their communities with resources like WiFi, books, and other.
            </p>
          </div>
          
          <!-- CTA Button -->
          <div class="absolute top-[349px] right-[351px]">
            <Link href="/fundraisers" class="inline-block">
              <Button variant="primary" class="text-xl">
                Support the Cause
              </Button>
            </Link>
          </div>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  import { Link } from '@inertiajs/vue3'
  import Button from '@/Components/Shared/Button.vue'
  
  defineProps<{
    backgroundImage: string
  }>()
  </script>
  