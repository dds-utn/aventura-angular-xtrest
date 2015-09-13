var loginController = aventuraApp.controller('LoginController', [ '$scope',
    '$http', '$state', function($scope, $http, $state) {
      $scope.login = function() {
        $http.post('/login', {
          nombre : $scope.nombre
        }).success(function(data) {
          document.cookie = "usuario=" + data.nombre;
          $state.go('listarAventuras');
        });
      }
    } ]);

var listarAventurasController = aventuraApp.controller('AventurasController', [
    'aventurasData',
    '$scope',
    'aventurasService',
    '$state',
    function(aventurasData, $scope, aventurasService, $state) {
      var aventuras = aventurasData.data.aventuras;
      $scope.aventuraSeleccionada = aventuras[0];
      $scope.aventuraActual = aventurasData.data.aventuraActual;
      $scope.aventuras = aventurasData.data.aventuras;

      $scope.continuarActual = function() {
        $state.go('jugarAventura')
      };

      $scope.comenzarAventura = function() {
        aventurasService.comenzarAventura($scope.aventuraSeleccionada).success(
            function() {
              $scope.continuarActual();
            });
      };
    } ]);

var jugarAventuraController = aventuraApp.controller('JugarAventuraController',
    [ '$scope', 'juegoActualData', function($scope, juegoActualData) {
      juegoActualData
      $scope.aventuraActual = juegoActualData.data.aventuraActual;
      $scope.casilleroActual = juegoActualData.data.casilleroActual;
    } ]);

var redirectController = aventuraApp.controller('RedirectController', ['$state', function($state) {
    if(document.cookie.indexOf('usuario') >= 0) {
      $state.go('listarAventuras');
    } else {
      $state.go('login');
    }
}]);
