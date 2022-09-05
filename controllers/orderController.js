const orderService = require('../services')
//order
const order = async(req,res) => {
    console.log('order controller')
    const {user_id, message} = req.body;
    if(!user_id||!message){
        res.status(400).json({message:"데이터가 부족합니다"})
        return;
    }
    const orders = await orderService.order(user_id,message)
    res.status(200).json({message:"success on order"})
}

module.exports ={
    order
}