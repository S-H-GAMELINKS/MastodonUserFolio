import Vue from 'vue'
import ElementUI from 'element-ui'
import locale from 'element-ui/lib/locale/lang/ja'
import TootSlide from './components/TootSlide.vue'

Vue.use(ElementUI, { locale })

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('toot_slide'))
  const toot_slide = new Vue({
    el,
    render: h => h(TootSlide)
  })

  console.log(toot_slide)
})
