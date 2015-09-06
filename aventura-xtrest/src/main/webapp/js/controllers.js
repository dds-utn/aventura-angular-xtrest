var loginController = aventuraApp.controller('LoginController', [ '$scope', '$http',
    function($scope, $http) {
      $scope.login = function() {
        $http.post('/login', {nombre: $scope.nombre}).success(function(data){
          console.log(data);
        });
      }
    }
]);