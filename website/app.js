
let list = JSON.parse(localStorage.getItem('key'));
// list.push({'Frying Pan':'20'})
// list.push({'Baby Shark':'4'})
// localStorage.setItem('key', JSON.stringify(list));

for( let x = 0; x < list.length; x++){
    console.log(getItemString(list[x]))
}

function getItemString( item){
    let out = ""
    out += Object.keys(item) + "\t$"
    out += Object.values(item) + "\n"
    return out
}

// Load the element's name/price and call addToCart()
let invoke = (event) => {
    let nameOfFunction = this[event.name];
    let arg1 = event.getAttribute('item-name');
    let arg2 = event.getAttribute('item-price');
    nameOfFunction(arg1, arg2)
    }
  
// Adds item to localStorage
function addToCart(name, price){
    console.log("Adding to cart: ", name, price)
    let tempList = {}
    tempList[name] = price
    list.push(tempList)
    localStorage.setItem('key', JSON.stringify(list));
}