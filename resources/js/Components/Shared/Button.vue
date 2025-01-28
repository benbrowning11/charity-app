<template>
    <button
      :class="[
        'rounded-[39.5px] px-6 py-3 font-gloria transition-colors duration-200',
        'inline-flex items-center justify-center',
        disabled && 'opacity-50 cursor-not-allowed',
        variant === 'primary' && 'bg-[#b21414] text-white border border-black hover:bg-[#961212]',
        variant === 'secondary' && 'bg-[rgba(155,202,222,0.53)] border border-black hover:bg-[rgba(155,202,222,0.65)]',
        variant === 'outline' && 'bg-transparent border border-black hover:bg-gray-50',
        size === 'sm' && 'text-sm px-4 py-2',
        size === 'lg' && 'text-xl px-8 py-4',
        className
      ]"
      :disabled="disabled"
      v-bind="$attrs"
    >
      <slot />
    </button>
  </template>
  
  <script setup lang="ts">
  withDefaults(defineProps<{
    variant?: 'primary' | 'secondary' | 'outline'
    size?: 'sm' | 'md' | 'lg'
    disabled?: boolean
    className?: string
  }>(), {
    variant: 'primary',
    size: 'md',
    disabled: false,
    className: ''
  })
  </script>