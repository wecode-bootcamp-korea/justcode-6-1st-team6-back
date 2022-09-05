const productsService = require('../services')

const product = async(req,res) => {
    console.log('product controller');
    const product_id = req.params;
    const id = product_id.id;

    if(!id){
        res.status(400).json({message:"없는 물건입니다"})
        return;
    }

    const products = await productsService.product(id)
    
    res.send(products)
}
module.exports = {
    product
}