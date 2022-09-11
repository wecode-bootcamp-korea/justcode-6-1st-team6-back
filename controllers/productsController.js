const { send } = require('process');
const productsService = require('../services')

const product = async (req, res) => {
    console.log('product controller');
    const product_id = req.params;
    const id = product_id.id;
    if (!id) {
        res.status(400).json({ message: "없는 물건입니다" })
        return;
    }
    const products = await productsService.product(id)
    res.send(products)
}

const productlist = async (req, res) => {
    console.log('productlist controller');
    const productlists = await productsService.productlist()
    res.send(productlists)
}

const productSet = async (req, res) => {
    console.log('productSet controller')
    const query = req.query
    const trending = query.trending
    const popular = query.popular
    const max = query.max
    const min = query.min
    const sort = query.sort
    const onoff = query.onoff
    const flavor = query.flavor
    const category = query.category

    const params = req.params
    let start = params.id
    let many
    const productSets = await productsService.productSet(start, many, sort, onoff, flavor, category, max, min)

    if (trending != null) {
        start = 1
        many = Number(trending)
        const trandSet = await productsService.productSet(start, many, sort, onoff, flavor, category, max, min)
        res.send(trandSet)
    } else if (popular != null) {
        start = 2
        many = Number(popular)
        const popularSet = await productsService.productSet(start, many, sort, onoff, flavor, category, max, min)
        res.send(popularSet)
    } else {
        res.send(productSets)
    }
}


module.exports = {
    product,
    productSet,
    productlist
}