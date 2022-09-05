const express = require('express')
const {product} = require('../controllers')

const router = express.Router();
router.get('/product/:id',product);

module.exports = router;