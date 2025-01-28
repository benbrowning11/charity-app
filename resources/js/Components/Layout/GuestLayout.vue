<template>
    <div class="min-h-screen">
      <Header />
      
      <main>
        <slot />
      </main>
      
      <Footer />
    </div>
  </template>
  
  <script setup lang="ts">
  import Header from './Header.vue'
  import Footer from './Footer.vue'
  </script>