localStorage.clear()
let list = []
list.push({'Frying Pan':'20'})
list.push({'Baby Shark':'4'})
// console.log(JSON.stringify(list) + " before saving")
// localStorage.setItem('key', JSON.stringify(list));
// list = JSON.parse(localStorage.getItem('key'));
// console.log(JSON.stringify(list) + " after saving")
for( let x = 0; x < list.length; x++){
    console.log(getItemString(list[x]))
}

function getItemString( item){
    let out = ""
    out += Object.keys(item) + "\t$"
    out += Object.values(item) + "\n"
    return out
}