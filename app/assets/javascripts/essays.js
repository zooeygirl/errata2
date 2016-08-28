
$(document).ready(function() {



$('.mistake_categories').mouseenter(function() {
    $(this).css("color", "#FF0080");
    $(this).children('.mistake_names').show();
});

$('.mistake_categories').mouseleave(function() {
    $(this).css("color", "black");
    $(this).children('.mistake_names').hide();
});



});


