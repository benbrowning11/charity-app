<template>
    <nav class="header">
      <div class="parent">
        <img class="icon1" alt="" src="/storage/worldMini2.png" />
        <div class="group-child" />
        <div class="ledu">LEDU</div>
      </div>
      <div class="navigation">
        <Link class="nav-link" href="/about">About Us</Link>
        <Link class="nav-link" href="/fundraisers">Fundraisers</Link>
        <Link class="nav-link" href="/diary">the Diary</Link>
        <Link class="nav-link" href="/news">Our News</Link>
        <Link class="nav-link" href="/contact">Contact Us</Link>
      </div>
    </nav>
  </template>
  
  <script setup lang="ts">
  import { Link } from '@inertiajs/vue3'
  </script>
  
  <style scoped>
  .header {
    position: relative;
    width: 100%;
    padding: 13px 0;
    display: flex;
    align-items: center;
  }
  
  .parent {
    position: relative;
    width: 193px;
    height: 189px;
    font-size: 40px;
  }
  
  .icon1 {
    position: absolute;
    top: 0;
    left: 0;
    width: 193px;
    height: 189px;
    object-fit: cover;
  }
  
  .group-child {
    position: absolute;
    top: 33px;
    left: 45px;
    border-radius: 50%;
    background: radial-gradient(50% 50% at 50% 50%, #fff 33.5%, rgba(255, 255, 255, 0.6) 76.5%, rgba(255, 255, 255, 0.3));
    width: 107px;
    height: 105px;
  }
  
  .ledu {
    position: absolute;
    top: 46px;
    left: 52px;
  }
  
  .navigation {
    display: flex;
    gap: 2rem;
    margin-left: 2rem;
  }
  
  .nav-link {
    font-size: 24px;
    color: #000;
    text-decoration: none;
    font-family: 'Gloria Hallelujah';
  }
  
  .nav-link:hover {
    text-decoration: underline;
  }
</style>