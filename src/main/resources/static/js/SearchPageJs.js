/*!
* Start Bootstrap - Heroic Features v5.0.5 (https://startbootstrap.com/template/heroic-features)
* Copyright 2013-2022 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-heroic-features/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

//let double = n => n * 2;
//let double = function(n) { return n * 2 }과 거의 동일합니다.

//alert( double(3) ); // 6

//fetch("/searchbyfilter")
//	.then(res => res.json());

//const numbers = [1, 2, 3, 4, 5];
//console.log(numbers)
//numbers.forEach(e => console.log(e));


function myScript(){
var you = document.getElementById("selcettype");
var val = you.options[you.selectedIndex].value;
console.log(val);
var model = "m4";
var get = "model_name="+model;
fetch("/searchbyfilter?"+get)
	.then(res => res.json())
	.then(data => data.forEach(e => console.log(JSON.stringify(e))));
}


