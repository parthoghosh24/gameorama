$(document).ready(function(){
  $.fn.bootstrapSwitch.defaults.onText = 'Gamer';
  $.fn.bootstrapSwitch.defaults.offText = 'Admin';
  $.fn.bootstrapSwitch.defaults.onColor = 'success';
  $("[name='myCheckbox']").bootstrapSwitch(); 

 $('input[name="myCheckbox"]').on('switchChange.bootstrapSwitch', function(event, state) {
  console.log(this); // DOM element
  console.log(event); // jQuery event
  console.log(state); // true | false

  console.log($('input[name="myCheckbox"]').val()); 
  });
 
});
