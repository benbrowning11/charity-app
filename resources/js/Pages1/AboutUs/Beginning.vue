<template>
    <div :class="$style.beginning">
          <img :class="$style.img68711Icon" alt="" src="IMG_6871 1.png" />
          <div :class="$style.theBeginning">The Beginning</div>
          <div :class="$style.someOfUs">Some of us on the team have experienced suffering in our own lives. We feel fortunate to enjoy freedoms that many others do not possess, and this sense of gratitude compels us to give back. Realizing that the problems in our regions were too vast for us to address directly, we chose to focus on areas where the core conflicts had subsided but where children still needed help.</div>
          <div :class="$style.nepal">Nepal</div>
          <div :class="$style.inspiredByStories">Inspired by stories of transformation and awe-inspiring beauty in Nepal, we decided it would be the perfect place to begin our mission. It was there that we met Prakash Bista, a man whose story exemplifies the power of education and community.</div>
          <img :class="$style.icon" alt="" src="Непал 2.png" />
          <div :class="$style.ourJourneySo">Our Journey So Far </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Beginning"})</script><style  module>.img68711Icon {
          position: absolute;
          top: 593px;
          left: 96px;
          border-radius: 50px;
          width: 550px;
          height: 362px;
          object-fit: cover;
    }
          .theBeginning {
                position: absolute;
                top: 203px;
                left: 237px;
                color: #db6b24;
          }
          .someOfUs {
                position: absolute;
                top: 289px;
                left: 96px;
                font-size: 20px;
                font-family: Inter;
                display: inline-block;
                width: 424px;
          }
          .nepal {
                position: absolute;
                top: 593px;
                left: 760px;
                color: #3e6f1b;
          }
          .inspiredByStories {
                position: absolute;
                top: 682px;
                left: 760px;
                font-size: 20px;
                font-family: Verdana;
                display: inline-block;
                width: 438px;
          }
          .icon {
                position: absolute;
                top: 73px;
                left: 559px;
                width: 881px;
                height: 578px;
                object-fit: cover;
          }
          .ourJourneySo {
                position: absolute;
                top: 57px;
                left: 91px;
                font-size: 64px;
                line-height: 70px;
                display: inline-block;
                width: 450px;
          }
          .beginning {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 40px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>