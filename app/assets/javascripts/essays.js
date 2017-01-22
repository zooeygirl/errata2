
$(document).ready(function() {



$('.mistake_categories').mouseenter(function() {
    $(this).css("color", "#FF0080");
    $(this).children('.mistake_names').show();
});

$('.mistake_categories').mouseleave(function() {
    $(this).css("color", "black");
    $(this).children('.mistake_names').hide();
});




$(".wimdelete").on("click", function(){
    var x = $(this).attr('id');
    if(this.checked) {
 
        $("input[type=checkbox][value=" + x + " ][class=sentence_mistakes]").prop('checked', false);
    } else {
        $("input[type=checkbox][value=" + x + " ][class=sentence_mistakes]").prop('checked', true);
    }
}); 


$("input[type=checkbox][class=sentence_mistakes]").on("click", function(){
    var x = $(this).attr('value');
    if(this.checked) {
        
    } else {
        
        $("input[type=checkbox][value=" + x + " ][class=wimdelete]").prop('checked', true);
    }
}); 








});


