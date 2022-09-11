const userDao = require('../models/loginLogoutDao.js');

const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const loginUsingEmail = async (email, pwd) => {
  const user = await userDao.loginUsingEmail(email);

  if (user) {
    const isPwCorrect = bcrypt.compareSync(pwd, user.password);
    const token = jwt.sign({ userId: user.id }, process.env.SECRET_KEY, {
      expiresIn: '24h',
    });
    console.log(token);

    const userLoginData = {
      user: user,
      isPwCorrect: isPwCorrect,
      token: token,
    };
    return userLoginData;
  }
};

module.exports = {
  loginUsingEmail,
};
