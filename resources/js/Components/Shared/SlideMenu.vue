<template>
    <div>
      <!-- Menu Button -->
      <button 
        @click="isOpen = !isOpen"
        class="fixed top-4 right-4 z-50 group"
      >
        <div class="flex flex-col items-end">
          <span class="font-gloria text-2xl mb-1" :class="[!isOpen ? 'opacity-100' : 'opacity-0 pointer-events-none']">Menu</span>
          <div class="space-y-1.5">
            <div 
              class="h-[3px] bg-black rounded-full transform origin-right transition-all duration-200"
              :class="[isOpen ? 'w-12 rotate-45 translate-y-2' : 'w-12 group-hover:w-10']"
            ></div>
            <div 
              class="h-[3px] bg-black rounded-full transform origin-right transition-all duration-200"
              :class="[isOpen ? 'w-12 opacity-0' : 'w-12 group-hover:w-8']"
            ></div>
            <div 
              class="h-[3px] bg-black rounded-full transform origin-right transition-all duration-200"
              :class="[isOpen ? 'w-12 -rotate-45 -translate-y-2' : 'w-12 group-hover:w-6']"
            ></div>
          </div>
        </div>
      </button>
  
      <!-- Slide-out Menu -->
      <div 
        class="fixed inset-0 bg-black/50 transition-opacity duration-300 z-40"
        :class="[isOpen ? 'opacity-100' : 'opacity-0 pointer-events-none']"
        @click="isOpen = false"
      ></div>
  
      <div 
        class="fixed top-0 right-0 w-80 h-full bg-white shadow-lg transform transition-transform duration-300 ease-out z-40"
        :class="[isOpen ? 'translate-x-0' : 'translate-x-full']"
      >
        <!-- Logo -->
        <div class="parent">
            <Link href="/" @click="isOpen = false">
          
                <img class="icon1" alt="" src="/storage/worldMini2.png" />
                <div class="group-child" />
                <div class="ledu">LEDU</div>
            </Link>
        </div>
  
        <!-- Navigation Links -->
        <nav class="mt-8 px-8">
          <div class="flex flex-col gap-6">
            <Link 
              v-for="link in navLinks" 
              :key="link.href"
              :href="link.href"
              class="text-2xl font-gloria text-black hover:text-gray-600 transition-colors"
              @click="isOpen = false"
            >
              {{ link.text }}
            </Link>
          </div>
        </nav>
      </div>
    </div>
  </template>
  
  <script setup lang="ts">
  import { ref } from 'vue'
  import { Link } from '@inertiajs/vue3'
  
  const isOpen = ref(false)
  
  const navLinks = [
    { href: '/about', text: 'About Us' },
    { href: '/fundraisers', text: 'Fundraisers' },
    { href: '/diary', text: 'the Diary' },
    { href: '/news', text: 'Our News' },
    { href: '/contact', text: 'Contact Us' }
  ]
  </script>
  
  <style scoped>
  .bg-gradient-radial {
    background: radial-gradient(
      50% 50% at 50% 50%,
      var(--tw-gradient-from) 33.5%,
      var(--tw-gradient-via) 76.5%,
      var(--tw-gradient-to)
    );
  }
  
  /* Sketchy style for menu lines */
  .bg-black {
    background-image: url("data:image/svg+xml,%3Csvg width='100%25' height='100%25' xmlns='http://www.w3.org/2000/svg'%3E%3Crect width='100%25' height='100%25' fill='none' stroke='black' stroke-width='4' stroke-dasharray='5,5' stroke-dashoffset='0' stroke-linecap='round'/%3E%3C/svg%3E");
    background-color: black;
  }

  .parent {
    position: relative;
    width: 193px;
    height: 189px;
    font-size: 40px;
  }

  .icon1 {
    position: absolute;
    top: 0;
    left: 0;
    width: 193px;
    height: 189px;
    object-fit: cover;
  }
  
  .group-child {
    position: absolute;
    top: 33px;
    left: 45px;
    border-radius: 50%;
    background: radial-gradient(50% 50% at 50% 50%, #fff 33.5%, rgba(255, 255, 255, 0.6) 76.5%, rgba(255, 255, 255, 0.3));
    width: 107px;
    height: 105px;
  }

  .ledu {
    position: absolute;
    top: 46px;
    left: 52px;
  }
  </style>