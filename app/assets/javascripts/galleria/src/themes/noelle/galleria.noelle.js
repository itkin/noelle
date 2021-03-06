/*
 * Galleria Noelle Theme v. 1.5 2010-10-28
 * http://galleria.aino.se
 *
 * Copyright (c) 2010, Aino
 * Licensed under the MIT license.
 */

(function($) {

Galleria.addTheme({
    name: 'noelle',
    author: 'Galleria',
    version: '1.5',
    css: 'galleria.noelle.css',
    defaults: {
        transition: 'slide',
        thumb_crop: 'height',
        autoplay: 7000,
        show_counter: false,
        pause_on_interaction: false,
        
		// set this to false if you want to show the caption all the time:
        _toggle_info: true
    },
    init: function(options) {
        
        // add some elements
        this.addElement('info-link','info-close');
        this.append({
            'info' : ['info-link','info-close']
        });
        
        // cache some stuff
        var toggle   = this.$('image-nav-left,image-nav-right,counter'),
            info     = this.$('info-link,info-close,info-text'),
            click    = Galleria.TOUCH ? 'touchstart' : 'click';
        
        // show loader & counter with opacity
        this.$('loader,counter').show().css('opacity',.4)

        // some stuff for non-touch browsers
        if (! Galleria.TOUCH ) {
            
            // fade thumbnails
            this.$('thumbnails').children().hover(function() {
                $(this).not('.active').children().stop().fadeTo(100, 1);
            }, function() {
                $(this).not('.active').children().stop().fadeTo(400, .6);
            });
            
            this.addIdleState( this.get('image-nav-left'), { left:-50 });
            this.addIdleState( this.get('image-nav-right'), { right:-50 });
            this.addIdleState( this.get('counter'), { opacity:0 });
        }
        
        // toggle info
        if ( options._toggle_info ) {
            info.bind( click, function() {
                info.toggle();
            });
        }
        
        // bind some stuff
        this.bind(Galleria.THUMBNAIL, function(e) {
            $(e.thumbTarget).parent(':not(.active)').children().css('opacity',.6)
        });
        
        this.bind(Galleria.LOADSTART, function(e) {
            if (!e.cached) {
                this.$('loader').show().fadeTo(200, .4);
            }
            
            
            
            $(e.thumbTarget).css('opacity',1).parent().siblings().children().css('opacity',.6);
        });
        
        this.bind(Galleria.LOADFINISH, function(e) {
            this.$('loader').fadeOut(200);
        });

        // noelle's customization
        var self = this;

        // bind previous and next links
        $('#previous').bind('click',function(e){
          e.preventDefault();
          self.prev();
        });

        $('#next').bind('click',function(e){
          e.preventDefault();
          self.next();
        });
        // play toggle
        $('#play_toggle').bind('click',function(e){
          e.preventDefault();
          if ( self._playing ){
            $(this).text('play');
            self.pause()
          }
          else {
            $(this).text('pause');
            self.play();
          }
        }); 


        // bind fullscreen link
        $('#fullscreen').bind('click',function(e){
          e.preventDefault();
          self.enterFullscreen()
        });

        $("<a href='#' id='exit-fullscreen'></a>").appendTo('.galleria-container').bind('click', function(e){
          e.preventDefault();
          self.exitFullscreen();
        });

        $("<div id='fullscreen-info'><span class='counter'></span><span class='title'></span>").appendTo('.galleria-container');

        // Update caption container when a new image is shown
        this.bind(Galleria.LOADSTART, function(e){
          var index = e.index + 1 + '/' + self._data.length ;
          $('#gallery_controls div.counter, #fullscreen-info span.counter').text(index);
          $('#gallery_controls h3, #fullscreen-info span.title ').text(this._data[e.index].title);
          if ($.trim(this._data[e.index].description).length > 1)
            $('.galleria-info').show();
          else
            $('.galleria-info').hide();
        });



//        this.bind(Galleria.FULLSCREEN_ENTER, function(e){
//          this.appendTo()
//        });

    }
});

})(jQuery);
