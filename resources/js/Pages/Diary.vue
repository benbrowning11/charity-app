<template>
    <div class="min-h-screen bg-[#D8B29A]">
      <Head title="The Diary - LEDU" />
      <DiaryBook />
    </div>
</template>
  
<script setup lang="ts">
  import { Head } from '@inertiajs/vue3'
  import DiaryBook from '@/Components/Diary/DiaryBook.vue'
</script>

<style scoped>
.book-shadow {
  box-shadow:
    0 10px 20px rgba(0,0,0,0.19),
    0 6px 6px rgba(0,0,0,0.23),
    inset 0 0 50px rgba(0,0,0,0.1);
}
</style>