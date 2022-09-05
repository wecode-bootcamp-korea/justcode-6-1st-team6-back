const locationService = require('../services/locationService.js');

const getLocation = async (req, res) => {
  const location = await locationService.getLocation();
  res.status(200).json({ message: location });
};

module.exports = {
  getLocation,
};
