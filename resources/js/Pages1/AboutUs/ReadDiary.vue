<template>
    <div :class="$style.desktop33">
          <div :class="$style.prakashsStoryIs">Prakash's story is just one of many. Discover how small acts of kindness and dedication are transforming lives around the world.</div>
                <div :class="$style.desktop33Child" />
                <div :class="$style.readTheDiary">Read the Diary</div>
                <img :class="$style.icon" alt="" src="Стрелки белые 2.png" />
          </div>
          </template>
          <script lang="ts">
                import { defineComponent } from 'vue'
                
                
                export default defineComponent({
                      name: "Desktop"})</script><style  module>.prakashsStoryIs {
                      position: absolute;
                      top: 160px;
                      left: 273px;
                      line-height: 70px;
                      display: inline-block;
                      width: 894px;
                }
                      .desktop33Child {
                            position: absolute;
                            top: 543px;
                            left: 356px;
                            border-radius: 70px;
                            background-color: #b21414;
                            width: 728px;
                            height: 146px;
                      }
                      .readTheDiary {
                            position: absolute;
                            top: 568px;
                            left: 442px;
                            color: #fff;
                            text-align: left;
                      }
                      .icon {
                            position: absolute;
                            top: 512px;
                            left: 804px;
                            width: 260px;
                            height: 192px;
                            object-fit: cover;
                      }
                      .desktop33 {
                            width: 100%;
                            position: relative;
                            background-color: #fff;
                            height: 1024px;
                            overflow: hidden;
                            text-align: center;
                            font-size: 48px;
                            color: #000;
                            font-family: 'Gloria Hallelujah';
                      }
                
                </style>