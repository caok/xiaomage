'use strict';

function MainCtrl($route, $routeParams, $location) {
  this.$location = $location;
  this.isPath = function(path){
    return($location.path().indexOf(path) > 0);
  }
};

var acteditor = false;
var editor = false;

angular.module('myApp.controllers', [])
  .controller('indexCtrl', ['$scope', '$location', '$routeParams', function($scope, $location, $routeParams) {
  }])
  .controller('articlesCtrl', ['$scope', '$location', '$routeParams', 'Article', function($scope, $location, $routeParams, Article) {
    if ($routeParams.id) {
      if ($routeParams.id === "new"){
        // 创建
        $scope.obj = {title:"", detail:"", abstract:"", cover:""};
        $scope.submit = function(){
          Article.save({}, $scope.obj, function(res){
            if (res.result === 'success'){
              $location.path('/articles');
            } else if (res.result === 'failure') {
              $scope.alert = res.message;
            }
          });
        };
      } else {
        // 更新
        Article.get({id: $routeParams.id}, function(article){
          $scope.obj = article;
          $scope.submit = function(){
            Article.save({id: $routeParams.id}, $scope.obj, function(res){
              if (res.result === 'success'){
                $location.path('/articles');
              } else if (res.result === 'failure') {
                $scope.alert = res.message;
              }
            });
          };
        });
      };
      $scope.title = "趣文";
      $scope.url = "articles";
      $scope.uploadFinished = function(e, data, name) {
        $scope.obj.cover = data.result.file.path;
      };
      if (editor){
        UE.getEditor('editor').destroy();
      }
      editor = UE.getEditor('editor');
      if (editor){
        editor.addListener( 'ready', function() {
          editor.setContent($scope.obj.detail, true);
          editor.focus();
          editor.addListener('contentChange', function() {
            $scope.$apply(function () {
              $scope.obj.detail = editor.getContent();
            });
          });
        });
      }
    } else {
      // 清单
      Article.query(function(articles){
        $scope.articles = articles;
      });
    };

    $scope.rmArticle = function(articleId){
      var articles = $scope.articles;
      if (!articles){
        return;
      };

      Article.remove({id: articleId});
      for (var i=0; i<articles.length; i++){
        if (articles[i].id == articleId){
          $scope.articles.splice(i, 1);
        }
      };
      $location.path('/articles');
    };
  }])
  .controller('daosCtrl', ['$scope', '$location', '$routeParams', 'Dao', function($scope, $location, $routeParams, Dao) {
  }])
  .controller('haosCtrl', ['$scope', '$location', '$routeParams', 'Hao', function($scope, $location, $routeParams, Hao) {
  }])
  .controller('daysCtrl', ['$scope', '$location', '$routeParams', 'Day', function($scope, $location, $routeParams, Day) {
  }])
  .controller('zhaosCtrl', ['$scope', '$location', '$routeParams', 'Zhao', function($scope, $location, $routeParams, Zhao) {
  }])
  .controller('qiusCtrl', ['$scope', '$location', '$routeParams', 'Qiu', function($scope, $location, $routeParams, Qiu) {
  }])
  .controller('activitiesCtrl', ['$scope', '$location', '$routeParams', '$http', 'Activity', function($scope, $location, $routeParams, $http, Activity) {
    if ($routeParams.id) {
      $http.get('/admin/communities').success(function(communities){
        $scope.communities = communities;
      });
      if ($routeParams.id === "new"){
        // 创建新的小区活动
        $scope.activity = {title:"", detail:"", communityId:"", cover: ""};
        $scope.submit = function(){
          Activity.save({}, $scope.activity, function(res){
            if (res.result === 'success'){
              $location.path('/activities');
            } else if (res.result === 'failure') {
              $scope.alert = res.message;
            }
          });
        };
      } else {
        // 更新
        Activity.get({id: $routeParams.id}, function(activity){
          $scope.activity = activity;
          $scope.submit = function(){
            Activity.save({id: $routeParams.id}, $scope.activity, function(res){
              if (res.result === 'success'){
                $location.path('/activities');
              } else if (res.result === 'failure') {
                $scope.alert = res.message;
              }
            });
          };
        });
      };
      $scope.uploadFinished = function(e, data, name) {
        $scope.activity.cover = data.result.file.path;
      };
      if (acteditor){
        UE.getEditor('acteditor').destroy();
      }
      acteditor = UE.getEditor('acteditor');
      if (acteditor){
        acteditor.addListener( 'ready', function() {
          acteditor.setContent($scope.activity.detail, true);
          acteditor.focus();
          acteditor.addListener('contentChange', function() {
            $scope.$apply(function () {
              $scope.activity.detail = acteditor.getContent();
            });
          });
        });
      }
    } else {
      // 清单
      Activity.query(function(activities){
        $scope.activities = activities;
      });
    };

    $scope.rmActivity = function(activityId){
      var activities = $scope.activities;
      if (!activities){
        return;
      };

      Activity.remove({id: activityId});
      for (var i=0; i<activities.length; i++){
        if (activities[i].id == activityId){
          $scope.activities.splice(i, 1);
        }
      };
      $location.path('/activities');
    };
  }])
  .controller('settingCtrl', ['$scope', '$location', '$routeParams', 'Admin', function($scope, $location, $routeParams, Admin) {
    if ($routeParams.id) {
      if ($routeParams.id === "new"){
        // 创建新的admin
        $scope.admin = {name:"", password:""};
        $scope.existence = false;
        $scope.submit = function(){
          if ($scope.admin.password === $scope.admin.repassword){
            Admin.save({}, $scope.admin, function(res){
              if (res.result === 'success'){
                $location.path('/setting');
              } else if (res.result === 'failure') {
                $scope.alert = res.message;
              }
            });
          } else {
            $scope.alert = "两次密码不一致";
          };
        };
      } else {
        // 更新admin
        Admin.get({id: $routeParams.id}, function(admin){
          $scope.admin = admin;
          $scope.admin.password = "";
          $scope.existence = true;
          $scope.submit = function(){
            if ($scope.admin.password === $scope.admin.repassword){
              Admin.save({id: $routeParams.id}, $scope.admin, function(res){
                if (res.result === 'success'){
                  $location.path('/setting');
                } else if (res.result === 'failure') {
                  $scope.alert = res.message;
                }
              });
            } else {
              $scope.alert = "两次密码不一致";
            };
          };
        });
      };
    } else {
      // admin清单
      Admin.query(function(admins){
        $scope.admins = admins;
      });
    };

    $scope.rmAdmin = function(adminId){
      var admins = $scope.admins;
      if (!admins){
        return;
      };

      Admin.remove({id: adminId});
      for (var i=0; i<admins.length; i++){
        if (admins[i]._id == adminId){
          $scope.admins.splice(i, 1);
        }
      };
      $location.path('/setting');
    };
  }]);
