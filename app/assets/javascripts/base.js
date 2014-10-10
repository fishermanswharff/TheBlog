var ready;
ready = function() {
  var dropdowntoggle = $("ul.nav").find("li a[data-toggle='dropdown']")
  dropdowntoggle.on('click', function(){
    $(dropdowntoggle).next().toggle();
  })
};

$(document).ready(ready);
$(document).on('page:load', ready);