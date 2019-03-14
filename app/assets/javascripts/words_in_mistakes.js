$(document).ready(function() {

$('body').on('click', '.word_choice', function() {
    $(event.target).closest('form').submit();
});

$('body').on('click', '.correction_radio_buttons', function() {
    $(event.target).closest('form').submit();
});





    var setMisNums = $("input[type=checkbox][class=sentence_mistakes]").on("click", function(){

        
    var x = $(this).attr('value');
    var l = $(this).nextAll('label').text();
    
    
    if(this.checked) {
        var v = $('.essaynum').val();
        var p = $('.paranum').val();
        var s = $(this).parent().parent().prevAll('.sennum').val();

        
       $.ajax({
        type: "GET",
        url: "/words_in_mistakes/new",
        dataType: "script",
        success : function(data) {              
        

        $('input[type=text][id=words_in_mistake_mistake_id]').val(x);
        $("input[type=text][class=wimessay]").val(v);
        $("input[type=text][class=wimpara]").val(p);
        $("input[type=text][class=wimsen]").val(s);
          
        $("#new_words_in_mistake").trigger('submit.rails');
        $('#new_words_in_mistake').remove();


        }
        });

        


    } else {
        

    }

   

    });     
    
    
  

    

    




});


