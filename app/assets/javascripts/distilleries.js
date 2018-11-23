


$(document).ready(function(){

$("a.load_bourbons").on("click", function(e) {
//fire some ajax
//$.ajax({
  //method: "GET",
//  url: this.href
//}).done(function(response){

  //$("div.comments").html(response)
//});

  //e.preventDefault();
//})
//})

$.get(this.href).success(function(response){
  $("div.bourbons").html(response)
})
e.preventDefault();
})
})
