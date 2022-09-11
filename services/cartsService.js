const cartsDao = require('../models/cartsDao')
const jwt = require('jsonwebtoken')
const dotenv = require('dotenv')
dotenv.config()

const cart = async (id) => {
    console.log("cart Servics")
    const key = process.env.SECRET_KEY
    if(id==null){
        return null
    }
    console.log(jwt.verify(id,key))
    const token_id = jwt.verify(id,key)
    const token = token_id.userId
    const cart = await cartsDao.cart(token);
    if(cart[0]==null){
        return cart
    }
    cart[0].cart_id = JSON.parse(cart[0].cart_id)
    cart[0].product_id = JSON.parse(cart[0].product_id)
    cart[0].product_name = JSON.parse(cart[0].product_name)
    cart[0].product_photos = JSON.parse(cart[0].product_photos)
    cart[0].product_price = JSON.parse(cart[0].product_price)
    cart[0].num = JSON.parse(cart[0].num)
    return cart
}

const cartpost = async (token, product_id, num) => {
    console.log("post cart service")
    const key = process.env.SECRET_KEY
    const token_id = jwt.verify(token,key)
    const id = token_id.userId
    const cart = await cartsDao.cart(id);

    if (cart[0]==null) {
        const cartpost = await cartsDao.cartpost(id, product_id, num)
        return cartpost
    } else {
        let product_set = JSON.parse(cart[0].product_id)
        let number_set = JSON.parse(cart[0].num)
        let cart_set = JSON.parse(cart[0].cart_id)

        for (let i = 0; i < product_set.length; i++) {
            if (product_set[i] == product_id) {
                let number = number_set[i]
                const cartput = await cartsDao.cartput(cart_set[i], number + num)
                return cartput
            }
        }
        const cartpost = await cartsDao.cartpost(id, product_id, num)
        return cartpost
    }
}

const cartput = async (cart_id, num) => {
    console.log('fix cart service')
    const cartput = await cartsDao.cartput(cart_id, num)
    return cartput
}

const cartdelete = async (cart_id) => {
    console.log('delete cart service')
    const cartdelete = await cartsDao.cartdelete(cart_id)
    return cartdelete
}


module.exports = {
    cart,
    cartpost,
    cartput,
    cartdelete
}