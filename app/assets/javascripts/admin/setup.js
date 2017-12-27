window.App = {
  Informations: {},

  performInitialSetup: function() {
    console.log('Init done...');
  }
}

$(function() {
  App.performInitialSetup();

  $('[data-js]').each(function(_i, e) {
    var $element = $(e);
    new (eval($element.data('js')))($element);
  });
});
