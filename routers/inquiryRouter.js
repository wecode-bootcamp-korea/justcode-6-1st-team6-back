const express = require('express');
const inquiryController = require('../controllers/inquiryController.js');

const router = express.Router();

router.post('', inquiryController.createInquiry);
router.post('/users', inquiryController.userInquiry);

module.exports = router;
