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
//= require contacts
//= require_tree


$(document).ready(function(){

  $("[data-show-nav=main]").on("click", function(event){
    $("[data-secondary-nav=halls]").hide();
    $("[data-secondary-nav=service]").hide();
    $("[data-secondary-nav=substitude]").hide();
    $("[data-secondary-nav=main]").show();
    event.preventDefault();
  });

  $("[data-show-nav=service]").on("click", function(event){
    $("[data-secondary-nav=halls]").hide();
    $("[data-secondary-nav=main]").hide();
    $("[data-secondary-nav=substitude]").hide();
    $("[data-secondary-nav=service]").show();
    event.preventDefault();
  });

  $("[data-show-nav=halls]").on("click", function(event){
    $("[data-secondary-nav=main]").hide();
    $("[data-secondary-nav=service]").hide();
    $("[data-secondary-nav=substitude]").hide();
    $("[data-secondary-nav=halls]").show();
    event.preventDefault();
  });





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