let myurl = window.location.href;
console.log(myurl);

let sp = myurl.split('/');
console.log(sp);

let valu = sp[sp.length-1];
console.log(valu);
// document.querySelector("#txt").innerHTML = valu;

let finalval = valu.split('.');
console.log(finalval[0]);



document.querySelector("#txt").innerHTML = finalval[0];