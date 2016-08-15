// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require Chart.bundle
//= require chartkick
//= require_tree .





 $(document).ready(function() {

 $(".flip").click(function(){
        $(this).children(".panel").slideToggle("slow");
 });


$(function () {
 
  $("#rateYo").on("rateyo.init", function (e, data) {
 
 			var y = $(this).next("input").next("input").val();
 			var x = $(this).next("input").val();

 			if (x.length == 0){
 				x=0
 			}

 			$("#rateYo").rateYo("option", "numStars", y);
 			$("#rateYo").rateYo("option", "maxValue", y);
 			$("#rateYo").rateYo("option", "rating", x);
 		
          console.log("RateYo initialized! with " + data.rating);
          });

 
	  	$("#rateYo").rateYo()
	              .on("rateyo.change", function (e, data) {
	 				

	                var rating = data.rating;
	                $(this).next("input").val(rating);

                  
	     });

  	
});


$('#new_comment').click(function() {
                    if( $(this).is(':checked')) {
                            $("#sencomm").show();
                  
                        } else {
                           
                            $("#sencomm").hide();
                        }
                    }); 







});




/* Set the width of the side navigation to 250px */
function openNav() {
    document.getElementById("mySidenav").style.width = "180px";
    document.getElementByClass("openbtn").hide();
}

/* Set the width of the side navigation to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
} 