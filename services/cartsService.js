const cartsDao = require('../models/cartsDao')
const jwt = require('jsonwebtoken')
const dotenv = require('dotenv')
dotenv.config()

const cart = async (id) => {
    console.log("cart Servics")
    const cart = await cartsDao.cart(id);
    return cart
}

const cartpost = async (token, product_id, num) => {
    console.log("post cart service")
    const key = process.env.SECRET_KEY
    const token_id = jwt.verify(token,key)
    const id = token_id.userId
    console.log(id)

    const cart = await cartsDao.cart(id);
    if (cart[0]==null) {
        const cartpost = await cartsDao.cartpost(id, product_id, num)
        return cartpost
    } else {
        const cart_a = cart[0]
        const a_product_id = cart_a.product_id
        const a_num = cart_a.num
        const a_id = cart_a.cart_id

        let fix_product_id = a_product_id.slice(1, (a_product_id.length - 1)).split(',')
        let fix_num = a_num.slice(1, (a_num.length - 1)).split(',')
        let fix_id = a_id.slice(1, (a_id.length - 1)).split(',')

        for (let i = 0; i < fix_product_id.length; i++) {
            if (fix_product_id[i] == product_id) {
                let number = Number(fix_num[i])
                const cartput = await cartsDao.cartput(fix_id[i], number + num)
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