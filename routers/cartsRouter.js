const express = require('express')
const {cart} = require('../controllers')
const {cartpost} = require('../controllers')
const {cartput} = require('../controllers')
const {cartdelete} = require('../controllers')

const router = express.Router();
router.get('/cart/:id',cart);
router.post('/cart',cartpost);
router.put('/cart',cartput)
router.delete('/cart',cartdelete)

module.exports = router;