const orderService = require('../services')
//order
const order = async(req,res) => {
    console.log('order controller')
    const {token, message, address} = req.body;
    if(!token||!address){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const orders = await orderService.order(token,message,address)
    res.status(200).json({message:"success on order"})
}

const orderList = async(req,res) => {
    console.log('orderList controller')
    const token = req.params.id
    if(!token){
        res.status(400).json({message:"로그인 확인"})
        return
    }
    const orderLists = await orderService.orderList(token)
    res.send(orderLists)
}

module.exports ={
    order,
    orderList
}