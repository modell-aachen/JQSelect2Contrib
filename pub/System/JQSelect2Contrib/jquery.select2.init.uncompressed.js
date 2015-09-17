// initializer for the select2 plugin
jQuery(function($) {
  $(".jqSelect2").livequery(function() {
    var $this = $(this), opts = $.extend({}, $this.metadata());
    $this.removeClass("jqSelect2").select2(opts);
  });

  var jqselect2 = {
    passthroughFunc: function(x) {
      return x;
    },
    dataFunc: function(term, page) {
      return {
        input: term,
        limit: 20,
        page: page,
        offset: page*20
      };
    },
    resultsFunc: function(data, page) {
      var more = (page * 20) < data.length;
      return {results: data, more: more};
    }
  };

  $(".jqSelect2DefaultFuncs").livequery(function() {
    var $this = $(this), opts = $.extend({
      formatResult: jqselect2.passthroughFunc,
      formatSelection: jqselect2.passthroughFunc,
      escapeMarkup: jqselect2.passthroughFunc,
      'ajax.data': jqselect2.dataFunc,
      'ajax.results': jqselect2.resultsFunc
    }, $this.metadata());
    if (!opts.ajax) opts.ajax = {};
    if (opts['ajax.data']) {
      opts.ajax.data = opts['ajax.data'];
      delete opts['ajax.data'];
    }
    if (opts['ajax.results']) {
      opts.ajax.results = opts['ajax.results'];
      delete opts['ajax.results'];
    }
    console.log(opts);
    $this.removeClass("jqSelect2DefaultFuncs").select2(opts);
  });
});

