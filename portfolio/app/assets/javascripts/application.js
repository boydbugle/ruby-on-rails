// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

/* Open when someone clicks on the span element */
// function openNav() {
//     document.getElementById("myNav").style.width = "100%";
// }

/* Close when someone clicks on the "x" symbol inside the overlay */
// function closeNav() {
//     document.getElementById("myNav").style.width = "0%";
// }

// function openTab(blockName) {
//     var i;
//     var x = document.getElementsByClassName("tab");
//     for (i = 0; i < x.length; i++) {
//         x[i].style.display = "none"; 
//     }
//     document.getElementById(blockName).style.display = "inline"; 

// }
// $(document).scroll(function () {
//     var scroll = $(this).scrollTop();
//     var topDist = $(".content").position();
//     if ( scroll > topDist.top) {
//         $('nav').addClass("change");
//     } else {       
//         $('nav').removeClass("change");
//     }
// });


 $(function() {
   $(document).scroll(function() {
       var $nav = $(".navbar-all-pages");
       $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
   });
});