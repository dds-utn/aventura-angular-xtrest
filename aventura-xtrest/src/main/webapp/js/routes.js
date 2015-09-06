'use strict';

aventuraApp.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise("/login");

  $stateProvider.state('login', {
    url : '/login',
    templateUrl : 'templates/login.html',
    controller : 'LoginController as loginCtrl',
    data : {},
    resolve : {}
  })
});
