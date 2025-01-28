<template>
    <div class="flex items-center gap-4">
      <a 
        v-for="link in socialLinks"
        :key="link.name"
        :href="link.href"
        :aria-label="link.name"
        target="_blank"
        rel="noopener noreferrer"
        class="transition-opacity hover:opacity-80"
      >
        <img 
          :src="link.icon"
          :alt="link.name"
          class="w-12 h-12 object-cover"
        />
      </a>
    </div>
  </template>
  
  <script setup lang="ts">
  const socialLinks = [
    {
      name: 'LinkedIn',
      href: '#',
      icon: '/storage/linkedin.png'
    },
    {
      name: 'WhatsApp',
      href: '#',
      icon: '/storage/whatsapp.png'
    },
    {
      name: 'Instagram',
      href: '#',
      icon: '/storage/instagram.png'
    },
    {
      name: 'YouTube',
      href: '#',
      icon: '/storage/youtube.png'
    }
  ]
  </script>