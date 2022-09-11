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

const createReview = async (
  name,
  email,
  rating,
  title,
  content,
  product_id
) => {
  const reviews = await myDataSource.query(
    `
    INSERT INTO REVIEWS( name, email, rating, title, content, product_id)
    VALUES (?, ?, ?, ?, ?, ?)
    `,
    [name, email, rating, title, content, product_id]
  );
  return reviews;
};

const productReview = async product_id => {
  const productReview = await myDataSource.query(
    `
    SELECT 
      id,
      name, 
      email, 
      rating, 
      title, 
      content, 
      date_format(created_at, '%Y-%m-%d') as date
    FROM reviews
    WHERE reviews.product_id = ?
    `,
    [product_id]
  );
  return productReview;
};

const reviewDelete = async (id,email) => {
  console.log('delete cart')
  const reviewDelete = await myDataSource.query(
    `DELETE FROM reviews
    WHERE id=? AND email = ?`,
    [id,email]
  )
  return reviewDelete
}

module.exports = {
  createReview,
  productReview,
  reviewDelete
};
