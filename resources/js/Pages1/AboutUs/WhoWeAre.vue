<template>
    <div :class="$style.whoWeAre">
          <div :class="$style.whoWeAreChild" />
          <div :class="$style.whoWeAre1">Who We Are</div>
          <div :class="$style.weAreA">We are a generation driven by the fear that we might not pass on to our children the world they deserve. The biggest challenge of this century will undoubtedly be climate change. While we may not yet know how to solve it, we believe education can empower more people to take part in tackling humanity’s greatest challenges. By sharing the education we’ve been fortunate to receive in England with those who lack access, we hope to create a better shot at addressing these global problems.</div>
          <img :class="$style.img67651Icon" alt="" src="IMG_6765 1.png" />
          <img :class="$style.icon" alt="" src="Цветы 2.png" />
          <img :class="$style.icon1" alt="" src="Цветы 2.png" />
          <div :class="$style.ourWorkFocusesContainer">
                <p :class="$style.ourWorkFocuses">Our work focuses on educating those who have done nothing wrong but have found themselves in unimaginably difficult conditions simply due to the “birth roulette”. </p>
                <p :class="$style.ourWorkFocuses">
                      <b>As one of our guiding quotes states:</b>
                </p>
          </div>
          <img :class="$style.icon2" alt="" src="Кавычки 2.png" />
          <img :class="$style.icon3" alt="" src="Кавычки 3.png" />
          <div :class="$style.toughTimesCreate">Tough times create tough men. Tough men create easy times. Easy times create weak people. Weak people create tough times.</div>
          <div :class="$style.toughTimesHaveContainer">
                <span>Tough times have certainly begun. But we do not yet consider ourselves strong. Only by overcoming challenges together, by fighting for what the child in each of us knows to be right, </span>
                <b>will we become truly resilient.</b>
          </div>
          <div :class="$style.menuParent">
                <div :class="$style.menu">Menu</div>
                <img :class="$style.icon4" alt="" src="Обводка 10.png" />
                <img :class="$style.icon5" alt="" src="Обводка 11.png" />
                <img :class="$style.icon6" alt="" src="Обводка 12.png" />
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "WhoWeAre"})</script><style  module>.whoWeAreChild {
          position: absolute;
          top: 512px;
          left: 760px;
          border-radius: 50px;
          background-color: #e7f8ff;
          width: 567px;
          height: 236px;
    }
          .whoWeAre1 {
                position: absolute;
                top: 91px;
                left: 137px;
                font-size: 48px;
                text-align: center;
          }
          .weAreA {
                position: absolute;
                top: 216px;
                left: 84px;
                font-family: Verdana;
                display: inline-block;
                width: 550px;
          }
          .img67651Icon {
                position: absolute;
                top: 512px;
                left: 84px;
                border-radius: 50px;
                width: 562px;
                height: 418px;
                object-fit: cover;
          }
          .icon {
                position: absolute;
                top: -54px;
                left: 850px;
                width: 372px;
                height: 418px;
                object-fit: cover;
          }
          .icon1 {
                position: absolute;
                top: -17px;
                left: 672px;
                width: 206px;
                height: 216px;
                object-fit: cover;
          }
          .ourWorkFocuses {
                margin: 0;
          }
          .ourWorkFocusesContainer {
                position: absolute;
                top: 364px;
                left: 760px;
                display: inline-block;
                width: 597px;
                font-family: Verdana;
          }
          .icon2 {
                position: absolute;
                top: 452px;
                left: 656px;
                width: 175px;
                height: 149px;
                object-fit: cover;
          }
          .icon3 {
                position: absolute;
                top: 659px;
                left: 1267px;
                width: 159px;
                height: 133px;
                object-fit: cover;
          }
          .toughTimesCreate {
                position: absolute;
                top: 550px;
                left: 783px;
                font-size: 32px;
                font-family: Inter;
                text-align: center;
                display: inline-block;
                width: 521px;
                height: 131px;
          }
          .toughTimesHaveContainer {
                position: absolute;
                top: 800px;
                left: 760px;
                display: inline-block;
                width: 551px;
                font-family: Inter;
          }
          .menu {
                position: absolute;
                top: 0px;
                left: 4px;
          }
          .icon4 {
                position: absolute;
                top: 45px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon5 {
                position: absolute;
                top: 59px;
                left: 0px;
                width: 88px;
                height: 28px;
                object-fit: cover;
          }
          .icon6 {
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
          .whoWeAre {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 20px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>