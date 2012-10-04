// initializer for the select2 plugin
jQuery(function($) {
  $(".jqSelect2").livequery(function() {
    var $this = $(this), opts = $.extend({}, $this.metadata());
    $this.removeClass("jqSelect2").select2(opts);
  });
});
