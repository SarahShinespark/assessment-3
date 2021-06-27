// Shopping Cart logic

// TO SEED LOCAL STORAGE, uncomment lines 4-11
// let list = []
// list.push({'Frying Pan':'20'})
// list.push({'Baby Shark':'4'})
// list.push({'Nintendo Switch':'300'})
// list.push({'Nintendo Switch':'300'})
// list.push({'Mini Fridge':'30'})
// list.push({'Journal':'2.5'})
// localStorage.setItem('key', JSON.stringify(list));

// Retrieve localStorage into object "list"
let list = JSON.parse(localStorage.getItem('key'));
if(!list) list = []

// countList: Object with the occurrence of each item name
//    {"Soda Can": 1}, {"Diaper": 3}
let countList = {}
for( let x = 0; x < list.length; x++){
    let name = Object.keys(list[x])
    if(name in countList){
       countList[name] += 1
    }
    else{
        countList[name] = 1
    }
}

// Draw HTML for shopping cart table
// Yeah it's rough, I decided it was easier to regenerate the table each load.
let output = ``
let row = 1
for( let name in countList){
    let count = countList[name]
    let price = getPrice(name, list)
    // console.log("Name ", name, "Price $", price, "Count ", count)
    output += `<tr><th scope="row">${row}</th><td>${name}</td><td>$${price.toFixed(2)}</td><td>${count}</td></tr>`
    row += 1
}
// "Total" with sum of items
output += `<tr class="text-primary"><th scope="row"></th><td>Total</td><td>$${getTotal(countList,list).toFixed(2)}</td><td></td></tr>`
document.getElementById("checkout").innerHTML = output


// Find and return an item's price
// name: The item (string)
// list: The JSON
// multiple: how many of the item
function getPrice(name, list, multiple = 1){
    for (let x = 0; x < list.length; x++){
        if(name == Object.keys(list[x])) return Number(Object.values(list[x])) * multiple
    }
}

// Find and return the total price
// countList: Object with the occurrence of each item name
// list: the JSON
function getTotal(countList, list){
    let total = 0
    for( let name in countList){
        let count = countList[name]
        total += getPrice(name, list, count)
    }
    return total
}


function emptyCart(){
    // Nice    
    localStorage.clear()
    location.reload()
}
