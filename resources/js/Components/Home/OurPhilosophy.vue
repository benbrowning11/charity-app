<template>
    <section class="bg-white py-16">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center">
          <div class="space-y-6">
            <h2 class="text-6xl font-gloria text-[#0E26A5]">Our Philosophy</h2>
            <p class="text-2xl font-verdana">
              For pupils, we bring light to the other side of the world. 
              For teachers, we highlight that by giving, we gain so much more. 
              <strong>Together, we create opportunities for growth and impact.</strong>
            </p>
            <Link href="/learn-more" class="text-3xl font-gloria text-white">
              <Button variant="secondary">
                Learn More
              </Button>
            </Link>
          </div>
          
          <div class="relative">
            <img 
              src="/storage/ourPhilo.jpeg" 
              alt="Our Philosophy" 
              class="rounded-l-[50px] w-full h-[500px] object-cover"
            />
            
            <!-- Decorative Elements -->
            <div class="absolute -top-12 right-12">
              <img src="/storage/stars1_2.png" alt="" class="w-12 h-12 object-contain" />
            </div>
            <div class="absolute bottom-12 left-12">
              <img src="/storage/stars1_2.png" alt="" class="w-12 h-12 object-contain" />
            </div>
          </div>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  import { Link } from '@inertiajs/vue3'
  import Button from '@/Components/Shared/Button.vue'
  </script>