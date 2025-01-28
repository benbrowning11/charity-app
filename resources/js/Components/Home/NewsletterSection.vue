<template>
    <section class="bg-[#4B7277] py-16">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12">
          <!-- Left Column -->
          <div class="space-y-8">
            <h2 class="text-8xl font-gloria leading-tight">
              Our Journey
            </h2>
            <h3 class="text-5xl font-gloria text-[#FFEF9A]">
              One Story at a Time
            </h3>
            <p class="text-xl text-[#E6DBC4] font-verdana max-w-lg">
              Stay updated with the latest news, inspiring stories, and behind-the-scenes moments 
              from our mission. From impactful lessons to heartwarming success stories, 
              discover how we're making a difference every day.
            </p>
          </div>
  
          <!-- Right Column - News Cards -->
          <div class="space-y-6">
            <div v-for="(story, index) in stories" :key="index" class="relative">
              <div class="bg-[#E6DBC4] bg-opacity-50 rounded-[40px] p-6">
                <div class="bg-white rounded-[22px] w-[217px] h-[178px] float-left mr-6" />
                <div class="space-y-4">
                  <h4 class="text-2xl font-gloria leading-tight">{{ story.title }}</h4>
                  <p class="text-lg">{{ story.excerpt }}</p>
                  <strong class="block">Read More >>></strong>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  // Sample data - this could come from props in a real implementation
  const stories = [
    {
      title: 'Solar Panels Installed at Impact Schools',
      excerpt: 'Bringing sustainable energy solutions to our partner schools...',
      date: '09/01/2025'
    },
    {
      title: 'New Teaching Program Launches',
      excerpt: 'Expanding our reach with innovative teaching methods...',
      date: '08/15/2025'
    },
    {
      title: 'Student Success Stories',
      excerpt: 'Meet the students whose lives have been transformed...',
      date: '08/01/2025'
    }
  ]
  </script>