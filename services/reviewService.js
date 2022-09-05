const userDao = require('../models/reviewDao.js');

const createReview = async (
  name,
  email,
  rating,
  title,
  content,
  product_id
) => {
  const userReview = await userDao.createReview(
    name,
    email,
    rating,
    title,
    content,
    product_id
  );
  return userReview;
};

const productReview = async product_id => {
  const productReview = await userDao.productReview(product_id);
  return productReview;
};

module.exports = {
  createReview,
  productReview,
};
