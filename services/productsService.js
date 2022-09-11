const productsDao = require('../models/productsDao')

const product = async (id) => {
    console.log("productsService")
    const product = await productsDao.product(id);
    if(product[0]==null){
        return product
    }
    product[0].photos = [...new Set(JSON.parse(product[0].photos))]
    product[0].allerges = [...new Set(JSON.parse(product[0].allerges))]
    const products = product[0]
    return products
}

const productlist = async () => {
    console.log("productlist service")
    const productlist = await productsDao.productlist()
    return productlist
}

const productSet = async (start,many,sort,onoff,flavor,category,max,min) => {
    console.log("productSet service")
    if(start==null||start==''||start==false||start==NaN){
        start=0
    }else{
        start=(start-1)*20
    }
    if(many==null||many==''||many==false||many==NaN){
        many=20
    }
    if(onoff==null||onoff==''||onoff==false||onoff==NaN){
        onoff='onoff'
    }
    if(flavor==null||flavor==''||flavor==false||flavor==NaN){
        flavor='flavor'
    }
    if(category==null||category==''||category==false||category==NaN){
        category='category'
    }
    let way;
    if(sort=='bestselling'||sort=='datetoold'||sort=='highestprice'){
        way = 'updown'
    } else {
        way = 'downup'
    }
    if(max==null||max==''||max==false||max==NaN){
        max = 100000
    }
    if(min==null||min==''||min==false||min==NaN){
        min=0
    }
    const productSet = await productsDao.productSet(start,many,sort,onoff,flavor,category,way,max,min)
    if(productSet[0]==null){
        return productSet
    }
    for(let i=0;i<productSet.length;i++){
        productSet[i].onoff = [...new Set(JSON.parse(productSet[i].onoff))]
        productSet[i].flavor = [...new Set(JSON.parse(productSet[i].flavor))]
        productSet[i].categories = [...new Set(JSON.parse(productSet[i].categories))]
    }
    return productSet
}

module.exports = {
    product,
    productSet,
    productlist
}