$(".user.new").ready(function(){

  $("#tag_title").on({
    keypress: function (e) {
      if (e.which == 13) {
        $('').submit();
        return false
      } else if (!/[a-z0-9-]/.test( String.fromCharCode(e.which) )) {
        return false
      }
    },
    keyup: function () {
      $(this).change() //optimise
    },
    change: function () {
      if (/[a-z0-9-]*/.test( $('#tag_title').val() )) {
        $('#single_tag_title').val( $('#tag_title').val() );
        $('#single_tag_active').val(false);
        $('#new_single_tag').submit()
      }
    }
  });

  $('#tag_title').bind('ajax:success', function (evt, data, status, xhr) {
    $('#testing').append("<div class='tag'>" + data + "</div>")
  })
  
})