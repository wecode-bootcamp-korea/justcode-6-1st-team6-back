const express = require('express');
const router = express.Router();

const userRouter = require('./userRouter.js');
const loginLogoutRouter = require('./loginLogoutRouter.js');
const reviewRouter = require('./reviewRouter.js');
const inquiryRouter = require('./inquiryRouter.js');

router.use('/users', userRouter);
router.use('/users', loginLogoutRouter);
router.use('/reviews', reviewRouter);
router.use('/inquiry', inquiryRouter);

module.exports = router;
