$(document).ready(function() {




$('.assignment_flip').on('click', function() {
    $(this).toggleClass('clicked');
});


$('.assignment_flip').hover(function() {
    $(this).toggleClass('hover');
    $(this).children('.assignment_name').toggle();
    $(this).children('.assignment_links').toggle();
});


$('#add_pe_btn').on('click', function() {
    $(this).next('#add_practice_exercises').toggle('');
});





});


