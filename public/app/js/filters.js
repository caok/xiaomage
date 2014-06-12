angular.module('myApp.filters', []).filter('truncate', function() {
  return function(text) {
    if (text) {
      if (text.length > 30){
        var t = text.slice(0,30) + "...";
      } else {
        var t = text.slice(0,30);
      };
    } else {
      var t = "";
    }
    return t;
  };
});
