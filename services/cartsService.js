const cartsDao = require('../models/cartsDao')

const cart = async (id) => {
    console.log("cartServics")
    const cart = await cartsDao.cart(id);
    return cart
}

module.exports = {
    cart
}