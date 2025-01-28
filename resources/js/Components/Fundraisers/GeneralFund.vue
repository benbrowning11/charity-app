<template>
    <section id="general-fund" class="py-16">
      <div class="container mx-auto px-4">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-16">
          <!-- Left Column -->
          <div class="space-y-8">
            <h1 class="text-6xl font-gloria text-[#B21414] leading-tight max-w-xl">
              Support Our Mission to Transform Lives
            </h1>
            
            <div class="border-2 border-[#3B82F6] p-6 bg-white rounded-lg max-w-xl">
              <p class="font-verdana text-lg">
                Your contribution directly impacts the lives of children by providing essential resources 
                like Wi-Fi, books, and educational tools in underserved communities. Together, we can 
                empower the next generation by opening doors to education, fostering hope, and 
                inspiring change.
              </p>
              
              <p class="font-verdana text-lg font-bold mt-4">
                Every dollar counts. Join us in making a tangible difference—one child, one teacher, 
                one lesson at a time.
              </p>
            </div>
  
            <Button 
              variant="primary" 
              size="lg" 
              class="w-full max-w-xl text-2xl font-gloria py-6 bg-[#B21414]"
            >
              Donate to the General Fund
            </Button>
          </div>
  
          <!-- Right Column - Using CampaignCard -->
          <CampaignCard
            title="General Fund"
            :goal="5000"
            :raised="3000"
            imageUrl="/storage/generalFund.png"
            description="The General Fund supports all aspects of our mission. Your contributions help us provide critical resources such as Wi-Fi access for online lessons, new books to foster a love of learning, and classroom supplies like stationery and teaching tools."
            descriptionTitle="Why It Matters"
            type="general"
          >
            <template #additional-description>
              <p class="font-verdana text-sm text-center mt-4">
                By donating, you ensure that we can respond swiftly to urgent needs—whether it's 
                setting up new online classes in remote areas, equipping schools with essential 
                materials, or funding special projects that inspire and empower children to dream 
                bigger.
              </p>
            </template>
          </CampaignCard>
        </div>
      </div>
    </section>
  </template>
  
  <script setup lang="ts">
  import Button from '@/Components/Shared/Button.vue'
  import CampaignCard from './CampaignCard.vue'
  </script>