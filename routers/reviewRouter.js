const express = require('express');
const reviewController = require('../controllers/reviewController.js');

const router = express.Router();

router.post('/product', reviewController.createReview);
router.post('', reviewController.productReview);

module.exports = router;
