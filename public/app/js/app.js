'use strict';

angular.module('myApp', [
  'ngRoute',
  'myApp.filters',
  'myApp.services',
  'myApp.directives',
  'myApp.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/index',    {templateUrl: 'partials/index', controller: 'indexCtrl'});
  $routeProvider.when('/articles',    {templateUrl: 'partials/articles', controller: 'articlesCtrl'});
  $routeProvider.when('/articles/:id',    {templateUrl: 'partials/form', controller: 'articlesCtrl'});
  $routeProvider.when('/daos',    {templateUrl: 'partials/daos', controller: 'daosCtrl'});
  $routeProvider.when('/daos/:id',    {templateUrl: 'partials/form', controller: 'daosCtrl'});
  $routeProvider.when('/haos',    {templateUrl: 'partials/haos', controller: 'haosCtrl'});
  $routeProvider.when('/haos/:id',    {templateUrl: 'partials/form', controller: 'haosCtrl'});
  $routeProvider.when('/days',    {templateUrl: 'partials/days', controller: 'daysCtrl'});
  $routeProvider.when('/days/:id',    {templateUrl: 'partials/form', controller: 'daysCtrl'});
  $routeProvider.when('/zhaos',    {templateUrl: 'partials/zhaos', controller: 'zhaosCtrl'});
  $routeProvider.when('/zhaos/:id',    {templateUrl: 'partials/form', controller: 'zhaosCtrl'});
  $routeProvider.when('/qius',    {templateUrl: 'partials/qius', controller: 'qiusCtrl'});
  $routeProvider.when('/qius/:id',    {templateUrl: 'partials/form', controller: 'qiusCtrl'});
  $routeProvider.when('/activities',    {templateUrl: 'partials/activities', controller: 'activitiesCtrl'});
  $routeProvider.when('/activities/:id',    {templateUrl: 'partials/activityForm', controller: 'activitiesCtrl'});
  $routeProvider.when('/setting', {templateUrl: 'partials/admin', controller: 'settingCtrl'});
  $routeProvider.when('/setting/:id', {templateUrl: 'partials/adminForm', controller: 'settingCtrl'});
  $routeProvider.otherwise({redirectTo: '/index'});
}]);
