const cartsService = require('../services')
//cart by id
const cart = async(req,res) => {
    console.log('cart controller');
    const user_id = req.params;
    const id = user_id.id;
    if(!id){
        res.status(400).json({message:"없는 유저ID입니다"})
        return;
    }
    const carts = await cartsService.cart(id)
    res.send(carts)
}
//cart post
const cartpost = async(req,res) => {
    console.log('cart post controller')
    const {token, product_id, num} = req.body
    if(!token||!product_id||!num){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const cartposts = await cartsService.cartpost(token,product_id,num)
    res.status(200).json({message:"success on cart post"})
}
//cart put
const cartput = async(req,res) => {
    console.log('fix cart controller')
    const {cart_id, num} = req.body
    if(!cart_id||!num){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const cartputs = await cartsService.cartput(cart_id,num)
    res.status(200).json({message:"success on fix cart"})
}

const cartdelete = async(req,res) => {
    console.log('delete cart controller')
    const id = req.params
    const cart_id = id.id
    if(!cart_id){
        res.status(400).json({message:"정보가 부족합니다"})
        return;
    }
    const cartdeletes = await cartsService.cartdelete(cart_id)
    res.status(200).json({message:"success on delete cart"})
}

module.exports = {
    cart,
    cartpost,
    cartput,
    cartdelete
}