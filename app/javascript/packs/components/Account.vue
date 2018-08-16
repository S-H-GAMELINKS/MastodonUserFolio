<template>
<div id="account">
    <img :src="account.avatar"/>
    <p>{{account.display_name}}</p>
    <div v-html="account.note"/>
    <p> つぶやき数 : {{account.statuses_count}}  フォロー数 : {{account.following_count}} フォロワー数 : {{account.followers_count}}</p>
    <div v-for="(a, key, index) in account.fields" :key="index">
        {{a.name}} : <span v-html="a.value"/>
    </div>
    <div class="btn btn-primary">
        <a :href="follow_url">フォロー</a>
    </div>
</div>    
</template>

<style>
p {
  margin: 0;
}

.absolute {
    position: absolute;
    left: 30px;
    top: 0px;
}
</style>

<script>

console.log(url)

export default {
    data: function () {
        return {
            account: user,
            follow_url: url
        }
    }
}
</script>