const config = {
    dev: {
        port: 3000, // 端口配置，网站上线服务器后改这个为 80端口
        ipAddress: "http://127.0.0.1",
        httpSize: "100mb",
        api: {
            success: 200, //网络请求成功
            error: 404,  // 网络请求失败
            CodeError: 500 // 服务器内部错误或者异常
        },
        // 公私钥地址
        rsa: {
            privateKey: "../config/rsa_private_key.pem",
            publicKey: "../config/rsa_public_key.pem",
        },
        // mysql 数据库连接信息
        mysql: {
            host: 'localhost',
            user: 'root',
            password: 'root',
            database: 'shop'
        },
        // redis 连接配置信息
        redis: {
            host: "127.0.0.1",
            port: "6379",
            timeout: 60
        },
        // 后端各api接口的sql语句
        sql: {
            shop: {
                index: "select * from shop_commodity ORDER BY id DESC limit ?,?",
                info: "select * from shop_commodity where id = ?",
                brand: "select * from shop_commodity where commodity_brand = ?"
            },
            order: {

            },
            user: {
                add: "insert into shop_user(user_name,user_pwd,user_nicname) value (?,?,?)",
                login: "select id,user_name,user_nicname,user_icons from shop_user where user_name = ? and user_pwd = ?"
            },
            cart: {
                add: "insert into shop_cart(commodity_id,user_id,cart_nums) value (?,?,1)",
                checkCart: "select * from shop_cart where commodity_id = ? and user_id = ?",
                selectCart: "SELECT shop_cart.cart_nums, shop_cart.id AS cid, shop_commodity.* FROM shop_cart ,shop_commodity WHERE shop_cart.commodity_id = shop_commodity.id AND shop_cart.user_id = ?",
                deleteCart: "delete from shop_cart where id = ?"

            }
        }
    }
}

module.exports = config