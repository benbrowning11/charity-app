<template>
    <div class="relative min-h-screen bg-[#D8B29A]">
      <!-- Book Container -->
      <div class="max-w-7xl mx-auto px-4 py-16">
        <!-- Book -->
        <div class="relative bg-[#FDF5E6] rounded-lg shadow-2xl overflow-hidden">
          <!-- Current Spread -->
          <div class="flex">
            <!-- Left Page -->
            <div class="w-1/2 min-h-[800px] p-12 border-r border-gray-300">
              <h2 
                class="text-5xl font-gloria mb-8"
                :style="{ color: currentSpread.titleColor }"
              >
                {{ currentSpread.title }}
              </h2>
              
              <div class="prose prose-lg max-w-none font-verdana">
                <div v-html="currentSpread.leftContent" />
              </div>
  
              <img 
                v-if="currentSpread.leftImage"
                :src="currentSpread.leftImage"
                :alt="currentSpread.title"
                class="mt-8 max-w-full rounded-lg border-4 border-[#FFD700] shadow-lg"
              />
            </div>
  
            <!-- Right Page -->
            <div class="w-1/2 min-h-[800px] p-12">
              <div class="prose prose-lg max-w-none font-verdana">
                <div v-html="currentSpread.rightContent" />
              </div>
  
              <img 
                v-if="currentSpread.rightImage"
                :src="currentSpread.rightImage"
                :alt="currentSpread.title"
                class="mt-8 max-w-full rounded-lg shadow-lg"
              />
            </div>
          </div>
  
          <!-- Navigation -->
          <div class="absolute bottom-4 left-0 right-0 flex justify-center gap-4">
            <button 
              @click="previousPage"
              class="px-6 py-3 bg-white rounded-full shadow hover:bg-gray-50 transition-colors disabled:opacity-50"
              :disabled="currentPageIndex === 0"
            >
              Previous Page
            </button>
            <button 
              @click="nextPage"
              class="px-6 py-3 bg-white rounded-full shadow hover:bg-gray-50 transition-colors disabled:opacity-50"
              :disabled="currentPageIndex >= stories.length - 1"
            >
              Next Page
            </button>
          </div>
        </div>
      </div>
    </div>
  </template>
  
  <script setup lang="ts">
  import { ref, computed } from 'vue'
  
  const stories = [
    {
      id: 1,
      title: "A Sister's Love Amidst Loss",
      titleColor: '#B51B6F',
      leftContent: `
        <p class="text-gray-800">Two twin sisters lost their parents for reasons that are still unknown at a very young age 
        before they were even old enough to look after themselves. Suffering from hunger, the 
        children started eating the red clay coming off the walls of the house they were living in, 
        which were becoming wet as a consequence of the monsoon season.</p>
      `,
      rightContent: `
        <p class="text-gray-800">They were tempted by it because there is iron in clay, which makes one feel full. 
        But tragically, eating it was poisonous. The younger sister of the two twins died of 
        malnutrition whilst the older was fortunately discovered before it would be too late.</p>
        
        <p class="mt-6 text-gray-800"><strong>This story reminds us of the urgency of our work and why every moment counts. 
        Through Impact Schools, the older sister found hope and a future, showing that even in 
        the darkest circumstances, education can light the way.</strong></p>
      `,
      leftImage: '/storage/sisters.jpg'
    },
    {
      id: 2,
      title: "The Light of Christmas",
      titleColor: '#FFDD00',
      leftContent: `
        <p class="text-gray-800">During the same visit, which happened to be around Christmas, we brought string lights 
        to decorate the school. We wanted to surprise the children and create a moment of joy 
        amidst their daily struggles. As we started setting up the lights, one curious child 
        peeked out from behind a door. His face lit up with wonder, scanning the room to ensure 
        no teachers were nearby before stepping out further.</p>
      `,
      rightContent: `
        <p class="text-gray-800">Moments later, more children began to gather, their faces glowing with excitement and 
        amazement. Their laughter and joy filled the room as they took in the simple yet magical 
        transformation of their school.</p>
        
        <p class="mt-6 text-gray-800"><strong>This small act of giving</strong> resonated with us long after that evening. 
        It reminded us that even the simplest gestures can spark immense joy and provide a sense 
        of wonder.</p>
      `,
      rightImage: '/storage/christmas.jpg'
    },
    {
      id: 3,
      title: "Alone But Not Forgotten",
      titleColor: '#973F07',
      leftContent: `
        <p class="text-gray-800">Another child's father moved to India to earn money that he could regularly send back 
        to sustain his family. Whilst away, he tragically passed away before being able to see 
        how the hard-earned remittances improved his family's life.</p>
      `,
      rightContent: `
        <p class="text-gray-800">His wife quickly remarried and shut the child off from her life. The little girl is not 
        allowed to come to her mother's house. The mother is living a different life with a different 
        family and has not once come to visit the girl who's been left alone, all by herself in this world.</p>
        
        <p class="mt-6 text-gray-800"><strong>Impact Schools stepped in to provide her with a community that cares, offering 
        her a sense of belonging and the tools to dream of a better future. Her story is a testament 
        to the resilience of the human spirit and the power of collective action.</strong></p>
      `
    }
  ]
  
  const currentPageIndex = ref(0)
  
  const currentSpread = computed(() => stories[currentPageIndex.value])
  
  const nextPage = () => {
    if (currentPageIndex.value < stories.length - 1) {
      currentPageIndex.value++
    }
  }
  
  const previousPage = () => {
    if (currentPageIndex.value > 0) {
      currentPageIndex.value--
    }
  }
  </script>

<style scoped>
.page-turn-enter-active,
.page-turn-leave-active {
  transition: transform 0.5s ease-in-out;
}

.page-turn-enter-from {
  transform: perspective(2000px) rotateY(-180deg);
}

.page-turn-leave-to {
  transform: perspective(2000px) rotateY(180deg);
}

/* Book styling */
.book-paper {
  background-image: 
    linear-gradient(to right, #FDF5E6 0%, #FFF8DC 100%),
    url('/storage/paper-texture.jpg');
  background-blend-mode: overlay;
  box-shadow: 
    inset 0 0 50px rgba(0, 0, 0, 0.1),
    5px 0 15px rgba(0, 0, 0, 0.05);
}

.book-spine {
  position: absolute;
  left: 50%;
  top: 0;
  bottom: 0;
  width: 4px;
  background: linear-gradient(
    to right,
    rgba(0,0,0,0.1),
    rgba(0,0,0,0.05) 50%,
    rgba(0,0,0,0.1)
  );
}

</style>