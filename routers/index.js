const express = require('express');
const router = express.Router();

const productsRouter = require('./productsRouter')
const cartsRouter = require('./cartsRouter')

router.use(productsRouter);
router.use(cartsRouter);

module.exports = router;