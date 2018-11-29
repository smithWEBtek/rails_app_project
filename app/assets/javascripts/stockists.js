$(document).ready(function(){
$('#new_stockist').submit(function(e){
  //alert("You clicked SUBMIT!!")
  //url = this.action
//console.log(url)

data = {
  'authenticity_token': $("input[name='authenticity_token']").attr("value"),
  'stockist': {
    'name': $("#stockist_name").val(),
    'address': $("#stockist_address").val()
  }
};
console.log(data);
  e.preventDefault();
})
});


//$('#form').submit(function(){

   //some code here

   //return false;
//});
