'use strict';

aventuraApp.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise("/login");

  $stateProvider
    .state('login', {
      url : '/login',
      templateUrl : 'templates/login.html',
      controller : 'LoginController as loginCtrl',
    })
    .state('listarAventuras', {
      url : '/listarAventuras',
      templateUrl : 'templates/listarAventuras.html',
      controller : 'AventurasController as aventurasCtrl',
      resolve : {
        aventurasData: function(aventurasService) {
          return aventurasService.getAll();
        }
      }
    })
    .state('jugarAventura', {
      url : '/jugarAventura',
      templateUrl : 'templates/jugarAventura.html',
      controller : 'JugarAventuraController as jugarCtrl',
      resolve : {
        juegoActualData: function(aventurasService) {
          return aventurasService.getJuegoActual();
        }
      }
    });
});
