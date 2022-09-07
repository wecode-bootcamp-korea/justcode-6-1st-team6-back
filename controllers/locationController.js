const locationService = require('../services/locationService.js');

const getLocation = async (req, res) => {

  try {
    const location = await locationService.getLocation();
    res.status(200).json(location);
  } catch (err) {
    console.log(err);
    res.status(500).json({ message: 'error' });
  }

};

module.exports = {
  getLocation,
};
