const orderService = require('../services')
//order
const order = async(req,res) => {
    console.log('order controller')
    const {token, message, address} = req.body;
    if(!token||!message||!address){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const orders = await orderService.order(token,message,address)
    res.status(200).json({message:"success on order"})
}

module.exports ={
    order
}