 <script> 

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
function process() {
window.uname = document.getElementById('username');
window.uemail= document.getElementById('email');
  if( !$(uname).val() ) {
   alert('username is empty');
  return;
         }
  if( !($(uemail).val() && isEmail($(uemail).val())) ) {
   alert('email is not valid');
   return;
         }

 $.ajax({
    type: 'POST',
   
    url: '/wp-content/themes/epixx/api.php',
    data: { 
        'name': $(uname).val(), 
        'email': $(uemail).val()
    },
    success: function(msg){
        alert('your data was sent ' );
    }
});

}






        </script>