<template>
    <Teleport to="body">
      <Transition
        enter-active-class="transition duration-300 ease-out"
        enter-from-class="transform opacity-0"
        enter-to-class="transform opacity-100"
        leave-active-class="transition duration-200 ease-in"
        leave-from-class="transform opacity-100"
        leave-to-class="transform opacity-0"
      >
        <div 
          v-if="show" 
          class="fixed inset-0 z-50 overflow-y-auto"
          @click="$emit('close')"
        >
          <!-- Backdrop -->
          <div class="fixed inset-0 bg-black bg-opacity-75 transition-opacity" />
  
          <!-- Modal Content -->
          <div class="flex min-h-full items-center justify-center p-4">
            <div 
              class="relative max-w-6xl w-full"
              @click.stop
            >
              <!-- Close Button -->
              <button
                class="absolute -top-12 right-0 text-white hover:text-gray-300 focus:outline-none"
                @click="$emit('close')"
                aria-label="Close modal"
              >
                <svg 
                  class="h-8 w-8" 
                  xmlns="http://www.w3.org/2000/svg" 
                  fill="none" 
                  viewBox="0 0 24 24" 
                  stroke="currentColor"
                >
                  <path 
                    stroke-linecap="round" 
                    stroke-linejoin="round" 
                    stroke-width="2" 
                    d="M6 18L18 6M6 6l12 12" 
                  />
                </svg>
              </button>
  
              <!-- Content Slot -->
              <div class="relative">
                <slot />
              </div>
            </div>
          </div>
        </div>
      </Transition>
    </Teleport>
  </template>
  
  <script setup lang="ts">
  defineProps<{
    show: boolean
  }>()
  
  defineEmits<{
    (e: 'close'): void
  }>()
  </script>