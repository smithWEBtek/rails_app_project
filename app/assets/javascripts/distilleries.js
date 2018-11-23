


$(document).ready(function(){

$("a.load_bourbons").on("click", function(e) {
//fire some ajax
$.ajax({
  method: "GET",
  url:
}).success(function(data){

  console.log(data)
});

  e.preventDefault();
})
})
