const cartsService = require('../services')
//cart by id
const cart = async(req,res) => {
    console.log('cart controller');
    const token = req.params;
    const id = token.id;
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
    const {token, cart_id, num} = req.body
    if(!cart_id){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const cartss= await cartsService.cartput(cart_id,num)
    if(num==0){
        console.log("put delete")
        await cartsService.cartdelete(cart_id)
    }
    const carts = await cartsService.cart(token)
    res.send(carts)
}

const cartdelete = async(req,res) => {
    console.log('delete cart controller')
    const {token, cart_id} = req.body
    if(!cart_id){
        res.status(400).json({message:"정보가 부족합니다"})
        return;
    }
    const cartdeletes = await cartsService.cartdelete(cart_id)
    
    const carts = await cartsService.cart(token)
    res.send(carts)
}

module.exports = {
    cart,
    cartpost,
    cartput,
    cartdelete
}