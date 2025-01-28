<template>
    <section class="bg-white py-16">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div class="space-y-8">
            <h2 class="text-5xl font-gloria">What We Do</h2>
            <p class="text-xl font-verdana max-w-lg">
              We provide education to children who are missing out on its fruits. Through partnerships with schools 
              in areas affected by humanitarian crises, we deliver online lessons tailored to their needs. 
              These lessons have covered subjects like English, music, geography, and applied mathematics, 
              and we aim to expand this variety based on what the children need most.
            </p>
            
            <div class="pt-4">
              <Button variant="primary" class="text-xl" @click="$emit('watch-video')">
                Watch the Video
              </Button>
            </div>
          </div>
          
          <div class="relative">
            <img 
              src="/storage/whatWeDoVideo.png" 
              alt="What We Do" 
              class="rounded-[50px] w-full h-auto object-cover"
            />
          </div>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  import Button from '@/Components/Shared/Button.vue'
  
  defineEmits<{
    (e: 'watch-video'): void
  }>()
  </script>