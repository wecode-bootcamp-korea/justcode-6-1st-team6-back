const cartsService = require('../services')

const cart = async(req,res) => {
    console.log('product controller');
    const user_id = req.params;
    const id = user_id.id;

    if(!id){
        res.status(400).json({message:"없는 유저ID입니다"})
        return;
    }

    const carts = await cartsService.cart(id)
    
    res.send(carts)
}
module.exports = {
    cart
}