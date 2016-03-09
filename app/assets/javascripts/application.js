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
//= require jquery.turbolinks
//= require turbolinks
//= require owl.carousel
//= require_tree .

$(document).ready(function() {
  $("#owl-image-slider").owlCarousel( {
    autoPlay: 10000, //Set AutoPlay to 5 seconds
    
    mouseDrag: false,
    slideSpeed : 1500,
    paginationSpeed : 1500,
    pagination:false,
    singleItem:true 
  });
  // Employment owl
  $("#employment-owl").owlCarousel( {
    autoPlay: false,
    singleItem: true,
    navigation: true,
    pagination: false,
    mouseDrag: false,
    touchDrag: false,
    autoHeight: true
  });
  didResize = true;
});

var bumpIt = function() {
      $('div#wrap').css('margin-bottom', $('div#footer').height() + 50 + 'px');
    },
    didResize = false;

bumpIt();

setInterval(function() {
  if(didResize) {
    didResize = false;
    bumpIt();
  }
}, 250);


// navbar icon responsiveness
$(document).ready(function() {
  $('nav li').hover(function() {
    $('img', this).animate({width:'toggle'},270);
  });
});

// Order page display animations
$(document).ready(function() {
  $('.order-phone').click(function() {
    $('.online').hide();
    $('.phone').show();
    $('.order').slideDown(500);
    $('html, body').animate({ scrollTop: $('.order').offset().top - 100 }, 1000);
  });
  
  $('.order-online').click(function() {
    $('.online').show();
    $('.phone').hide();
    $('.order').slideDown(500);
    $('html, body').animate({ scrollTop: $('.order').offset().top - 100 }, 1000);
  });
});

// Locations page divider width
$(document).ready(function() {
  var w = $('div#locations').width() + 40;
  $('#locations div.divider').css( { width: w + 'px' } );
});