import Vue from 'vue'
import ElementUI from 'element-ui'
import locale from 'element-ui/lib/locale/lang/ja'
import Account from './components/Account.vue'

Vue.use(ElementUI, { locale })

document.addEventListener('DOMContentLoaded', () => {
  const el = document.body.appendChild(document.createElement('account'))
  const account = new Vue({
    el,
    render: h => h(Account)
  })

  console.log(account)
})