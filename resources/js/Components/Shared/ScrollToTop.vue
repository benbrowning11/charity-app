<template>
    <Transition
      enter-active-class="transition duration-300 ease-out"
      enter-from-class="transform translate-y-10 opacity-0"
      enter-to-class="transform translate-y-0 opacity-100"
      leave-active-class="transition duration-200 ease-in"
      leave-from-class="transform translate-y-0 opacity-100"
      leave-to-class="transform translate-y-10 opacity-0"
    >
      <button
        v-show="showButton"
        @click="scrollToTop"
        class="fixed bottom-8 right-8 p-3 rounded-full bg-[#b21414] text-white shadow-lg hover:bg-[#961212] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-[#b21414]"
        aria-label="Scroll to top"
      >
        <svg 
          xmlns="http://www.w3.org/2000/svg" 
          class="h-6 w-6" 
          fill="none" 
          viewBox="0 0 24 24" 
          stroke="currentColor"
        >
          <path 
            stroke-linecap="round" 
            stroke-linejoin="round" 
            stroke-width="2" 
            d="M5 10l7-7m0 0l7 7m-7-7v18"
          />
        </svg>
      </button>
    </Transition>
  </template>
  
  <script setup lang="ts">
  import { ref, onMounted, onUnmounted } from 'vue'
  
  const showButton = ref(false)
  
  const checkScroll = () => {
    showButton.value = window.scrollY > 500
  }
  
  const scrollToTop = () => {
    window.scrollTo({
      top: 0,
      behavior: 'smooth'
    })
  }
  
  onMounted(() => {
    window.addEventListener('scroll', checkScroll)
  })
  
  onUnmounted(() => {
    window.removeEventListener('scroll', checkScroll)
  })
  </script>