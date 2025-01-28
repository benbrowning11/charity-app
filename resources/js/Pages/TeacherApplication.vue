<template>
    <GuestLayout>
      <Head title="Join as a Teacher - LEDU" />
  
      <div class="min-h-screen w-full bg-gradient-to-b from-[#E3F2FD] via-[#BBDEFB] to-[#FFE0B2] py-16">
        <div class="max-w-3xl mx-auto px-4">
          <!-- Header -->
          <div class="mb-12">
            <h1 class="text-5xl font-gloria mb-6">Join as a Teacher</h1>
            <p class="text-lg font-verdana text-gray-700">
              We are looking for experienced and passionate teachers to deliver online 
              English lessons to children eager to learn. Share your knowledge and make 
              a lasting impact.
            </p>
          </div>
  
          <!-- Application Form -->
          <form @submit.prevent="submitForm" class="space-y-8">
            <!-- Input Fields -->
            <div v-for="(field, index) in formFields" :key="field.id" class="relative">
              <div class="flex items-baseline gap-4">
                <span class="text-2xl font-gloria">{{ index + 1 }}.</span>
                <div class="flex-1">
                  <div class="relative">
                    <input
                      v-if="field.type !== 'textarea'"
                      :type="field.type"
                      :id="field.id"
                      v-model="(formData[field.id] as string)"
                      :placeholder="field.placeholder"
                      required
                      class="w-full bg-white/90 border-2 border-black rounded-full px-6 py-4 text-lg font-verdana
                             placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                    />
                    <textarea
                      v-else
                      :id="field.id"
                      v-model="(formData[field.id] as string)"
                      :placeholder="field.placeholder"
                      required
                      rows="4"
                      class="w-full bg-white/90 border-2 border-black rounded-3xl px-6 py-4 text-lg font-verdana
                             placeholder-gray-500 focus:outline-none focus:ring-2 focus:ring-blue-500"
                    ></textarea>
                  </div>
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
  
  const formFields = [
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
    },
    {
      id: 'subjects',
      type: 'textarea',
      placeholder: 'What are the subjects that you would like to teach?'
    },
    {
      id: 'experience',
      type: 'textarea',
      placeholder: 'What is your previous relevant experience?'
    }
  ]
  
  interface FormData {
    fullName: string;
    email: string;
    phone: string;
    subjects: string;
    experience: string;
    terms: boolean;
    [key: string]: string | boolean;
  }
  
  const formData = ref<FormData>({
    fullName: '',
    email: '',
    phone: '',
    subjects: '',
    experience: '',
    terms: false
  })
  
  const submitForm = () => {
    // Handle form submission
    console.log('Form submitted:', formData.value)
  }
  </script>
  
  <style scoped>
  /* Add any component-specific styles here */
  textarea {
    resize: vertical;
    min-height: 100px;
  }
  </style>