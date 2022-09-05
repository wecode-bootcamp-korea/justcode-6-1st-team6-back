const locationDao = require('../models/locationDao.js');

const getLocation = async () => {
  const location = await locationDao.getLocation();
  return location;
};

module.exports = {
  getLocation,
};
