$(document).ready(function(){
$('#new_stockist').on("submit", function(e){
  alert("You clicked SUBMIT!!")
  e.preventDefault()
  var $form = $(this);
  var action = '/stockists';
  var params = $form.serialize();

  $.ajax({
url: action,
data: params,
datatype: 'json',
method: 'POST'
})
.success(function(json){
  html = ""
  html += "<li>" +json.name+"</li>"
console.log(json)
})
.error(function(response){
console.log(response)
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
