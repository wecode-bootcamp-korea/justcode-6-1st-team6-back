const express = require('express')
const {order} = require('../controllers')
const {orderList} = require('../controllers')

const router = express.Router();

router.post('/order',order);
router.get('/order/:id',orderList)

module.exports = router;