const express = require('express');
const reviewController = require('../controllers/reviewController.js');

const router = express.Router();

router.post('', reviewController.createReview);
router.post('/product', reviewController.productReview);

module.exports = router;
