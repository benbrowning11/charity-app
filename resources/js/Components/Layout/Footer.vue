<template>
      <footer class="bg-white py-12">
        <div class="container mx-auto px-4">
          <div class="grid grid-cols-1 md:grid-cols-4 gap-8">
            <!-- About Us Column -->
            <div class="space-y-4">
              <h3 class="text-2xl font-gloria">About Us</h3>
              <nav class="space-y-2">
                <Link 
                  v-for="link in aboutLinks" 
                  :key="link.href"
                  :href="link.href"
                  class="block text-lg font-gloria hover:underline"
                >
                  {{ link.text }}
                </Link>
              </nav>
            </div>
    
            <!-- Fundraisers Column -->
            <div class="space-y-4">
              <h3 class="text-2xl font-gloria">Fundraisers</h3>
              <nav class="space-y-2">
                  <ActiveCampaignLink class="block text-lg font-gloria hover:underline"></ActiveCampaignLink>
                  <CompletedCampaignLink class="block text-lg font-gloria hover:underline"></CompletedCampaignLink>
                  <GeneralFundLink class="block text-lg font-gloria hover:underline"></GeneralFundLink>
              </nav>
            </div>
    
            <!-- News Column -->
            <div class="space-y-4">
              <h3 class="text-2xl font-gloria">Our News</h3>
              <nav class="space-y-2">
                <Link 
                  v-for="link in newsLinks" 
                  :key="link.href"
                  :href="link.href"
                  class="block text-lg font-gloria hover:underline"
                >
                  {{ link.text }}
                </Link>
              </nav>
            </div>
    
            <!-- Contact Column -->
            <div class="space-y-4">
              <h3 class="text-2xl font-gloria">Contact Us</h3>
              <div class="space-y-2 font-verdana">
                <a href="mailto:ledu@gmail.com" class="block text-base hover:underline">
                  ledu@gmail.com
                </a>
                <p class="text-base">+44 1234 567 890</p>
              </div>
    
              <!-- Partner Buttons -->
              <div class="space-y-4 pt-4">
                <h4 class="text-3xl font-gloria">Partner With Us:</h4>
                <div class="space-y-2">
            <Link href="/apply_to_teach" class="inline-block">

                  <Button variant="secondary" class="w-full">
                    For Teachers
                    <svg 
                class="w-5 h-5 transition-transform group-hover:translate-x-1" 
                viewBox="0 0 24 24" 
                fill="none" 
                xmlns="http://www.w3.org/2000/svg"
              >
                <path 
                  d="M13.75 6.75L19.25 12L13.75 17.25" 
                  stroke="currentColor" 
                  stroke-width="1.5" 
                  stroke-linecap="round" 
                  stroke-linejoin="round"
                />
                <path 
                  d="M19 12H4.75" 
                  stroke="currentColor" 
                  stroke-width="1.5" 
                  stroke-linecap="round" 
                  stroke-linejoin="round"
                />
              </svg>
                  </Button>
                  </Link>
                  <Link href="/register_school" class="inline-block">
                  <Button variant="secondary" class="w-full">
                    For Schools
                    <svg 
                class="w-5 h-5 transition-transform group-hover:translate-x-1" 
                viewBox="0 0 24 24" 
                fill="none" 
                xmlns="http://www.w3.org/2000/svg"
              >
                <path 
                  d="M13.75 6.75L19.25 12L13.75 17.25" 
                  stroke="currentColor" 
                  stroke-width="1.5" 
                  stroke-linecap="round" 
                  stroke-linejoin="round"
                />
                <path 
                  d="M19 12H4.75" 
                  stroke="currentColor" 
                  stroke-width="1.5" 
                  stroke-linecap="round" 
                  stroke-linejoin="round"
                />
              </svg>
                  </Button>
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </div>
      </footer>
    </template>
    
<script setup lang="ts">
import { Link } from '@inertiajs/vue3'
import Button from '@/Components/Shared/Button.vue'

import ActiveCampaignLink from '@/Components/Fundraisers/ActiveCampaignLink.vue'
import CompletedCampaignLink from '@/Components/Fundraisers/CompletedCampaignsLink.vue'
import GeneralFundLink from '@/Components/Fundraisers/GeneralFundLink.vue'

const aboutLinks = [
{ href: '/who-we-are', text: 'Who We Are' },
{ href: '/what-we-do', text: 'What We Do' },
{ href: '/philosophy', text: 'Our Philosophy' },
{ href: '/journey', text: 'Our Journey' },
]

const fundraiserLinks = [
{ href: '/general-fund', text: 'General Fund' },
{ href: '/active-campaigns', text: 'Active Campaigns' },
{ href: '/completed-campaigns', text: 'Completed Campaigns' },
]

const newsLinks = [
{ href: '/latest-news', text: 'Latest News' },
{ href: '/diary', text: 'The Diary' },
]
</script>