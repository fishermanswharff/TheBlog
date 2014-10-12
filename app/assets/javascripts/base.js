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

  if ($(".notice.notification").html().match(/[\w]+/) != null) {
    $("p.notice.notification").addClass('active');
    setTimeout(function(){
      $("p.notice.notification").animate({
        opacity: 0
      });
    },2000);
  } 
  else {
    $("p.notice.notification").removeClass('active') ;
  }

};

$(document).ready(ready);
$(document).on('page:load', ready);