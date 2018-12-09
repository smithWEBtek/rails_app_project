$(() => {
	// listenForSubmit()
	listenForStockistClick()
});

function clearOutStockistsDiv() {
	document.getElementById('stockist-detail').innerHTML = ''
}

function listenForStockistClick(e) {
	$('div#stockists-index a').on('click', function (e) {
		e.preventDefault()
		let id = this.attributes[0].textContent
		getStockistDetails(id)
	})
}

// 1st way ....
function getStockistDetails(id) {
	$.ajax({
		type: "get",
		url: '/stockists/' + id,
		dataType: 'json',
		success: function (response) {
			console.log("response: ", response)
			loadStockistDetails(response)
		}
	})
}

// 2nd way ....
// function getStockistDetails(id) {
// 	$.get('/stockists/' + id, function (response) {
// 		console.log("response: ", response)
// 	})
// }

// 3rd way ....
// function getStockistDetails(id) {
// 	fetch('/stockists/' + id)
// 		.then(response => response.json()
// 			.then(function (myJson) {
// 				console.log("json data: ", myJson)
// 			})
// 		)
// }

function loadStockistDetails(data) {
	clearOutStockistsDiv()
	let dataHTML = (`
		<fieldset>
			<p>${data.name}</p>
			<p>${data.address}</p>
		</fieldset>
	`)

	document.getElementById('stockist-detail').innerHTML += dataHTML
}



function Stockist(attributes) {
	this.name = attributes.name;
	this.id = attributes.id;
	this.address = attributes.address;
}

$(function () {
	Stockist.templateSource = $('#stockist-template').html()
	Stockist.template = Handlebars.compile(Stockist.templateSource);
})

Stockist.prototype.renderLI = function () {
	return Stockist.template(this)
}

Stockist.prototype.bourbonDetail = function (data) {
	return (
		`
		<div id=${data.id}>${data.name}</div>
		`
	)
}

$(document).ready(function () {
	$('form#new_stockist').on("submit", function (e) {
		// alert("You clicked SUBMIT!!")
		e.preventDefault()
		var $form = $(this);
		var action = $form.attr('action');

		var params = $form.serialize();
		// let params = { stockist: { name: 'mylist', address: '123 Main st.' } }

		console.log("params: ", params);
		$.ajax({
			type: 'POST',
			url: action,
			data: params,
			dataType: 'json'
		})

			.success(function (json) {

				console.log('json: ', json);
				var newstockist = new Stockist(json);
				var stockistLi = newstockist.renderLI()

				$('ul.new-stockist').append(stockistLi)
			})
			.error(function (response) {
				console.log('you broke it?', response)
			})

	})
})



	//url = this.action


	//$.ajax({
	//type: ($("input[name='_method']").val() || this.method),
	//url: this.action,
	//data: $(this).serialize(),
	//success: function(response){
	// $("#stockists").val("");
	//var $ol = $("div.stockists ol")
	//$ol.append(response);

	// }
	//});

	//  e.preventDefault();
	//})
	//});


	//$('#form').submit(function(){

	//some code here

	//return false;
	//});
