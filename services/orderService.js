const orderDao = require('../models/orderDao')
const cartsDao = require('../models/cartsDao')
const jwt = require('jsonwebtoken')
const dotenv = require('dotenv')
dotenv.config()

const order = async (token,message,address) => {
    console.log("order service")
    const key = process.env.SECRET_KEY
    const token_id = jwt.verify(token,key)
    const user_id = token_id.userId

    const cart = await cartsDao.cart(user_id);
    const cart_a = cart[0]
    const product_id = cart_a.product_id
    const num = cart_a.num
    const price = cart_a.product_price
    
    let fix_num = num.slice(1,(num.length-1)).split(',')
    let fix_price = price.slice(1,price.length-1).split(',')

    let total_price = 0;
    for(let i=0; i<fix_price.length;i++){
        total_price = total_price + (Number(fix_num[i])*Number(fix_price[i]))
    }
    const cart_id = cart_a.cart_id
    let fix_cart_id = cart_id.slice(1,(num.length-1)).split(',')
    for(let j=0; j<fix_cart_id.length;j++){
        cartsDao.cartdelete(Number(fix_cart_id[j]))
    }
    const order = await orderDao.order(user_id,product_id,num,price,total_price,message,address)
    return order
}

module.exports = {
    order
}