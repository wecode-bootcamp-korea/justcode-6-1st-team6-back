const reviewDao = require('../models/reviewDao.js');

const createReview = async (
  name,
  email,
  rating,
  title,
  content,
  product_id
) => {
  const userReview = await reviewDao.createReview(
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
  const productReview = await reviewDao.productReview(product_id);
  return productReview;
};

const reviewDelete = async (id,email) => {
  const reviewDelete = await reviewDao.reviewDelete(id,email);
  return reviewDelete
}

module.exports = {
  createReview,
  productReview,
  reviewDelete
};
