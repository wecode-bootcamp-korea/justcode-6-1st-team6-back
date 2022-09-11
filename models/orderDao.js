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
    console.log('order Data Source has been initialized!');
  })
  .catch(() => {
    console.log('Database initiate fail');
  });

const order = async (user_id,product_id,num,price,total_price,message,address) => {
    console.log("order in")
    const order = await myDataSource.query(
        `INSERT INTO orders(user_id, product_id, num, price, total_price, message, address)
        VALUES(?,?,?,?,?,?,?)`,
        [user_id, product_id, num, price, total_price, message, address]
    )
    return order
}

const orderList = async (user_id) => {
  console.log("order List")
  const orderList = await myDataSource.query(
    `SELECT
    orders.product_id,orders.num,orders.price,orders.total_price,
    orders.message,orders.address,orders.created_at FROM orders
    WHERE orders.user_id = ?
    `,
    [user_id]
  )
  return orderList
}
module.exports = {
    order,
    orderList
}