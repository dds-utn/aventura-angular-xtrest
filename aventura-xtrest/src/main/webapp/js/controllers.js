var loginController = aventuraApp.controller('LoginController', [ '$scope', '$http', '$state',
    function($scope, $http, $state) {
      $scope.login = function() {
        $http.post('/login', {nombre: $scope.nombre})
          .success(function(data){
            document.cookie="usuario=" + data.nombre;
            $state.go('listarAventuras').then(function(){console.log("successful")}, function(a){console.log(a);console.log("failure")});
          });
      }
    }
]);

var listarAventurasController = aventuraApp.controller('AventurasController', function(aventurasData) {
  
});