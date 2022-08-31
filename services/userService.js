const userDao = require("../models/userDao");
const tokenKey = require("../token");

const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");

const createUser = async (user, email, pwd) => {
  console.log("service 1");

  const salt = bcrypt.genSaltSync(12);
  const hashedPw = bcrypt.hashSync(pwd, salt);
  const users = await userDao.createUser(user, email, hashedPw);
  console.log("service 2");

  return users;
};

const checkEmailDuplicate = async (email) => {
  const userEmail = await userDao.checkEmailDuplicate(email);
  return userEmail;
};

const loginUsingEmail = async (email, password) => {
  const user = await userDao.loginUsingEmail(email);

  if (user) {
    const isPwCorrect = bcrypt.compareSync(password, user.password);
    const token = jwt.sign({ userId: user.id }, tokenKey.secretKey);
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
  createUser,
  checkEmailDuplicate,
  loginUsingEmail,
};
