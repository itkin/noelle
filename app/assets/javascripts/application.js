//Website application

//= require jquery-1.4.3
//= require rails_jquery
//= require jquery.effects.core
//= require jquery.effects.highlight
//= require jquery.livequery
//= require mousewheel
//= require scrollpane
//= require galleria/src/galleria

function displayProject(timer){
  setTimeout(function(){
    window.location = $(".access_to_project").attr('href')
  }, timer);
}

(function($){
  
  Galleria.loadTheme('/assets/galleria/src/themes/noelle/galleria.noelle.js');

  $(function(){

    $('img').live("mousedown","contextmenu", function(e) {
        e.preventDefault();
        e.stopImmediatePropagation();
    });
    
    // Slideshow
    $('#gallery').galleria({
      autoplay: 5000,
      width: 666,
      height: 500,
      counter: false
    });


    // Barre de défilement sur les pages custo
    $("#page_content, #category_comment").jScrollPane();


    // Animations du menu
    $('ul.categories > li > a').toggle(function(e){
      if ($(this).attr('data-comment') == 'true'){
        window.location = $(this).attr('href');
      } else {
        e.preventDefault();
        $(this).closest('.categories').find('ul.projects:visible').not($(this).next('ul.projects').slideToggle()).slideToggle();
      }
    }, function(e){
      e.preventDefault();
      var $ul = $(this).next('ul.projects');
      if ($ul.length != 0)
        $ul.slideToggle();
    });



  });
  
})(jQuery);