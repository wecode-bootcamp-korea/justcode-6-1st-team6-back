const inquiryDao = require('../models/inquiryDao.js');

const createInquiry = async (name, email, content) => {
  const inquiry = await inquiryDao.createInquiry(name, email, content);
  return inquiry;
};

const userInquiry = async email => {
  const userInquiry = await inquiryDao.userInquiry(email);
  return userInquiry;
};

module.exports = {
  createInquiry,
  userInquiry,
};
