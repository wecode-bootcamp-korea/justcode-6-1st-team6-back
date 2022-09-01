const express = require('express');
const router = express.Router();

const userRouter = require('./userRouter.js');
const loginLogoutRouter = require('./loginLogoutRouter.js');

router.use('/users', userRouter);
router.use('/users', loginLogoutRouter);

module.exports = router;
