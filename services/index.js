const { product } = require('./productsService')
const { productSet } = require('./productsService')
const { productlist } = require('./productsService')
const { cart } = require('./cartsService')
const { cartpost } = require('./cartsService')
const { cartput } = require('./cartsService')
const { cartdelete } = require('./cartsService')
const { order } = require('./orderService')
const { orderList } = require('./orderService')

module.exports = {
    product,
    productSet,
    productlist,
    cart,
    cartpost,
    cartput,
    cartdelete,
    order,
    orderList
}