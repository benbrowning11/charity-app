<template>
    <div :class="$style.desktop25">
          <img :class="$style.icon" alt="" src="Земля 2.png" />
          <div :class="$style.ourGoals">Our Goals</div>
          <div :class="$style.desktop25Child" />
          <div :class="$style.desktop25Item" />
          <div :class="$style.desktop25Inner" />
          <div :class="$style.findTeachers">Find Teachers</div>
          <div :class="$style.findSchools">Find Schools</div>
          <div :class="$style.weAreSearching">We are searching for passionate educators who are eager to share their knowledge and make a lasting impact by teaching English to children in need around the globe.</div>
          <div :class="$style.weAimTo">We aim to connect with schools in underserved regions, providing them with access to resources, support, and transformative learning opportunities.</div>
          <div :class="$style.applyToTeach">Apply to Teach</div>
          <img :class="$style.vectorIcon" alt="" src="Vector 1.svg" />
          <img :class="$style.desktop25Child1" alt="" src="Vector 2.svg" />
          <div :class="$style.rectangleDiv" />
          <div :class="$style.registerYourSchool">Register Your School</div>
          <img :class="$style.icon1" alt="" src="Иллюстрация_без_названия 2.png" />
          <img :class="$style.icon2" alt="" src="Иллюстрация_без_названия 3.png" />
          <div :class="$style.atLeduWe">At LEDU, we believe that education has the power to transform lives and communities. That’s why our mission is twofold:</div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Desktop"})</script><style  module>.icon {
          position: absolute;
          top: -384px;
          left: 645px;
          width: 1373px;
          height: 2117px;
          object-fit: cover;
    }
          .ourGoals {
                position: absolute;
                top: 62px;
                left: 117px;
                font-size: 96px;
          }
          .desktop25Child {
                position: absolute;
                top: 437px;
                left: 74px;
                box-shadow: 0px 1px 4px rgba(155, 202, 222, 0.53);
                backdrop-filter: blur(30px);
                border-radius: 55px;
                background-color: rgba(221, 239, 255, 0.4);
                border: 1px solid rgba(255, 255, 255, 0.3);
                box-sizing: border-box;
                width: 1236px;
                height: 192px;
          }
          .desktop25Item {
                position: absolute;
                top: 487px;
                left: 940px;
                backdrop-filter: blur(35px);
                border-radius: 45px;
                background-color: rgba(255, 255, 255, 0.5);
                border: 2px solid #fff;
                box-sizing: border-box;
                width: 328px;
                height: 90px;
          }
          .desktop25Inner {
                position: absolute;
                top: 675px;
                left: 74px;
                box-shadow: 0px 1px 4px rgba(155, 202, 222, 0.53);
                backdrop-filter: blur(30px);
                border-radius: 40px;
                background-color: rgba(221, 239, 255, 0.4);
                border: 1px solid rgba(255, 255, 255, 0.3);
                box-sizing: border-box;
                width: 1236px;
                height: 192px;
          }
          .findTeachers {
                position: absolute;
                top: 487px;
                left: 107px;
                font-size: 40px;
                color: #1135f3;
          }
          .findSchools {
                position: absolute;
                top: 725px;
                left: 107px;
                font-size: 40px;
                color: #53a21a;
          }
          .weAreSearching {
                position: absolute;
                top: 481px;
                left: 411px;
                font-size: 20px;
                font-family: Verdana;
                color: #0e076f;
                display: inline-block;
                width: 474px;
          }
          .weAimTo {
                position: absolute;
                top: 724px;
                left: 411px;
                font-size: 20px;
                font-family: Verdana;
                display: inline-block;
                width: 413px;
          }
          .applyToTeach {
                position: absolute;
                top: 508px;
                left: 979px;
          }
          .vectorIcon {
                position: absolute;
                top: 555.88px;
                left: 116.79px;
                width: 253.3px;
                height: 3.3px;
          }
          .desktop25Child1 {
                position: absolute;
                top: 795.49px;
                left: 115.33px;
                width: 201.8px;
                height: 2.2px;
          }
          .rectangleDiv {
                position: absolute;
                top: 725px;
                left: 864px;
                backdrop-filter: blur(35px);
                border-radius: 45px;
                background-color: rgba(255, 255, 255, 0.5);
                border: 2px solid #fff;
                box-sizing: border-box;
                width: 404px;
                height: 90px;
          }
          .registerYourSchool {
                position: absolute;
                top: 746px;
                left: 908px;
          }
          .icon1 {
                position: absolute;
                top: 499px;
                left: 1159px;
                width: 95px;
                height: 59px;
                object-fit: cover;
          }
          .icon2 {
                position: absolute;
                top: 740px;
                left: 1159px;
                width: 95px;
                height: 59px;
                object-fit: cover;
          }
          .atLeduWe {
                position: absolute;
                top: 223px;
                left: 123px;
                font-family: Verdana;
                display: inline-block;
                width: 550px;
          }
          .desktop25 {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 24px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>