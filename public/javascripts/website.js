function displayProject(timer){
  setTimeout(function(){
    window.location = $("#access_to_project").attr('href')
  }, timer);
}

$(function(){

  // Slideshow
  $('#gallery').galleria({
    width: 666,
    height: 500,
    counter: false
  });


  // Barre de défilement sur les pages custo
  $("#page.pages #page_content").jScrollPane();


  // Animations du menu
  $('ul.categories > li > a').toggle(function(e){
    if ($(this).attr('data-description') == 'true'){
      window.location = $(this).attr('href');
    } else {
      e.preventDefault();
      var $ul = $(this).next('ul.projects');
      if ($ul.length != 0)
        $ul.slideToggle();
    }
  }, function(e){
    e.preventDefault();
    var $ul = $(this).next('ul.projects');
    if ($ul.length != 0)
      $ul.slideToggle();
  });



});