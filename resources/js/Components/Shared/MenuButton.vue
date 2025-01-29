<template>
    <Link 
      href="/"
      class="fixed top-4 right-4 z-50 group"
    >
      <div class="flex flex-col items-end">
        <span class="font-gloria text-2xl mb-1">Menu</span>
        <div class="space-y-1.5">
          <div class="h-1 w-12 bg-black rounded-full transform origin-right transition-all duration-200 group-hover:w-10"></div>
          <div class="h-1 w-12 bg-black rounded-full transform origin-right transition-all duration-200 group-hover:w-8"></div>
          <div class="h-1 w-12 bg-black rounded-full transform origin-right transition-all duration-200 group-hover:w-6"></div>
        </div>
      </div>
    </Link>
  </template>
  
  <script setup lang="ts">
  import { Link } from '@inertiajs/vue3'
  </script>
  
  <style scoped>
  .h-1 {
    height: 3px;
  }
  
  /* Add sketchy effect to menu lines */
  .bg-black {
    background-image: url("data:image/svg+xml,%3Csvg width='100%25' height='100%25' xmlns='http://www.w3.org/2000/svg'%3E%3Crect width='100%25' height='100%25' fill='none' stroke='black' stroke-width='4' stroke-dasharray='5,5' stroke-dashoffset='0' stroke-linecap='round'/%3E%3C/svg%3E");
    background-color: black;
  }
  </style>