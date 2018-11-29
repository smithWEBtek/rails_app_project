$(document).ready(function(){
$('#new_stockist').on("submit", function(e){
  //alert("You clicked SUBMIT!!")
  url = this.action
console.log(url)

data = {
  'authenticity_token': $("input[name='authenticity_token']").val(),
  'stockist': {
    'name': $("#stockist_name").val(),
    'address': $("#stockist_address").val()
  }
};
 $.ajax({
   type: "POST",
   url: url,
   data: data,
   success: function(response){
   var $ol = $("div.comments ol")
   $ol.append(response);
   
   }
 });

  e.preventDefault();
})
});


//$('#form').submit(function(){

   //some code here

   //return false;
//});
