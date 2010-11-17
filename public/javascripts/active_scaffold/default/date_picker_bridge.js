jQuery(function($){
  if (typeof($.datepicker) === 'object') {
    $.datepicker.regional['en'] = {"firstDay":0,"monthNamesShort":["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"],"closeText":"Close","isRTL":false,"dayNames":["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],"prevText":"Previous","showMonthAfterYear":false,"dayNamesShort":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"nextText":"Next","dayNamesMin":["Sun","Mon","Tue","Wed","Thu","Fri","Sat"],"dateFormat":"yy-mm-dd","currentText":"Today","changeYear":true,"weekHeader":"Wk","monthNames":["January","February","March","April","May","June","July","August","September","October","November","December"],"changeMonth":true};
    $.datepicker.setDefaults($.datepicker.regional['en']);
  }
  if (typeof($.timepicker) === 'object') {
    $.timepicker.regional['en'] = {"ampm":false,"hourText":"Hour","minuteText":"Minute","secondText":"Seconds"};
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