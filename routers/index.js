const express = require('express');
const router = express.Router();

const userRouter = require('./userRouter.js');
const loginRouter = require('./loginRouter.js');

router.use('/users', userRouter);
router.use('/login', loginRouter);

module.exports = router;
