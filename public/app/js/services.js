'use strict';

angular.module('myApp.services', ['ngResource'])
.factory('Article', ['$resource',
  function($resource){
    return $resource('/admin/article/:id', {id: '@id'});
}])
.factory('Dao', ['$resource',
  function($resource){
    return $resource('/admin/dao/:id', {id: '@id'});
}])
.factory('Hao', ['$resource',
  function($resource){
    return $resource('/admin/hao/:id', {id: '@id'});
}])
.factory('Day', ['$resource',
  function($resource){
    return $resource('/admin/day/:id', {id: '@id'});
}])
.factory('Zhao', ['$resource',
  function($resource){
    return $resource('/admin/zhao/:id', {id: '@id'});
}])
.factory('Qiu', ['$resource',
  function($resource){
    return $resource('/admin/qiu/:id', {id: '@id'});
}])
.factory('Activity', ['$resource',
  function($resource){
    return $resource('/admin/activities/:id', {id: '@id'});
}])
.factory('Admin', ['$resource',
  function($resource){
    return $resource('/admin/setting/:id', {id: '@id'});
}]);
