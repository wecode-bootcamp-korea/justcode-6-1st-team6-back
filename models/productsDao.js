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
    console.log('products Data Source has been initialized!');
  })
  .catch(() => {
    console.log('Database initiate fail');
  });


//all products list
const productslist = async(req,res) => {
  console.log("load productlist")
  const productslist = await myDataSource.query(
    `SELECT 
    products.id,products.name,products.info,products.price,
    products.rating,products.temperature,products.categories,products.nutrition,
    JSON_ARRAYAGG(photos)as photos,JSON_ARRAYAGG(allerge)as allerges FROM products
    LEFT JOIN photos ON products.id = photos.product_id
    LEFT JOIN products_allergies ON products.id = products_allergies.product_id
    LEFT JOIN allergies ON products_allergies.allergies_id = allergies.id
    GROUP BY products.id`
  )
  return productslist
}

//product find from id
const product = async(product_id) => {
  console.log("load product : "+product_id)
  const product = await myDataSource.query(
    `SELECT 
    products.id,products.name,products.info,products.price,
    products.rating,products.temperature,products.categories,products.nutrition,
    JSON_ARRAYAGG(photos)as photos,JSON_ARRAYAGG(allerge)as allerges FROM products
    LEFT JOIN photos ON products.id = photos.product_id
    LEFT JOIN products_allergies ON products.id = products_allergies.product_id
    LEFT JOIN allergies ON products_allergies.allergies_id = allergies.id
    WHERE products.id=?
    GROUP BY products.id
    `,
    [product_id]
  )
  return product
}

module.exports = {
  productslist,
  product
}