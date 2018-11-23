


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

//jquery:
//$.get(this.href).success(function(response){
  //$("div.bourbons").html(response)
//})
//e.preventDefault();
//})
//})

//json:

$.get(this.href).success(function(json){
  //clear the ol html in case
  var $ol = $("div.bourbons ol")
    $ol.html("") //emptied
    json.forEach(function(bourbon){
      $ol.append("<li>" + bourbon.name + "</li>");
    })

})
e.preventDefault();
})
})
