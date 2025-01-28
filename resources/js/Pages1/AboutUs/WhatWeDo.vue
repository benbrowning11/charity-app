<template>
    <div :class="$style.aboutUs">
          <div :class="$style.whatWeDo">What We Do</div>
          <div :class="$style.weProvideEducation">We provide education to children who are missing out on its fruits. Through partnerships with schools in areas affected by humanitarian crises, we deliver online lessons tailored to their needs. These lessons have covered subjects like English, music, geography, and applied mathematics, and we aim to expand this variety based on what the children need most.</div>
          <img :class="$style.img80301Icon" alt="" src="IMG_8030 1.png" />
          <div :class="$style.rectangleParent">
                <div :class="$style.groupChild" />
                <div :class="$style.watchTheVideo">Watch the Video</div>
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "AboutUs"})</script><style  module>.whatWeDo {
          position: absolute;
          top: 53px;
          left: 118px;
          font-size: 48px;
    }
          .weProvideEducation {
                position: absolute;
                top: 179px;
                left: 118px;
                font-family: Verdana;
                text-align: left;
                display: inline-block;
                width: 562px;
          }
          .img80301Icon {
                position: absolute;
                top: 120px;
                left: 768px;
                border-radius: 50px;
                width: 571px;
                height: 342px;
                object-fit: cover;
          }
          .groupChild {
                position: absolute;
                top: 0px;
                left: 0px;
                border-radius: 39.5px;
                background-color: #b21414;
                border: 1px solid #000;
                box-sizing: border-box;
                width: 265px;
                height: 58px;
          }
          .watchTheVideo {
                position: absolute;
                top: 6px;
                left: 22px;
                display: inline-block;
                width: 222px;
                height: 46px;
          }
          .rectangleParent {
                position: absolute;
                top: 404px;
                left: 266px;
                width: 265px;
                height: 58px;
                color: #fff;
          }
          .aboutUs {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 549px;
                overflow: hidden;
                text-align: center;
                font-size: 20px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>