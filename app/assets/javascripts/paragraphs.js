
$(document).ready(function() {




$(function() { 
    // for bootstrap 3 use 'shown.bs.tab', for bootstrap 2 use 'shown' in the next line
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
        // save the latest tab; use cookies if you like 'em better:
        localStorage.setItem('lastTab', $(this).attr('href'));
    });

    // go to the latest tab, if it exists:
    var lastTab = localStorage.getItem('lastTab');
    if (lastTab) {
        $('[href="' + lastTab + '"]').tab('show');
    }
});



 $(".rectangle-tc").click(function(){
        var imgs = $(this).children().children('img');

        $(this).next(".tcomments").slideToggle("slow");
        $(imgs[0]).toggle();
        $(imgs[1]).toggle();

 });





});





