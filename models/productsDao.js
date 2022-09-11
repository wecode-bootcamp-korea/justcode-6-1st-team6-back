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
const productlist = async () => {
  console.log("load productlist")
  const productslist = await myDataSource.query(
    `SELECT 
    products.id,products.name,products.price, products.rating,
    photos as photos FROM products
    LEFT JOIN photos ON products.id = photos.product_id
    GROUP BY products.id`
  )
  return productslist
}

//product find from id
const product = async (product_id) => {
  console.log("load product : " + product_id)
  const product = await myDataSource.query(
    `SELECT 
    products.id,products.name,products.info,products.price,
    products.rating,products.temperature,
    JSON_ARRAYAGG(photos)as photos, 
    JSON_ARRAYAGG(allerge)as allerges FROM products
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

const productSet = async (start, many, sort, onoff, flavor, category, way, max, min) => {
  console.log("load productSet")
  const productslist = await myDataSource.query(
    `SELECT 
    products.id,products.name,products.price, products.rating, 
    photos as photos,
    JSON_ARRAYAGG(onoff) as onoff,
    JSON_ARRAYAGG(taste) as flavor,
    JSON_ARRAYAGG(categories) as categories FROM products
    LEFT JOIN (SELECT product_id,MIN(photos)as photos FROM photos GROUP BY product_id)as photos ON products.id = photos.product_id
    LEFT JOIN onoff ON products.id = onoff.product_id
    LEFT JOIN taste ON products.id = taste.product_id
    LEFT JOIN categories ON products.id = categories.product_id
    WHERE 1=1 AND (((?='onoff')AND(onoff=onoff))OR(onoff.onoff=?))
    AND (((?='flavor')AND(taste=taste))OR(taste.taste=?))
    AND (((?='category')AND(categories=categories))OR(categories.categories=?))
    AND (price BETWEEN ? AND ?)
    GROUP BY products.id
    ORDER BY CASE ? WHEN 'updown' THEN (
        CASE ?  WHEN 'bestselling' then rating
        WHEN 'datetoold' then created_at
        WHEN 'highestprice' then price END ) END DESC,
      CASE ? WHEN 'downup' THEN (
        CASE ?  WHEN 'datetonew' then created_at
        WHEN 'lowestprice' then price END ) END ASC
    LIMIT ?,?
      `,
    [onoff, onoff, flavor, flavor, category, category, min, max, way, sort, way, sort, start, many]
  )
  return productslist
}

module.exports = {
  productlist,
  productSet,
  product
}