const {product} = require('./productsController')
const {cart} = require('./cartsController')
const {cartpost} = require('./cartsController')
const {cartput} = require('./cartsController')
const {cartdelete} = require('./cartsController')
const {order} = require('./orderController')

module.exports = {
    product,
    cart,
    cartpost,
    cartput,
    cartdelete,
    order
}