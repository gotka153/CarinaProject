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

//JS 비동기 통신
function filter_submit() {
	const place = document.getElementById('place');
	place.innerHTML = ``;
	const form = document.getElementById('filter_form');
	formData = new FormData(form);
	fetch('/searchbyfilter', { method: 'post', body: formData })
		.then(res => res.json())
		.then(res => res.forEach((e) => {
			place.insertAdjacentHTML('beforeend', `<label class="thumb_img">${e.thumbnail}</label>
			<ul class="thumb_text">
				<li>${e.model_name}</li>
				<li>${e.mileage}</li>
				<li>${e.year_of_manufacture}</li>
				<li>${e.price}</li>
			</ul>`	)
		}));
}



