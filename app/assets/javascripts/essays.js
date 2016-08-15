
$(document).ready(function() {



$('.mistake_categories').mouseenter(function() {
    $(this).css("background-color", "yellow");
    $(this).children('.mistake_names').show();
});

$('.mistake_categories').mouseleave(function() {
    $(this).css("background-color", "#FF0080");
    $(this).children('.mistake_names').hide();
});



});


