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



$(".rateYo").each(function (e) {

  var y = $(this).next("input").next("input").val();
  var x = $(this).next("input").val();

  if (x.length == 0){
        x=0
      }

    $(this).rateYo({
        onSet: function (rating, rateYoInstance) {
            $(this).next().val(rating);
        },
        rating: x,
        starWidth: "20px",
        numStars: y,
        maxValue: y,
        normalFill: "#A0A0A0",
        ratedFill: "#FF0080",
        fullStar: true
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