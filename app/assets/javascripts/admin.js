//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery.livequery
//= require active_scaffold
//= require tinymce-jquery

$(function(){
  // init the textarea to load with tinyMCE editor
  tinyMCE.init({
    mode:'textarea',
    theme : "advanced",
    plugins : "advlink, paste, advimage, table",
    theme_advanced_buttons1: "tablecontrols,|,removeformat,visualaid,|,bold,italic,underline,|,undo,redo,|,link,unlink,image,|,justifyleft,justifycenter,justifyright,justifyfull,|, pastetext, pasteword, removeformat",
    theme_advanced_buttons2: '',
    theme_advanced_buttons3: '',
    theme_advanced_buttons4: '',
    theme_advanced_toolbar_location: 'top',
    removeformat_selector: 'b,strong,em,i,span,ins,ul,li,div'
  });


  $('form.as_form').livequery(function(){
      $(this).find('textarea.mce').each(function(index, elem) {
        tinyMCE.execCommand('mceAddControl', false, $(elem).attr('id'));
      });
      $(this).bind('submit.tinymce', function(e){
        tinyMCE.triggerSave()
      })


  }, function(){
      var textarea = $(this).unbind('submit.tinymce').find('textarea.mce');
      if (textarea.length){
        textarea.tinymce().destroy();
        textarea.tinymce().remove();
      }
  })

  $("#tabs").tabs();

//  $("#tabs").tabs({
//      select: function(event, ui) {
//        var url = $.data(ui.tab, 'load.tabs');
//        if( url ) {
//            location.href = url;
//            return false;
//        }
//        return true;
//      }
//   });

});
