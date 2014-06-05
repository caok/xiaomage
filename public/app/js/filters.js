angular.module('myApp.filters', []).filter('truncate', function() {
  return function(text) {
    if (text) {
      if (text.length > 50){
        var t = text.slice(0,50) + "...";
      } else {
        var t = text.slice(0,50);
      };
    } else {
      var t = "";
    }
    return t;
  };
});
