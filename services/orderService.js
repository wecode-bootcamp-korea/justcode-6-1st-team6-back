const orderDao = require('../models/orderDao')
const cartsDao = require('../models/cartsDao')
const productsDao = require('../models/productsDao')
const jwt = require('jsonwebtoken')
const dotenv = require('dotenv')
dotenv.config()

const order = async (token, message, address) => {
    console.log("order service")
    const key = process.env.SECRET_KEY
    if (token == null) {
        return
    }
    console.log(jwt.verify(token, key))

    let token_id;
    if (jwt.verify(token, key).TokenExpiredError == 'jwt expired') {
        console.log('jwt expired')
        return
    } else {
        token_id = jwt.verify(token, key)
    }
    const user_id = token_id.userId

    const cart = await cartsDao.cart(user_id);
    console.log(cart[0])
    nums = JSON.parse(cart[0].num)
    num = cart[0].num
    prices = JSON.parse(cart[0].product_price)
    price = cart[0].product_price
    //product_ids = JSON.parse(cart[0].product_id)
    product_id = cart[0].product_id
    cart_ids = JSON.parse(cart[0].cart_id)
    cart_id = cart[0].cart_id

    let total_price = 0;
    for (let i = 0; i < prices.length; i++) {
        total_price = total_price + (nums[i] * prices[i])
    }
    if (total_price < 99) {
        total_price = total_price + 3.0;
    }

    for (let j = 0; j < cart_ids.length; j++) {
        cartsDao.cartdelete(cart_ids[j])
    }
    const order = await orderDao.order(user_id, product_id, num, price, total_price, message, address)
    return order
}

const orderList = async (token) => {
    console.log("order service")

    const key = process.env.SECRET_KEY

    let token_id;
    console.log(jwt.verify(token, key))
    if (jwt.verify(token, key).TokenExpiredError == 'jwt expired') {
        console.log('jwt expired')
        return
    } else {
        token_id = jwt.verify(token, key)
    }

    const user_id = token_id.userId

    const orderList = await orderDao.orderList(user_id)
    if (orderList[0] == null) {
        return orderList
    }
    for (let i = 0; i < orderList.length; i++) {
        orderList[i].num = JSON.parse(orderList[i].num)
        orderList[i].price = JSON.parse(orderList[i].price)
        orderList[i].product_id = JSON.parse(orderList[i].product_id)
    }
    console.log(orderList)
    return orderList
}

module.exports = {
    order,
    orderList
}