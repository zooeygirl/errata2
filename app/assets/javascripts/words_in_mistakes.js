$(document).ready(function() {

$('body').on('click', '.word_choice', function() {
    $(event.target).closest('form').submit();
});
  



	var setMisNums = $("input[type=checkbox][class=sentence_mistakes]").on("click", function(){

		
    var x = $(this).attr('value');
    var l = $(this).nextAll('label').text();
    
    
    if(this.checked) {
    	var v = $('.essaynum').val();
    	var p = $('.paranum').val();
    	var s = $(this).parent().parent().prevAll('.sennum').val();

 		$('#new_problem_sentence').trigger('click');

 		$( document ).ajaxComplete(function() {

 		$('input[type=hidden][id=words_in_mistake_mistake_id]').val(x);
 		$("input[type=hidden][class=wimessay]").val(v);
 		$("input[type=hidden][class=wimpara]").val(p);
 		$("input[type=hidden][class=wimsen]").val(s);
 	

 
		});


    } else {
        

    }


	}); 	
	
	


	var showWim = $(".sentence_mistakes").mouseleave(function() {

    			$("#new_words_in_mistake").submit();
    			$('#new_words_in_mistake').remove();

    			
		});

	
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {


	
		var currentTab = $("ul#myTab li.active").attr('class').replace(" active", "");		
  		$('#unsaved_wim_table > tr').each(function(){
  			if ($(this).attr('class') == currentTab ){
  				$(this).show();
  			}
  			else {
  				$(this).hide();
  			}
  		}); 
   
   	});	



});

