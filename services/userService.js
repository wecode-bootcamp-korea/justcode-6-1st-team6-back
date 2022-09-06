const userDao = require('../models/userDao');

const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const createUser = async (user, email, pwd) => {
  console.log('service 1');

  const salt = bcrypt.genSaltSync(12);
  const hashedPw = bcrypt.hashSync(pwd, salt);
  const users = await userDao.createUser(user, email, hashedPw);
  console.log('service 2');

  return users;
};

const checkEmailDuplicate = async email => {
  const userEmail = await userDao.checkEmailDuplicate(email);
  return userEmail;
};

const sendUserName = async token => {
  const key = process.env.SECRET_KEY;
  const userId = jwt.verify(token, key);
  const id = userId.userId;
  console.log(id);
  const userName = await userDao.sendUserName(id);
  return userName;
};

module.exports = {
  createUser,
  checkEmailDuplicate,
  sendUserName,
};
