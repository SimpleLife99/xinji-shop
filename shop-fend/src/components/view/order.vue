<template>
    <div class="order">
        <yd-navbar title="确认订单" fixed>
            <router-link to="" slot="left" @click.native="$router.back()">
                <yd-navbar-back-icon></yd-navbar-back-icon>
            </router-link>
        </yd-navbar>

        <div class="order-address flex-layout" @click="isShowProp = true">
            <p>添加收货地址</p>
            <yd-navbar-next-icon></yd-navbar-next-icon>
        </div>


        <yd-list theme="4">
            <yd-list-item v-for="n in 3">
                <img slot="img" src="https://i1.mifile.cn/a1/pms_1528718745.83129328!80x80.jpg">
                <span slot="title">红米6 全网通版</span>
                <yd-list-other slot="other">
                    <div>
                        <span class="demo-list-price"><em>¥</em>769</span>
                        <span class="demo-list-del-price">¥ 769</span>
                    </div>
                </yd-list-other>
            </yd-list-item>
        </yd-list>

        <div class="pay-list flex-layout" @click="isShowProp = true">
            <img src="../../../static/img/yue.png" alt="余额">
            <p>账户余额</p>
            <yd-switch v-model="defaults" disabled></yd-switch>
        </div>

        <div class="pay-list flex-layout" @click="isShowProp = true">
            <img class="alipay" src="../../../static/img/alipay.png" alt="支付宝">
            <p>支付宝</p>
            <span>维护</span>
        </div>

        <div class="pay-list flex-layout" @click="isShowProp = true">
            <img class="wxpay" src="../../../static/img/wxpay.png" alt="支付宝">
            <p>微信支付</p>
            <span>维护</span>
        </div>


        <div class="order-footer">
            <div class="footer-left">
                共1件 合计: 769.00
            </div>
            <div class="footer-right">
                去付款
            </div>
        </div>



        <yd-popup v-model="isShowProp" position="left" width="100%">
             <yd-navbar title="添加收货地址">
                <router-link to="" slot="left" @click.native="isShowProp = false">
                    <yd-navbar-back-icon></yd-navbar-back-icon>
                </router-link>
            </yd-navbar>


            <yd-cell-group>
                <yd-cell-item>
                    <span slot="left">收货人：</span>
                    <yd-input slot="right" required v-model="username" max="4" placeholder="真实姓名"></yd-input>
                </yd-cell-item>
                <yd-cell-item>
                    <span slot="left">手机号：</span>
                    <yd-input slot="right" required v-model="userphone" regex="mobile" placeholder="手机号"></yd-input>
                </yd-cell-item>
                <yd-cell-item arrow>
                    <span slot="left">所在地区：</span>
                    <input slot="right" type="text" @click.stop="show1 = true" v-model="model1" readonly placeholder="请选择收货地址">
                </yd-cell-item>
                <yd-cityselect v-model="show1" :callback="result1" :items="district"></yd-cityselect>

                <yd-cell-item>
                    <yd-textarea slot="right" placeholder="详细地址" maxlength="100"></yd-textarea>
                </yd-cell-item>
            </yd-cell-group>


        </yd-popup>
    </div>
</template>

<script>
    import District from 'ydui-district/dist/jd_province_city_area_id';
    export default {
        data(){
            return {
                isShowProp: false,
                defaults: true,
                username: null,
                userphone: null,
                show1: false,
                model1: '',
                district: District
            }
        },
        methods: {
            result1(ret) {
               this.model1 = ret.itemName1 + ' ' + ret.itemName2 + ' ' + ret.itemName3;
            }
        },
        beforeRouteEnter(to, from, next) {
            next(vm => {
                vm.$parent.$data.showFooter = false;
                vm.$parent.$data.showNavBar = false;
            });
        },
    }
</script>

<style scoped>
@import url("../../assets/css/order.css");
</style>