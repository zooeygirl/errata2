
$(document).ready(function() {



$('.mistake_categories').mouseenter(function() {
    $(this).css("color", "#FF0080");
    $(this).children('.mistake_names').show();
});

$('.mistake_categories').mouseleave(function() {
    $(this).css("color", "black");
    $(this).children('.mistake_names').hide();
});







$("input[type=checkbox][class=sentence_mistakes]").on("click", function(){
    var x = $(this).attr('value');
    if(this.checked) {
        
    } else {
        
        $("input[type=checkbox][value=" + x + " ][class=wimdelete]").prop('checked', true);
    }
}); 


$('#paragraph_view').on('change', function() {
    if ($(event.target).hasClass('wimdelete')){
        var x = $(event.target).attr('id');
        if(event.target.checked) {
        $("input[type=checkbox][value=" + x + " ][class=sentence_mistakes]").prop('checked', false);
        } else {
        $("input[type=checkbox][value=" + x + " ][class=sentence_mistakes]").prop('checked', true);
        }
        $(event.target).closest('tr').next($("input[type=checkbox][type=hidden][class=wimdelete]")).remove();
        $(event.target).closest('tr').remove(); 
        $("input[type=checkbox][value=" + x + " ][class=sentence_mistakes]").closest('form').submit();  
    }
    else {
        $(event.target).closest('form').submit();

    }

});



$('#paragraph_view').children($("input[type=text]")).on('input', function() {
    $(event.target).closest('form').submit();
   
});

$('#paragraph_view').children($("input[type=radio]")).on('input', function() {
    $(event.target).closest('form').submit();
   
});

$('#paragraph_view').children($(".stars")).on('click', function() {
    $(event.target).closest('form').submit();
    
});





});



