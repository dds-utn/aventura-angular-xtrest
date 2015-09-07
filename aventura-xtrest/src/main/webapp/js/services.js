var aventurasService = aventuraApp.service('aventurasService', [ '$http',
    function($http) {
      this.getAll = function() {
        return $http.get('/aventuras');
      };
      this.comenzarAventura = function(aventura) {
        return $http.post('/comenzarAventura', aventura);
      };
      this.getJuegoActual = function() {
        return $http.get('/juegoActual');
      };
    }]);