 $(".frsubmit").each(function () {
  this.onkeypress = function (e) {
   if (e.which == 13) {
    $(this).closest('form').submit()
   }
  }
 });

 $('#frform').bind('ajax:beforeSend', function () {
  $('#list').html('<div class="eqlist"><div>Loading...</div></div>')
 }).bind('ajax:success', function (evt, data, status, xhr) {
  $('#list').html(data)
 })