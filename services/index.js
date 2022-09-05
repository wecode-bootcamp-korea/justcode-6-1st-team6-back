const {product} = require('./productsService')
const {cart} = require('./cartsService')
const {cartpost} = require('./cartsService')
const {cartput} = require('./cartsService')
const {cartdelete} = require('./cartsService')
const {order} = require('./orderService')

module.exports = {
    product,
    cart,
    cartpost,
    cartput,
    cartdelete,
    order
}