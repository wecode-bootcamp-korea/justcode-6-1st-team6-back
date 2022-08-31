const userDao = require('../models/userDao');

const bcrypt = require('bcryptjs');

const createUser = async (name, email, password) => {
  console.log('service 1');

  const salt = bcrypt.genSaltSync(12);
  const hashedPw = bcrypt.hashSync(password, salt);
  const users = await userDao.createUser(name, email, hashedPw);
  console.log('service 2');

  return users;
};

const checkEmailDuplicate = async email => {
  const userEmail = await userDao.checkEmailDuplicate(email);
  return userEmail;
};

module.exports = {
  createUser,
  checkEmailDuplicate,
};
