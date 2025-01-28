<template>
    <div class="min-h-screen bg-gray-100">
      <nav class="bg-white border-b border-gray-100">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between h-16">
            <div class="flex">
              <!-- Logo -->
              <div class="shrink-0 flex items-center">
                <Link href="/">
                  <div class="relative w-12 h-12">
                    <img 
                      src="/storage/worldMini2.png" 
                      alt="LEDU Logo"
                      class="w-full h-full object-cover"
                    />
                    <div class="absolute inset-0 bg-gradient-radial from-white/60 via-white/30 to-transparent rounded-full" />
                    <span class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 text-sm font-gloria">
                      LEDU
                    </span>
                  </div>
                </Link>
              </div>
  
              <!-- Navigation Links -->
              <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                <NavLink 
                  href="/dashboard" 
                  :active="route().current('dashboard')"
                >
                  Dashboard
                </NavLink>
                <!-- Add other nav links as needed -->
              </div>
            </div>
  
            <!-- Settings Dropdown -->
            <div class="hidden sm:flex sm:items-center sm:ml-6">
              <div class="ml-3 relative">
                <Dropdown align="right" width="48">
                  <template #trigger>
                    <button class="flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 focus:outline-none transition duration-150 ease-in-out">
                      <div>{{ $page.props.auth.user.name }}</div>
                      <div class="ml-1">
                        <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                          <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                        </svg>
                      </div>
                    </button>
                  </template>
  
                  <template #content>
                    <DropdownLink href="/profile">Profile</DropdownLink>
                    <DropdownLink href="/logout" method="post" as="button">
                      Log Out
                    </DropdownLink>
                  </template>
                </Dropdown>
              </div>
            </div>
          </div>
        </div>
      </nav>
  
      <!-- Page Heading -->
      <header class="bg-white shadow" v-if="$slots.header">
        <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
          <slot name="header" />
        </div>
      </header>
  
      <!-- Page Content -->
      <main>
        <slot />
      </main>
    </div>
  </template>
  
  <script setup lang="ts">
  import { Link } from '@inertiajs/vue3'
  import NavLink from '@/Components/NavLink.vue'
  import Dropdown from '@/Components/Dropdown.vue'
  import DropdownLink from '@/Components/DropdownLink.vue'
  </script>