<template>
<div id="slide">
  <slider animation="fade" height="800px" width="300">
    <p style="line-height: 600px; font-size: 5rem; text-align: center;" v-if="!list.length">Loading...</p>
    <slider-item v-for="(i, key, index) in list" :key="index">
        <p style="line-height: 680px; font-size: 5rem; text-align: center;">
            <iframe :src="i.uri.replace('/activity', '') + '/embed'"  class="mastodon-embed" style="max-width: 100%; border: 0" height="800" width="400"/>
        </p>
    </slider-item>
  </slider>
</div>    
</template>

<style>
p {
  margin: 0;
}
</style>

<script>
import { Slider, SliderItem } from 'vue-easy-slider'

export default {
    data: function () {
        return {
            list: toots
        }
    },
    mounted () {
        setTimeout(() => {
            this.list
        }, 1000)
    },

    components: {
        'Slider': Slider,
        'SliderItem': SliderItem
    }
}
</script>