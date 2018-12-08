
document.addEventListener("turbolinks:load", function () {
	//my_func();
	//})


	$(document).ready(function () {

		$("a.load_bourbons").on("click", function (e) {

			alert("You clicked SUBMIT!!")
			$.get(this.href).success(function (json) {
				//clear the ol html in case
				var $ol = $("div.bourbons ol");
				$ol.innerHTML = ""; //emptied
				//json.forEach(function(bourbon){

				json.forEach(function (bourbon) {
					$ol.append("<li>" + bourbon.name + "</li>");
				})
			})
			e.preventDefault();
		})
	})
})
