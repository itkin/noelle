jQuery(function($){
  if (typeof($.datepicker) === 'object') {
    $.datepicker.regional['en'] = {"weekHeader":"Wk","prevText":"Previous","dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"firstDay":0,"nextText":"Next","dayNamesMin":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dateFormat":"yy-mm-dd","isRTL":false,"currentText":"Today","changeYear":true,"showMonthAfterYear":false,"monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"changeMonth":true,"monthNamesShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"closeText":"Close","dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]};
    $.datepicker.setDefaults($.datepicker.regional['en']);
  }
  if (typeof($.timepicker) === 'object') {
    $.timepicker.regional['en'] = {"minuteText":"Minute","secondText":"Seconds","ampm":false,"hourText":"Hour"};
    $.timepicker.setDefaults($.timepicker.regional['en']);
  }
});
$(document).ready(function() {
  $('input.date_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
  $('input.datetime_picker').live('focus', function(event) {
    var date_picker = $(this);
    if (typeof(date_picker.datetimepicker) == 'function') {
      if (!date_picker.hasClass('hasDatepicker')) {
        date_picker.datetimepicker();
        date_picker.trigger('focus');
      }
    }
    return true;
  });
});