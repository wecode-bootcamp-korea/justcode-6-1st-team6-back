const express = require('express');
const router = express.Router();

const productsRouter = require('./productsRouter')
const cartsRouter = require('./cartsRouter')
const orderRouter = require('./orderRouter')

router.use(productsRouter);
router.use(cartsRouter);
router.use(orderRouter);

module.exports = router;