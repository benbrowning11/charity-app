<template>
    <blockquote class="relative">
      <img 
        src="/storage/quote-left.png" 
        alt="Quote mark" 
        class="absolute -top-8 -left-8 w-[175px] h-[149px] object-contain opacity-50"
      />
      <img 
        src="/storage/quote-right.png" 
        alt="Quote mark" 
        class="absolute -bottom-8 -right-8 w-[159px] h-[133px] object-contain opacity-50"
      />
      
      <div class="relative z-10 px-12">
        <slot />
      </div>
    </blockquote>
  </template>