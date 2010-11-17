$(function(){
  // init the textarea to load with tinyMCE editor
  $('textarea.mce').livequery(
    function(){
      $(this).tinymce({
        mode:'textarea',
        theme : "advanced",
        plugins : "advlink, paste",
        theme_advanced_buttons1: "bold,italic,underline,|,undo,redo,|,link,unlink,|, pastetext, pasteword, removeformat",
        theme_advanced_buttons2: '',
        theme_advanced_buttons3: '',
        theme_advanced_buttons4: '',
        theme_advanced_toolbar_location: 'top',
        removeformat_selector: 'b,strong,em,i,span,ins,ul,li,div'
      });
      $(this).closest('form').bind('submit', function(e){
        tinyMCE.triggerSave();
      })
    }

  );

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
