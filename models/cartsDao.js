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
/*
const cartlist = async (req,res) => {
    console.log("load cartlist")
    const cartlist = await myDataSource.query(
        `SELECT
        carts.product_id,
        JSON_ARRAYAGG(name)as product_name, JSON_ARRAYAGG(photos)as product_photos,
        JSON_ARRAYAGG(price)as product_price, JSON_ARRAYAGG(carts.num)as num FROM carts
            LEFT JOIN (SELECT product_id,MAX(photos)as photos FROM photos GROUP BY product_id)as photos ON carts.product_id = photos.product_id
            LEFT JOIN products ON carts.product_id = products.id
            GROUP BY carts.user_id`
    )
    return cartlist
}
*/
//id cart
const cart = async (user_id) => {
    console.log("load cart :"+user_id)
    const cart = await myDataSource.query(
        `SELECT
        JSON_ARRAYAGG(carts.id)as cart_id,
        JSON_ARRAYAGG(carts.product_id)as product_id,
        JSON_ARRAYAGG(name)as product_name, JSON_ARRAYAGG(photos)as product_photos,
        JSON_ARRAYAGG(price)as product_price, JSON_ARRAYAGG(carts.num)as num FROM carts
            LEFT JOIN (SELECT product_id,MIN(photos)as photos FROM photos GROUP BY product_id)as photos ON carts.product_id = photos.product_id
            LEFT JOIN products ON carts.product_id = products.id
            WHERE user_id=?
            GROUP BY carts.user_id`,
            [user_id]
    )
    return cart
}
//cart post
const cartpost = async (user_id, product_id, num) => {
  console.log("post cart")
  const cartpost = await myDataSource.query(
    `INSERT INTO carts(user_id, product_id, num)
    VALUES(?,?,?)
    `,
    [user_id,product_id,num]
  )
  return cartpost
}
//cart put
const cartput = async (cart_id, num) => {
  console.log("fix cart")
  const cartput = await myDataSource.query(
    `UPDATE carts
    SET num = ?
    WHERE id = ?`,
    [num, cart_id]
  )
  return cartput
}

const cartdelete = async (cart_id) => {
  console.log('delete cart')
  const cartdelete = await myDataSource.query(
    `DELETE FROM carts
    WHERE id = ?`,
    [cart_id]
  )
  return cartdelete
}

module.exports = {
    //cartlist,
    cart,
    cartpost,
    cartput,
    cartdelete
}