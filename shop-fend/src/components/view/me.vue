<template>
    <div class="me">
        

        <v-header :title="userInfo.user_nicname" ></v-header>

        <yd-grids-group :rows="3">
            <yd-grids-item>
                <img slot="icon" src="../../../static/img/pay.png">
                <span slot="text">待付款</span>
            </yd-grids-item>
            <yd-grids-item>
                <img slot="icon" src="../../../static/img/order.png">
                <span slot="text">待收货</span>
            </yd-grids-item>
            <yd-grids-item>
                <img slot="icon" src="../../../static/img/setting.png">
                <span slot="text">退换货</span>
            </yd-grids-item>
        </yd-grids-group>
        <br>
        <div class="setting-list">
            <ul>
                <li>
                  <yd-icon class="icons-setting" name="question" size=".6rem" color="rgb(156, 156, 156)"></yd-icon>
                  <p>帮助中心</p>
                  <yd-navbar-next-icon></yd-navbar-next-icon>
                </li>
                <li>
                  <yd-icon class="icons-setting" name="phone2" size=".6rem" color="rgb(156, 156, 156)"></yd-icon>
                  <p>联系客服</p>
                  <yd-navbar-next-icon></yd-navbar-next-icon>
                </li>
                <li>
                  <yd-icon class="icons-setting" name="share1" size=".6rem" color="rgb(156, 156, 156)"></yd-icon>
                  <p>推荐分享</p>
                  <yd-navbar-next-icon></yd-navbar-next-icon>
                </li>
                <li>
                  <yd-icon class="icons-setting" name="setting" size=".6rem" color="rgb(156, 156, 156)"></yd-icon>
                  <p>设置</p>
                  <yd-navbar-next-icon></yd-navbar-next-icon>
                </li>
            </ul>
        </div>
    </div>
</template>

<script>
import UserHeader from "./../public/user-header";
export default {
  data() {
    return {
      userInfo: JSON.parse(localStorage.getItem("u"))
    };
  },
  beforeRouteEnter(to, from, next) {
    next(vm => {
      vm.$parent.$data.showNavBar = false;
    });
  },
  components: {
    "v-header": UserHeader
  }
};
</script>

<style scoped>
@import url("../../assets/css/me.css");
.index {
  padding: 0 0 1.3rem 0;
}
</style>