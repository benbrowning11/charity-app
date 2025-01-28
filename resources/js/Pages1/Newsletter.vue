<template>
    <div :class="$style.newsletter">
          <img :class="$style.icon" alt="" src="Иконки 2.png" />
          <img :class="$style.icon1" alt="" src="Звезды1 1.png" />
          <div :class="$style.newsletterChild" />
          <div :class="$style.newsletterItem" />
          <div :class="$style.newsletterInner" />
          <b :class="$style.readMore">Read More&gt;&gt;&gt;</b>
          <div :class="$style.rectangleDiv" />
          <b :class="$style.readMore1">Read More&gt;&gt;&gt;</b>
          <div :class="$style.stayUpdatedWith">Stay updated with the latest news, inspiring stories, and behind-the-scenes moments from our mission. From impactful lessons to heartwarming success stories, discover how we’re making a difference every day.</div>
          <div :class="$style.ourJourney">Our Journey</div>
          <div :class="$style.oneStoryAt">One Story at a Time</div>
          <img :class="$style.image202501112048081" alt="" src="IMAGE 2025-01-11 20:48:08 1.png" />
          <div :class="$style.solarPanelsInstalled">Solar Panels Installed at Impact Schools</div>
          <b :class="$style.readMore2">Read More&gt;&gt;&gt;</b>
          <b :class="$style.readMore3">Read More&gt;&gt;&gt;</b>
          <div :class="$style.latestNews">Latest News</div>
          <div :class="$style.div">09/01/2025</div>
          <div :class="$style.newsletterChild1" />
          <div :class="$style.newsletterChild2" />
          <div :class="$style.newsletterChild3" />
          <div :class="$style.news">News</div>
          <div :class="$style.news1">News</div>
          <div :class="$style.news2">News</div>
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
          name: "Newsletter"})</script><style  module>.icon {
          position: absolute;
          top: 654px;
          left: 1188px;
          width: 354px;
          height: 376px;
          object-fit: cover;
    }
          .icon1 {
                position: absolute;
                top: -148px;
                left: 527px;
                border-radius: 0px 0px 170px 0px;
                width: 514px;
                height: 494.6px;
                object-fit: contain;
                opacity: 0.6;
          }
          .newsletterChild {
                position: absolute;
                top: 397px;
                left: 93px;
                border-radius: 55px;
                background-color: #fff;
                width: 627px;
                height: 533px;
          }
          .newsletterItem {
                position: absolute;
                top: 700px;
                left: 784px;
                border-radius: 40px;
                background-color: #e6dbc4;
                width: 570px;
                height: 230px;
                opacity: 0.5;
          }
          .newsletterInner {
                position: absolute;
                top: 434px;
                left: 784px;
                border-radius: 40px;
                background-color: #e6dbc4;
                width: 570px;
                height: 230px;
                opacity: 0.5;
          }
          .readMore {
                position: absolute;
                top: 614px;
                left: 1069px;
                display: inline-block;
                width: 174px;
          }
          .rectangleDiv {
                position: absolute;
                top: 168px;
                left: 784px;
                border-radius: 40px;
                background-color: #e6dbc4;
                width: 570px;
                height: 230px;
                opacity: 0.5;
          }
          .readMore1 {
                position: absolute;
                top: 347px;
                left: 1069px;
                display: inline-block;
                width: 174px;
          }
          .stayUpdatedWith {
                position: absolute;
                top: 239px;
                left: 93px;
                color: #e6dbc4;
                display: inline-block;
                width: 532px;
          }
          .ourJourney {
                position: absolute;
                top: 64px;
                left: 93px;
                font-size: 96px;
                line-height: 82px;
                font-family: 'Gloria Hallelujah';
          }
          .oneStoryAt {
                position: absolute;
                top: 145px;
                left: 93px;
                font-size: 48px;
                line-height: 82px;
                font-family: 'Gloria Hallelujah';
                color: #ffef9a;
                display: inline-block;
                width: 600px;
                height: 75px;
          }
          .image202501112048081 {
                position: absolute;
                top: 417px;
                left: 157px;
                border-radius: 40px;
                width: 493px;
                height: 384px;
                object-fit: cover;
          }
          .solarPanelsInstalled {
                position: absolute;
                top: 842px;
                left: 182px;
                font-size: 24px;
                line-height: 25px;
                display: inline-block;
                width: 288px;
          }
          .readMore2 {
                position: absolute;
                top: 872px;
                left: 454px;
                display: inline-block;
                width: 174px;
          }
          .readMore3 {
                position: absolute;
                top: 880px;
                left: 1069px;
                display: inline-block;
                width: 174px;
          }
          .latestNews {
                position: absolute;
                top: 804px;
                left: 182px;
                font-size: 16px;
                color: #db6b24;
          }
          .div {
                position: absolute;
                top: 804px;
                left: 509px;
                font-size: 16px;
                color: #b21414;
          }
          .newsletterChild1 {
                position: absolute;
                top: 194px;
                left: 812px;
                border-radius: 22px;
                background-color: #fff;
                width: 217px;
                height: 178px;
          }
          .newsletterChild2 {
                position: absolute;
                top: 460px;
                left: 812px;
                border-radius: 22px;
                background-color: #fff;
                width: 217px;
                height: 178px;
          }
          .newsletterChild3 {
                position: absolute;
                top: 726px;
                left: 812px;
                border-radius: 22px;
                background-color: #fff;
                width: 217px;
                height: 178px;
          }
          .news {
                position: absolute;
                top: 206px;
                left: 1067px;
                font-size: 24px;
                line-height: 25px;
                display: inline-block;
                width: 238px;
                height: 153px;
          }
          .news1 {
                position: absolute;
                top: 472px;
                left: 1067px;
                font-size: 24px;
                line-height: 25px;
                display: inline-block;
                width: 238px;
                height: 153px;
          }
          .news2 {
                position: absolute;
                top: 737px;
                left: 1069px;
                font-size: 24px;
                line-height: 25px;
                display: inline-block;
                width: 238px;
                height: 153px;
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
                font-family: 'Gloria Hallelujah';
          }
          .newsletter {
                width: 100%;
                position: relative;
                background-color: #4b7277;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 20px;
                color: #000;
                font-family: Verdana;
          }
    
    </style>