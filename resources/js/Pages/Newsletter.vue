<template>
    <GuestLayout>
      <Head title="Newsletter - LEDU" />
      
      <div class="bg-[#4B7277] min-h-screen">
        <div class="container mx-auto px-4 py-16">
          <!-- Header Section -->
          <div class="max-w-4xl mb-16">
            <h1 class="text-8xl font-gloria text-white mb-4">Our Journey</h1>
            <h2 class="text-5xl font-gloria text-[#FFEF9A] mb-8">One Story at a Time</h2>
            <p class="text-xl text-[#E6DBC4] font-verdana">
              Stay updated with the latest news, inspiring stories, and behind-the-scenes 
              moments from our mission. From impactful lessons to heartwarming success 
              stories, discover how we're making a difference every day.
            </p>
          </div>
  
          <!-- News Grid -->
          <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
            <div v-for="(article, index) in articles" :key="index">
              <Card variant="secondary" class="h-full">
                <img 
                  :src="article.image" 
                  :alt="article.title"
                  class="w-full h-48 object-cover rounded-2xl mb-4"
                />
                <div class="space-y-4">
                  <div class="flex justify-between items-center">
                    <span class="text-[#DB6B24] font-gloria">{{ article.category }}</span>
                    <span class="text-[#B21414]">{{ article.date }}</span>
                  </div>
                  <h3 class="text-2xl font-gloria">{{ article.title }}</h3>
                  <p class="font-verdana">{{ article.excerpt }}</p>
                  <Button variant="primary">Read More >>></Button>
                </div>
              </Card>
            </div>
          </div>
        </div>
      </div>
      
      <ScrollToTop />
    </GuestLayout>
  </template>
  
  <script setup lang="ts">
  import { Head } from '@inertiajs/vue3'
  import GuestLayout from '@/Components/Layout/GuestLayout.vue'
  import Card from '@/Components/Shared/Card.vue'
  import Button from '@/Components/Shared/Button.vue'
  import ScrollToTop from '@/Components/Shared/ScrollToTop.vue'
  
  // Sample data - this would typically come from your backend
  const articles = [
    {
      title: 'Solar Panels Installed at Impact Schools',
      category: 'Latest News',
      date: '09/01/2025',
      image: '/storage/solar-panels.jpg',
      excerpt: 'Our latest initiative brings sustainable energy solutions to our partner schools...'
    },
    {
      title: 'Teaching Through Technology',
      category: 'Success Stories',
      date: '08/28/2025',
      image: '/storage/teaching-tech.jpg',
      excerpt: 'How digital tools are transforming education in remote areas...'
    },
    // Add more articles as needed
  ]
  </script>