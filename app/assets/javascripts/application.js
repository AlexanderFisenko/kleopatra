// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.bxslider.min
//= require jquery.fancybox.pack
//= require jquery.fancybox-thumbs
//= require_tree


$(document).ready(function(){
/*  $("#halls-link").on("click", function(){
    $("#halls").show();
    $("#main").hide();
  });

  $("#main-link").on("click", function(){
    $("#halls").hide();
    $("#main").show();
  });*/

/*  alert('1')*/
  $('.fancybox-thumb').fancybox({
    prevEffect  : 'none',
    nextEffect  : 'none',
    helpers : {
      title : {
        type: 'outside'
      },
      thumbs  : {
        width : 50,
        height  : 50
      }
    }
  });

});