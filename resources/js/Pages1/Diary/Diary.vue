<template>
    <div :class="$style.diary">
          <img :class="$style.icon" alt="" src="Книга обложка 1.png" />
          <div :class="$style.theDiary">the Diary</div>
          <div :class="$style.lightingThePath">Lighting the Path</div>
          <div :class="$style.whereKindnessLives">Where Kindness Lives</div>
          <div :class="$style.menuParent">
                <div :class="$style.menu">Menu</div>
                <img :class="$style.icon1" alt="" src="Обводка 10.png" />
                <img :class="$style.icon2" alt="" src="Обводка 11.png" />
                <img :class="$style.icon3" alt="" src="Обводка 12.png" />
          </div>
          <div :class="$style.parent">
                <img :class="$style.icon4" alt="" src="Земля 2.png" />
                <div :class="$style.groupChild" />
                <div :class="$style.ledu">LEDU</div>
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Diary"})</script><style  module>.icon {
          position: absolute;
          top: 0px;
          left: 0px;
          width: 1313px;
          height: 1024px;
          object-fit: cover;
    }
          .theDiary {
                position: absolute;
                top: 366.65px;
                left: 483px;
                font-size: 96px;
                color: #dba473;
                transform:  rotate(-1.2deg);
                transform-origin: 0 0;
          }
          .lightingThePath {
                position: absolute;
                top: 732px;
                left: 559px;
          }
          .whereKindnessLives {
                position: absolute;
                top: 782px;
                left: 532px;
          }
          .menu {
                position: absolute;
                top: 0px;
                left: 4px;
          }
          .icon1 {
                position: absolute;
                top: 45px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon2 {
                position: absolute;
                top: 59px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon3 {
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
                color: #000;
          }
          .icon4 {
                position: absolute;
                top: 0px;
                left: 0px;
                width: 193px;
                height: 189px;
                object-fit: cover;
          }
          .groupChild {
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
          .parent {
                position: absolute;
                top: -4px;
                left: 0px;
                width: 193px;
                height: 189px;
                font-size: 40px;
                color: #000;
          }
          .diary {
                width: 100%;
                position: relative;
                background-color: #d8b29a;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 32px;
                color: #ffbc92;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>