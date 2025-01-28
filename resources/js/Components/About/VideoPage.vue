<template>
    <section class="bg-black py-16">
      <div class="container mx-auto px-4">
        <div class="relative aspect-video max-w-5xl mx-auto rounded-[50px] overflow-hidden">
          <!-- Video Placeholder -->
          <div 
            v-if="!videoStarted"
            class="absolute inset-0 bg-cover bg-center"
            :style="{ backgroundImage: `url(${thumbnailUrl})` }"
          >
            <!-- Play Button -->
            <button
              class="absolute inset-0 flex items-center justify-center group"
              @click="startVideo"
              aria-label="Play video"
            >
              <div class="p-6 rounded-full bg-white/20 group-hover:bg-white/30 transition-colors">
                <svg 
                  class="w-16 h-16 text-white" 
                  xmlns="http://www.w3.org/2000/svg" 
                  fill="currentColor" 
                  viewBox="0 0 24 24"
                >
                  <path d="M8 5v14l11-7z" />
                </svg>
              </div>
            </button>
          </div>
  
          <!-- Video Player -->
          <video
            ref="videoRef"
            class="w-full h-full"
            :src="videoUrl"
            :poster="thumbnailUrl"
            controls
            :class="{ 'hidden': !videoStarted }"
            @ended="videoEnded"
          >
            Your browser does not support the video tag.
          </video>
        </div>
  
        <!-- Optional Title/Description -->
        <div v-if="title || description" class="mt-8 text-center text-white">
          <h2 v-if="title" class="text-3xl font-gloria mb-4">{{ title }}</h2>
          <p v-if="description" class="text-xl font-verdana max-w-2xl mx-auto">
            {{ description }}
          </p>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  import { ref } from 'vue'
  
  const props = withDefaults(defineProps<{
    videoUrl: string
    thumbnailUrl: string
    title?: string
    description?: string
  }>(), {
    title: '',
    description: ''
  })
  
  const videoRef = ref<HTMLVideoElement | null>(null)
  const videoStarted = ref(false)
  
  const startVideo = () => {
    videoStarted.value = true
    // Wait for next tick to ensure video is visible
    nextTick(() => {
      if (videoRef.value) {
        videoRef.value.play()
      }
    })
  }
  
  const videoEnded = () => {
    videoStarted.value = false
  }
  
function nextTick(arg0: () => void) {
    throw new Error('Function not implemented.');
}
</script>