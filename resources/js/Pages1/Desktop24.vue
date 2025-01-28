<template>
    <div :class="$style.desktop24">
          <img :class="$style.icon" alt="" src="Земля 2.png" />
          <div :class="$style.ourGoals">Our Goals</div>
          <img :class="$style.icon1" alt="" src="Иллюстрация_без_названия 2.png" />
          <div :class="$style.menuParent">
                <div :class="$style.menu">Menu</div>
                <img :class="$style.icon2" alt="" src="Обводка 10.png" />
                <img :class="$style.icon3" alt="" src="Обводка 11.png" />
                <img :class="$style.icon4" alt="" src="Обводка 12.png" />
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Desktop"})
</script>
<style  module>.icon {
          position: absolute;
          top: 89px;
          left: 234px;
          width: 972px;
          height: 935px;
          object-fit: cover;
    }
          .ourGoals {
                position: absolute;
                top: 49px;
                left: 573px;
          }
          .icon1 {
                position: absolute;
                top: 444px;
                left: 1132px;
                width: 220px;
                height: 136px;
                object-fit: cover;
          }
          .menu {
                position: absolute;
                top: 0px;
                left: 4px;
          }
          .icon2 {
                position: absolute;
                top: 45px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon3 {
                position: absolute;
                top: 59px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon4 {
                position: absolute;
                top: 73px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .menuParent {
                position: absolute;
                top: 4px;
                left: 1330px;
                width: 88px;
                height: 101px;
                font-size: 32px;
          }
          .desktop24 {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 64px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>