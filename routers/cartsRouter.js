const express = require('express')
const {cart} = require('../controllers')

const router = express.Router();
router.get('/cart/:id',cart);

module.exports = router;