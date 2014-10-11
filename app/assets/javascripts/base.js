var ready;
ready = function() {
  var dropdowntoggle = $("ul.nav").find("li a[data-toggle='dropdown']")
  dropdowntoggle.on('click', function(){
    $(dropdowntoggle).next().toggleClass('active');
  })

  $('#edit').editable({
    inlineMode: false,
    height: 400
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);