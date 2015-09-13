'use strict';

aventuraApp.config(function($stateProvider, $urlRouterProvider) {

  $urlRouterProvider.otherwise("/redirect");

  $stateProvider
    .state('redirect', {
      url: '/redirect',
      controller: 'RedirectController as redirectCtrl'  
    })
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
        aventurasData: ['aventurasService', function(aventurasService) {
          return aventurasService.getAll();
        }]
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
