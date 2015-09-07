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
    'aventurasData', '$scope', function(aventurasData, $scope) {
        var aventuras = aventurasData.data.aventuras;
        $scope.aventuraSeleccionada = aventuras[0];
        $scope.aventuraActual = aventurasData.data.aventuraActual;
        $scope.aventuras = aventurasData.data.aventuras;
    } ]);