<template>
    <AuthenticatedLayout>
      <Head title="Dashboard - LEDU" />
  
      <template #header>
        <h2 class="text-xl font-semibold leading-tight text-gray-800">
          Dashboard
        </h2>
      </template>
  
      <div class="py-12">
        <div class="mx-auto max-w-7xl sm:px-6 lg:px-8">
          <!-- Overview Cards -->
          <div class="grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-4 mb-8">
            <Card v-for="stat in stats" :key="stat.label">
              <div class="text-center">
                <h3 class="text-lg font-medium text-gray-500">{{ stat.label }}</h3>
                <p class="mt-2 text-3xl font-bold text-gray-900">{{ stat.value }}</p>
              </div>
            </Card>
          </div>
  
          <!-- Recent Activity -->
          <Card>
            <template #header>
              <div class="flex items-center justify-between">
                <h3 class="text-lg font-medium text-gray-900">Recent Activity</h3>
                <Button variant="secondary" size="sm">View All</Button>
              </div>
            </template>
  
            <div class="divide-y">
              <div v-for="activity in recentActivity" :key="activity.id" class="py-4">
                <div class="flex items-center justify-between">
                  <div>
                    <p class="text-sm font-medium text-gray-900">{{ activity.title }}</p>
                    <p class="text-sm text-gray-500">{{ activity.description }}</p>
                  </div>
                  <span class="text-sm text-gray-500">{{ activity.time }}</span>
                </div>
              </div>
            </div>
          </Card>
        </div>
      </div>
    </AuthenticatedLayout>
  </template>
  
  <script setup lang="ts">
  import { Head } from '@inertiajs/vue3'
  import AuthenticatedLayout from '@/Components/Layout/AuthenticatedLayout.vue'
  import Card from '@/Components/Shared/Card.vue'
  import Button from '@/Components/Shared/Button.vue'
  
  // Sample data - this would typically come from your backend
  const stats = [
    { label: 'Total Students', value: '324' },
    { label: 'Active Teachers', value: '42' },
    { label: 'Schools', value: '15' },
    { label: 'Total Lessons', value: '1,234' }
  ]
  
  const recentActivity = [
    {
      id: 1,
      title: 'New Teacher Registration',
      description: 'Sarah Johnson joined as an English teacher',
      time: '5 minutes ago'
    },
    {
      id: 2,
      title: 'Lesson Completed',
      description: 'Mathematics lesson completed for Grade 5',
      time: '1 hour ago'
    },
    // Add more activities as needed
  ]
  </script>