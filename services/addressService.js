const addressDao = require('../models/addressDao.js');

const createAddress = async (address, user_id) => {
  const address = await addressDao.createAddress(address, user_id);
  return address;
};

module.exports = {
  createAddress,
};
