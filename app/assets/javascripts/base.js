var ready;
ready = function() {

  function trace() {for(var i = 0, count = arguments.length; i < count; i++){console.log(arguments[i]);}};

  var dropdowntoggle = $("ul.nav").find("li a[data-toggle='dropdown']")
  dropdowntoggle.on('click', function(){
    $(dropdowntoggle).next().toggleClass('active');
  });

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
  else if($(".alert.notification").html().match(/[\w]+/) != null) {
    $("p.alert.notification").addClass('active');
    setTimeout(function(){
      $("p.alert.notification").animate({
        opacity: 0
      });
    },2000);
  }
  else {
    $("p.notice.notification").removeClass('active') ;
  }

  $(".article-blurb").each(function(i,blurb){
    if ($(blurb).html().length > 250) {
      var blurb = $(this).html().substring(0,250)+'...';
      var text = $(this).text();
      $(this).html(blurb);
    } else {}
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);