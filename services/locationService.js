const { json } = require('stream/consumers');
const locationDao = require('../models/locationDao.js');

const getLocation = async () => {
  const location = await locationDao.getLocation();
  for (i = 0; i < location.length; i++) {
    location[i].latlng = JSON.parse(location[i].latlng);
  }

  return location;
};

module.exports = {
  getLocation,
};
