<template>
    <GuestLayout>
      <Head title="Join as a School Partner - LEDU" />
  
      <div class="min-h-screen w-full bg-gradient-to-b from-[#E3F2FD] via-[#BBDEFB] to-[#FFE0B2] py-16">
        <div class="max-w-3xl mx-auto px-4">
          <!-- Header -->
          <div class="mb-12">
            <h1 class="text-5xl font-gloria mb-6">Join as a School Partner</h1>
            <p class="text-lg font-verdana text-gray-700">
              Are you a school looking to provide your students with transformative 
              learning experiences? Partner with LEDU to bring interactive English lessons 
              and inspiring opportunities to your classrooms. Share more about your students 
              and their needs, and let's create a meaningful impact together.
            </p>
          </div>
  
          <!-- Application Form -->
          <form @submit.prevent="submitForm" class="space-y-8">
            <!-- Basic Information -->
            <div v-for="(field, index) in basicFields" :key="field.id" class="relative">
              <div class="flex items-baseline gap-4">
                <span class="text-2xl font-gloria">{{ index + 1 }}.</span>
                <div class="flex-1">
                  <input
                    :type="field.type"
                    :id="field.id"
                    v-model="formData[field.id]"
                    :placeholder="field.placeholder"
                    required
                    class="w-full bg-white/90 border-2 border-black rounded-full px-6 py-4 text-lg font-verdana
                           placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
              </div>
            </div>
  
            <!-- Description of Pupils Section -->
            <div class="ml-10 -mb-4">
              <h3 class="text-xl font-gloria text-gray-700">Description of pupils:</h3>
            </div>
  
            <!-- Additional Fields -->
            <div v-for="(field, index) in additionalFields" :key="field.id" class="relative">
              <div class="flex items-baseline gap-4">
                <span class="text-2xl font-gloria">{{ field.number }}.</span>
                <div class="flex-1">
                  <textarea
                    :id="field.id"
                    v-model="(formData[field.id] as string)"
                    :placeholder="field.placeholder"
                    required
                    :rows="field.rows || 2"
                    class="w-full bg-white/90 border-2 border-black rounded-3xl px-6 py-4 text-lg font-verdana
                           placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                  ></textarea>
                </div>
              </div>
            </div>
  
            <!-- Terms Agreement -->
            <div class="flex items-start gap-4 ml-10">
              <input
                type="checkbox"
                id="terms"
                v-model="formData.terms"
                required
                class="mt-1 w-5 h-5 rounded border-2 border-black checked:bg-blue-500"
              />
              <label for="terms" class="text-sm font-verdana text-gray-700">
                By submitting this form you agree to providing your personal information to us
              </label>
            </div>
  
            <!-- Submit Button -->
            <div class="flex justify-center mt-8">
              <button
                type="submit"
                class="bg-white/90 border-2 border-black rounded-full px-12 py-3 text-xl font-gloria
                       hover:bg-white transition-colors focus:outline-none focus:ring-2 focus:ring-blue-500"
              >
                Submit
              </button>
            </div>
          </form>
        </div>
      </div>
    </GuestLayout>
  </template>
  
  <script setup lang="ts">
  import { ref } from 'vue'
  import { Head } from '@inertiajs/vue3'
  import GuestLayout from '@/Components/Layout/GuestLayout.vue'
  
  const basicFields = [
    {
      id: 'fullName',
      type: 'text',
      placeholder: 'What is your full name?'
    },
    {
      id: 'email',
      type: 'email',
      placeholder: 'What is your email address?'
    },
    {
      id: 'phone',
      type: 'tel',
      placeholder: 'What is your phone number?'
    }
  ]
  
  const additionalFields = [
    {
      id: 'ageRange',
      number: '4',
      placeholder: 'What is the age range?',
      rows: 2
    },
    {
      id: 'description',
      number: '5',
      placeholder: 'Please provide a brief description of your school',
      rows: 2
    },
    {
      id: 'educationalLevel',
      number: '6',
      placeholder: 'What is their level of educational development in specific subjects?',
      rows: 3
    },
    {
      id: 'specialConsiderations',
      number: '7',
      placeholder: 'Is there anything in particular that you would like the teacher be conscious of?',
      rows: 3
    }
  ]
  
  interface FormData {
    [key: string]: string | boolean;
    fullName: string;
    email: string;
    phone: string;
    ageRange: string;
    description: string;
    educationalLevel: string;
    specialConsiderations: string;
    terms: boolean;
  }
  
  const formData = ref<FormData>({
    fullName: '',
    email: '',
    phone: '',
    ageRange: '',
    description: '',
    educationalLevel: '',
    specialConsiderations: '',
    terms: false
  })
  
  const submitForm = () => {
    // Handle form submission
    console.log('Form submitted:', formData.value)
  }
  </script>
  
  <style scoped>
  textarea {
    resize: vertical;
    min-height: 60px;
  }
  
  /* Remove default checkbox styles */
  input[type="checkbox"] {
    appearance: none;
    -webkit-appearance: none;
    background-color: white;
    cursor: pointer;
  }
  
  input[type="checkbox"]:checked {
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20' fill='white'%3E%3Cpath fill-rule='evenodd' d='M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z' clip-rule='evenodd'/%3E%3C/svg%3E");
  }
  </style>