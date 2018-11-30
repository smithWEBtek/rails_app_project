$(document).ready(function(){
$('#new_stockist').on("submit", function(e){
  alert("You clicked SUBMIT!!")
  //url = this.action


//data = {
  //'authenticity_token': $("input[name='authenticity_token']").val(),
  //'stockist': {
    //'name': $("#stockist_name").val(),
  //  'address': $("#stockist_address").val()
//  }
//};
 $.ajax({
   type: ($("input[name='_method']").val() || this.method),
   url: this.action,
   data: $(this).serialize(),
   success: function(response){
   $("#stockists").val("");
   var $ol = $("div.stockists ol")
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
