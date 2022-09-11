const express = require('express')
const { product } = require('../controllers')
const { productSet} = require('../controllers')

const router = express.Router();
router.get('/product/detail/:id', product);
//router.get('/product', productlist)
router.get('/product',productSet)
router.get('/shop',productSet)
router.get('/shop/:id',productSet)

module.exports = router;