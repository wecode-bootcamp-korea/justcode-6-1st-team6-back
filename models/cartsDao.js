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
    console.log('carts Data Source has been initialized!');
  })
  .catch(() => {
    console.log('Database initiate fail');
  });

//all carts list
const cartlist = async (req,res) => {
    console.log("load cartlist")
    const cartlist = await myDataSource.query(
        `SELECT
        carts.user_id,carts.product_id,
        JSON_ARRAYAGG(name)as product_name, JSON_ARRAYAGG(photos)as product_photos,
        JSON_ARRAYAGG(price)as product_price, JSON_ARRAYAGG(carts.num)as num FROM carts
            LEFT JOIN (SELECT product_id,MAX(photos)as photos FROM photos GROUP BY product_id)as photos ON carts.product_id = photos.product_id
            LEFT JOIN products ON carts.product_id = products.id
            GROUP BY carts.user_id`
    )
    return cartlist
}

//id cart
const cart = async (user_id) => {
    console.log("load cart :"+user_id)
    const cart = await myDataSource.query(
        `SELECT
        carts.user_id,carts.product_id,
        JSON_ARRAYAGG(name)as product_name, JSON_ARRAYAGG(photos)as product_photos,
        JSON_ARRAYAGG(price)as product_price, JSON_ARRAYAGG(carts.num)as num FROM carts
            LEFT JOIN (SELECT product_id,MAX(photos)as photos FROM photos GROUP BY product_id)as photos ON carts.product_id = photos.product_id
            LEFT JOIN products ON carts.product_id = products.id
            WHERE user_id=?
            GROUP BY carts.user_id`,
            [user_id]
    )
    return cart
}

module.exports = {
    cartlist,
    cart
}