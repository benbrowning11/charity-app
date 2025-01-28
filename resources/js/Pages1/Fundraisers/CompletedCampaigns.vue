<template>
    <div :class="$style.completedCampaigns">
          <div :class="$style.complitedCampaigns">Complited Campaigns</div>
          <div :class="$style.completedCampaignsChild" />
          <div :class="$style.rectangleParent">
                <div :class="$style.groupChild" />
                <div :class="$style.seeMoreImpact">See More Impact Stories</div>
          </div>
          <div :class="$style.progress100">Progress: 100%</div>
          <div :class="$style.completedCampaignsItem" />
          <div :class="$style.booksForBright">Books for Bright Minds</div>
          <div :class="$style.thanksToYourContainer">
                <p :class="$style.thanksToYour">Thanks to your incredible support, we successfully provided a new collection of books to Impact Schools, inspiring a love for reading among children. </p>
                <p :class="$style.thanksToYour">&nbsp;</p>
                <p :class="$style.thanksToYour">These books cover subjects like English, science, and art, helping students broaden their knowledge and imagination.</p>
                <p :class="$style.thanksToYour">&nbsp;</p>
                <p :class="$style.thanksToYour">Your contributions made it possible to create a space where learning feels exciting and empowering. Together, we’ve planted the seeds of curiosity and growth for the next generation.</p>
          </div>
          <div :class="$style.thankYouFor">Thank you for making this campaign a success!</div>
          <div :class="$style.completedCampaignsInner" />
          <img :class="$style.img67811Icon" alt="" src="IMG_6781 1.png" />
          <img :class="$style.icon" alt="" src="Хлопушка 1.png" />
          <img :class="$style.icon1" alt="" src="Спасибо 2.png" />
          <img :class="$style.icon2" alt="" src="Спасибо! 2.png" />
          <div :class="$style.rectangleDiv" />
          <div :class="$style.goalAchieved500">Goal Achieved: $500</div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "CompletedCampaigns"})</script><style  module>.complitedCampaigns {
          position: absolute;
          top: 69px;
          left: 84px;
          line-height: 70px;
          display: inline-block;
          width: 514px;
    }
          .completedCampaignsChild {
                position: absolute;
                top: 172px;
                left: 199px;
                border-radius: 50px;
                background-color: #e4f3ff;
                width: 1042px;
                height: 772px;
          }
          .groupChild {
                position: absolute;
                top: 0px;
                left: 0px;
                border-radius: 39.5px;
                background-color: #fff;
                border: 1px solid #000;
                box-sizing: border-box;
                width: 455px;
                height: 78px;
          }
          .seeMoreImpact {
                position: absolute;
                top: 7px;
                left: 10px;
                display: inline-block;
                width: 435px;
          }
          .rectangleParent {
                position: absolute;
                top: 831px;
                left: 492px;
                width: 455px;
                height: 78px;
                text-align: center;
                font-size: 32px;
                color: #b21414;
          }
          .progress100 {
                position: absolute;
                top: 300px;
                left: 257px;
                font-size: 24px;
          }
          .completedCampaignsItem {
                position: absolute;
                top: 367px;
                left: 248px;
                border-radius: 25px 35px 25px 25px;
                background-color: #fff;
                width: 444px;
                height: 428px;
          }
          .booksForBright {
                position: absolute;
                top: 211px;
                left: 248px;
          }
          .thanksToYour {
                margin: 0;
          }
          .thanksToYourContainer {
                position: absolute;
                top: 398px;
                left: 276px;
                font-size: 20px;
                font-family: Verdana;
                display: inline-block;
                width: 387px;
          }
          .thankYouFor {
                position: absolute;
                top: 658px;
                left: 830px;
                font-size: 20px;
                text-align: center;
                display: inline-block;
                width: 254px;
          }
          .completedCampaignsInner {
                position: absolute;
                top: 315px;
                left: 438px;
                border-radius: 5px;
                background-color: #5ba626;
                border: 1px solid #fff;
                box-sizing: border-box;
                width: 187px;
                height: 19px;
          }
          .img67811Icon {
                position: absolute;
                top: 367px;
                left: 720px;
                border-radius: 35px;
                width: 473px;
                height: 277px;
                object-fit: cover;
          }
          .icon {
                position: absolute;
                top: -47px;
                left: 974px;
                width: 563px;
                height: 465px;
                object-fit: cover;
          }
          .icon1 {
                position: absolute;
                top: 857px;
                left: 1271px;
                width: 169px;
                height: 167.3px;
                object-fit: contain;
          }
          .icon2 {
                position: absolute;
                top: 892px;
                left: 974px;
                width: 349px;
                height: 104px;
                object-fit: cover;
          }
          .rectangleDiv {
                position: absolute;
                top: 233px;
                left: 893px;
                border-radius: 25px;
                background-color: #b5e691;
                border: 1px solid #000;
                box-sizing: border-box;
                width: 290px;
                height: 50px;
          }
          .goalAchieved500 {
                position: absolute;
                top: 243px;
                left: 912px;
                font-size: 24px;
                font-family: Verdana;
                text-align: center;
          }
          .completedCampaigns {
                width: 100%;
                position: relative;
                background-color: #fff;
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 48px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>