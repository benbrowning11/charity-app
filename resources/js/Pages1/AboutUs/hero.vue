<template>
    <div :class="$style.hero">
          <img :class="$style.cd5a3b8Ae69451e8bf180608eeIcon" alt="" src="7cd5a3b8-ae69-451e-8bf1-80608ee677d5 2.png" />
          <div :class="$style.heroChild" />
          <div :class="$style.heroItem" />
          <div :class="$style.aboutUs">About Us</div>
          <div :class="$style.heroInner" />
          <div :class="$style.aboutUs1">About Us</div>
          <div :class="$style.fundraisers">Fundraisers</div>
          <div :class="$style.theDiary">the Diary</div>
          <div :class="$style.ourNews">Our News</div>
          <div :class="$style.contactUs">Contact Us</div>
          <img :class="$style.icon" alt="" src="Обводка 10.png" />
          <div :class="$style.parent">
                <img :class="$style.icon1" alt="" src="Земля 2.png" />
                <div :class="$style.groupChild" />
                <div :class="$style.ledu">LEDU</div>
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Hero"})</script><style  scoped>.cd5a3b8Ae69451e8bf180608eeIcon {
          position: absolute;
          top: 0px;
          left: -96px;
          width: 1726px;
          height: 1183px;
          object-fit: cover;
    }
          .heroChild {
                position: absolute;
                top: 0px;
                left: 0px;
                background: linear-gradient(180deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.4) 49.5%, #fff);
                width: 1440px;
                height: 950px;
          }
          .heroItem {
                position: absolute;
                top: 197px;
                left: 336px;
                border-radius: 50%;
                background: radial-gradient(50% 50% at 50% 50%, rgba(98, 41, 5, 0.6), rgba(115, 115, 115, 0));
                width: 763px;
                height: 359px;
          }
          .aboutUs {
                position: absolute;
                top: 271px;
                left: 437px;
                font-size: 96px;
                color: #fff;
                text-align: center;
                display: inline-block;
                width: 565px;
          }
          .heroInner {
                position: absolute;
                top: -173px;
                left: 239px;
                border-radius: 50px;
                background-color: #fff;
                width: 962px;
                height: 263px;
          }
          .aboutUs1 {
                position: absolute;
                top: 13px;
                left: 289px;
          }
          .fundraisers {
                position: absolute;
                top: 13px;
                left: 464px;
          }
          .theDiary {
                position: absolute;
                top: 13px;
                left: 663px;
          }
          .ourNews {
                position: absolute;
                top: 13px;
                left: 838px;
          }
          .contactUs {
                position: absolute;
                top: 13px;
                left: 1015px;
          }
          .icon {
                position: absolute;
                top: 47px;
                left: 243px;
                width: 185px;
                height: 28px;
                object-fit: cover;
          }
          .icon1 {
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
          }
          .hero {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 733px;
                overflow: hidden;
                text-align: left;
                font-size: 24px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>