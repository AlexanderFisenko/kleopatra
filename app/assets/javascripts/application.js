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
//= require jquery.scrollUp.min
//= require contacts
//= require jquery
//= require bootstrap-sprockets
//= require_tree


$(document).ready(function(){

  $("[data-primary-nav=link]").on("click", function(event){
    $("[data-secondary-nav]").hide();
    secondaryNav = $(event.currentTarget).data("showSecondaryNav");
    $("[data-secondary-nav=" + secondaryNav +"]").fadeIn(500);
    event.preventDefault();
  });



  $('a[href*=#]').on('click', function(event){
      event.preventDefault();
      $('html,body').animate({scrollTop:$(this.hash).offset().top - 50}, 500);
  });

  /* for /facilities/serving  */
  $("[data-action=change-photo]").mouseenter(function(event){
    $("[data-role=picture]").show();
    path = $(event.currentTarget).data("path");
    $("[data-role=picture]").attr("src", path);
  });

  $("[data-action=change-photo]").mouseleave(function(){
    $("[data-role=picture]").attr("src", "");
    $("[data-role=picture]").hide();
  });

  /* for /facilities/additional-service  */
  $("[data-action=change-photo1]").mouseenter(function(event){
    $("[data-role=picture], [data-page=additional-service").show();
    path = $(event.currentTarget).data("path");
    $("[data-role=picture], [data-page=additional-service").attr("src", path);
  });

  $("[data-action=change-photo1]").mouseleave(function(){
    path = $("[data-role=picture], [data-page=additional-service]").data("default-path")
    $("[data-role=picture], [data-page=additional-service]").attr("src", path);
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

  $('#footer .social img').mouseover(function(){
    $(this).stop().animate({
        top: 40    
    }, 200);                        
    }).mouseout(function(){
        $(this).stop().animate({
            top: 10
        }, 200)    
    })

});
