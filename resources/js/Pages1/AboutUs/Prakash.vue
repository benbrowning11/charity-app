<template>
    <div :class="$style.prakash">
          <div :class="$style.prakashChild" />
          <div :class="$style.theVisionaryWhoContainer">
                <p :class="$style.theVisionary">The Visionary </p>
                <p :class="$style.theVisionary">Who Returned Home</p>
          </div>
          <div :class="$style.prakashBistaWas">Prakash Bista was born in Kalikot, a remote village where residents still lack basic medical care. His parents, after a three-day walk to the nearest town, saw children in school uniforms and decided to send Prakash to a boarding school. Tragically, his education was interrupted by a civil war, and his parents passed away in an accident just as he was preparing for his final exams.</div>
          <div :class="$style.despiteTheseImmense">Despite these immense challenges, Prakash founded Impact Schools, convincing neighbours to trust him with building the first school in his village. With scholarships, he studied in the US and at LSE, but unlike many peers who stayed abroad to climb the career ladder, Prakash returned home to expand Impact Schools. Today, these schools educate over 300 children and provide accommodations for more than 30 orphans.</div>
          <img :class="$style.image4Icon" alt="" src="image 4.png" />
          <div :class="$style.prakashsStoryReminds">Prakash’s story reminds us that one individual’s determination can ignite change for entire communities.</div>
          <img :class="$style.icon" alt="" src="Кавычки 2.png" />
          <img :class="$style.icon1" alt="" src="Кавычки 3.png" />
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
          name: "Prakash"})</script><style  module>.prakashChild {
          position: absolute;
          top: 545px;
          left: 733px;
          border-radius: 50px;
          background-color: #e7f8ff;
          width: 567px;
          height: 246px;
    }
          .theVisionary {
                margin: 0;
          }
          .theVisionaryWhoContainer {
                position: absolute;
                top: 65px;
                left: 97px;
                font-size: 40px;
                line-height: 50px;
                color: #0e26a5;
                display: inline-block;
                width: 611px;
          }
          .prakashBistaWas {
                position: absolute;
                top: 203px;
                left: 97px;
                font-family: Inter;
                display: inline-block;
                width: 505px;
          }
          .despiteTheseImmense {
                position: absolute;
                top: 441px;
                left: 97px;
                font-family: Inter;
                display: inline-block;
                width: 525px;
          }
          .image4Icon {
                position: absolute;
                top: 165px;
                left: 665px;
                border-radius: 50px;
                width: 704px;
                height: 316px;
                object-fit: cover;
          }
          .prakashsStoryReminds {
                position: absolute;
                top: 570px;
                left: 805px;
                font-size: 32px;
                font-family: Verdana;
                text-align: center;
                display: inline-block;
                width: 423px;
                height: 221px;
          }
          .icon {
                position: absolute;
                top: 481px;
                left: 665px;
                width: 175px;
                height: 149px;
                object-fit: cover;
          }
          .icon1 {
                position: absolute;
                top: 674px;
                left: 1210px;
                width: 159px;
                height: 133px;
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
          .prakash {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 879px;
                overflow: hidden;
                text-align: left;
                font-size: 20px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>