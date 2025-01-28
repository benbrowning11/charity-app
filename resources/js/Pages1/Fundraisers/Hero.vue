<template>
    <div :class="$style.hero">
          <div :class="$style.heroChild" />
          <div :class="$style.heroItem" />
          <div :class="$style.progress60">Progress: 60%</div>
          <div :class="$style.raisedOutOfContainer">
                <b>$3,000</b>
                <span> raised out of </span>
                <b>$5,000</b>
          </div>
          <div :class="$style.heroInner" />
          <div :class="$style.yourContributionDirectlyContainer">
                <p :class="$style.yourContributionDirectly">Your contribution directly impacts the lives of children by providing essential resources like Wi-Fi, books, and educational tools in underserved communities. Together, we can empower the next generation by opening doors to education, fostering hope, and inspiring change.</p>
                <p :class="$style.yourContributionDirectly">&nbsp;</p>
                <p :class="$style.yourContributionDirectly">
                      <b>Every dollar counts. Join us in making a tangible difference—one child, one teacher, one lesson at a time.</b>
                </p>
          </div>
          <div :class="$style.supportOurMission">Support Our Mission to Transform Lives</div>
          <div :class="$style.rectangleParent">
                <div :class="$style.groupChild" />
                <div :class="$style.donateToThe">Donate to the General Fund</div>
          </div>
          <div :class="$style.whyItMatters">Why It Matters</div>
          <img :class="$style.img27441Icon" alt="" src="IMG_2744 1.png" />
          <div :class="$style.generalFund">General Fund</div>
          <div :class="$style.rectangleDiv" />
          <div :class="$style.goal5000">Goal: $5,000</div>
          <div :class="$style.theGeneralFundContainer">
                <p :class="$style.yourContributionDirectly">The General Fund supports all aspects of our mission. Your contributions help us provide critical resources such as Wi-Fi access for online lessons, new books to foster a love of learning, and classroom supplies like stationery and teaching tools. Additionally, the fund supports teacher training programs, development of engaging lesson plans, and maintenance of digital platforms that connect educators with students globally.</p>
                <p :class="$style.yourContributionDirectly">&nbsp;</p>
                <p :class="$style.yourContributionDirectly">By donating, you ensure that we can respond swiftly to urgent needs—whether it’s setting up new online classes in remote areas, equipping schools with essential materials, or funding special projects that inspire and empower children to dream bigger.</p>
          </div>
          <div :class="$style.heroChild1" />
          <div :class="$style.heroChild2" />
          <img :class="$style.icon" alt="" src="Обводка 11.png" />
          <div :class="$style.heroChild3" />
          <img :class="$style.icon1" alt="" src="Обводка 10.png" />
          <div :class="$style.aboutUs">About Us</div>
          <div :class="$style.fundraisers">Fundraisers</div>
          <div :class="$style.theDiary">the Diary</div>
          <div :class="$style.ourNews">Our News</div>
          <div :class="$style.contactUs">Contact Us</div>
          <div :class="$style.parent">
                <img :class="$style.icon2" alt="" src="Земля 2.png" />
                <div :class="$style.groupItem" />
                <div :class="$style.ledu">LEDU</div>
          </div>
    </div>
</template>
<script lang="ts">
    import { defineComponent } from 'vue'
    
    
    export default defineComponent({
          name: "Hero"})</script><style  module>.heroChild {
          position: absolute;
          top: 196px;
          left: 739px;
          border-radius: 50px;
          background-color: #cfe9ff;
          width: 612px;
          height: 772px;
    }
          .heroItem {
                position: absolute;
                top: 903px;
                left: 1017px;
                border-radius: 5px;
                background-color: #fff;
                width: 253px;
                height: 19px;
          }
          .progress60 {
                position: absolute;
                top: 850px;
                left: 824px;
          }
          .raisedOutOfContainer {
                position: absolute;
                top: 903px;
                left: 1025px;
                font-size: 16px;
                font-family: Verdana;
          }
          .heroInner {
                position: absolute;
                top: 522px;
                left: 792px;
                border-radius: 0px 0px 25px 25px;
                background-color: #fff;
                width: 501px;
                height: 328px;
          }
          .yourContributionDirectly {
                margin: 0;
          }
          .yourContributionDirectlyContainer {
                position: absolute;
                top: 411px;
                left: 105px;
                display: inline-block;
                width: 546px;
                font-family: Verdana;
          }
          .supportOurMission {
                position: absolute;
                top: 172px;
                left: 105px;
                font-size: 64px;
                line-height: 70px;
                color: #b21414;
                display: inline-block;
                width: 608px;
          }
          .groupChild {
                position: absolute;
                top: 0px;
                left: 0px;
                border-radius: 39.5px;
                background-color: #b21414;
                border: 1px solid #000;
                box-sizing: border-box;
                width: 514px;
                height: 78px;
          }
          .donateToThe {
                position: absolute;
                top: 7px;
                left: 37px;
          }
          .rectangleParent {
                position: absolute;
                top: 815px;
                left: 105px;
                width: 514px;
                height: 78px;
                text-align: center;
                font-size: 32px;
                color: #fff;
          }
          .whyItMatters {
                position: absolute;
                top: 538px;
                left: 944px;
          }
          .img27441Icon {
                position: absolute;
                top: 304px;
                left: 792px;
                border-radius: 25px 25px 0px 0px;
                width: 501px;
                height: 218px;
                object-fit: cover;
          }
          .generalFund {
                position: absolute;
                top: 204px;
                left: 782px;
                font-size: 48px;
          }
          .rectangleDiv {
                position: absolute;
                top: 227px;
                left: 1106px;
                border-radius: 25px;
                background-color: #fff;
                border: 1px solid #000;
                box-sizing: border-box;
                width: 210px;
                height: 50px;
          }
          .goal5000 {
                position: absolute;
                top: 237px;
                left: 1131px;
                font-family: Verdana;
                text-align: center;
          }
          .theGeneralFundContainer {
                position: absolute;
                top: 601px;
                left: 813px;
                font-size: 14px;
                font-family: Verdana;
                text-align: center;
                display: inline-block;
                width: 459px;
          }
          .heroChild1 {
                position: absolute;
                top: 903px;
                left: 819px;
                border-radius: 5px 0px 0px 5px;
                background-color: #5ba626;
                border: 1px solid #fff;
                box-sizing: border-box;
                width: 108px;
                height: 19px;
          }
          .heroChild2 {
                position: absolute;
                top: 903px;
                left: 927px;
                border-radius: 0px 5px 5px 0px;
                background-color: #d9d9d9;
                border: 1px solid #fff;
                box-sizing: border-box;
                width: 86px;
                height: 19px;
          }
          .icon {
                position: absolute;
                top: 256.74px;
                left: 753.54px;
                width: 375.9px;
                height: 42.5px;
                object-fit: contain;
          }
          .heroChild3 {
                position: absolute;
                top: -173px;
                left: 239px;
                border-radius: 50px;
                background-color: #cfe9ff;
                width: 962px;
                height: 263px;
          }
          .icon1 {
                position: absolute;
                top: 47px;
                left: 434px;
                width: 185px;
                height: 28px;
                object-fit: cover;
          }
          .aboutUs {
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
          .icon2 {
                position: absolute;
                top: 0px;
                left: 0px;
                width: 193px;
                height: 189px;
                object-fit: cover;
          }
          .groupItem {
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
                height: 1024px;
                overflow: hidden;
                text-align: left;
                font-size: 24px;
                color: #000;
                font-family: 'Gloria Hallelujah';
          }
    
    </style>