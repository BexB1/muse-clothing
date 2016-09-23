$("body").css("opacity", 0).animate({ opacity: 1}, 2500);

$("body a").on('click', function() {
  $("body").css("opacity", 1).animate({ opacity: 0}, 2000);
})

$('.pulldown').on('mouseover', function(){
  $(".pulldown").css("opacity", 1).animate({ opacity: 0}, 500);
})

$('#side').on('mouseleave', function(){
  $(".pulldown").css("opacity", 0).animate({ opacity: 1}, 500);
})




