const productsDao = require('../models/productsDao')

const product = async (id) => {
    console.log("productsService")
    const product = await productsDao.product(id);
    return product
}

module.exports = {
    product
}