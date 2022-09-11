const { product } = require('./productsController')
const { productSet } = require('./productsController')
const { productlist } = require('./productsController')
const { cart } = require('./cartsController')
const { cartpost } = require('./cartsController')
const { cartput } = require('./cartsController')
const { cartdelete } = require('./cartsController')
const { order } = require('./orderController')
const { orderList} = require('./orderController')

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