(function($) {

  $.fn.railsSortable = function(options) {
    var defaults = {
      revert: true,
      scroll: true
    };

    var setting = $.extend(defaults, options);
    setting["update"] = function() {
      $.post("/sortable/reorder", $(this).sortable('serialize'))
    }

    this.sortable(setting);
  };

})(jQuery);
