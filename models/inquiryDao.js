const { DataSource } = require('typeorm');

const myDataSource = new DataSource({
  type: process.env.TYPEORM_CONNECTION,
  host: process.env.TYPEORM_HOST,
  port: process.env.TYPEORM_PORT,
  username: process.env.TYPEORM_USERNAME,
  password: process.env.TYPEORM_PASSWORD,
  database: process.env.TYPEORM_DATABASE,
});

myDataSource
  .initialize()
  .then(() => {
    console.log('Data Source has been initialized!');
  })
  .catch(() => {
    console.log('Database initiate fail');
  });

const createInquiry = async (name, email, content) => {
  const inquiry = await myDataSource.query(
    `
      INSERT INTO inquiries( name, email, content)
      VALUES (?, ?, ?)
      `,
    [name, email, content]
  );
  return inquiry;
};

const userInquiry = async email => {
  const userInquiry = await myDataSource.query(
    `
    SELECT *
    FROM inquiries
    WHERE email = ?
    `,
    [email]
  );
  return userInquiry;
};

module.exports = {
  createInquiry,
  userInquiry,
};
