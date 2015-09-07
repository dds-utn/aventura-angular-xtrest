var aventurasService = aventuraApp.service('aventurasService', [ '$http',
    function($http) {
      this.getAll = function() {
        return $http.get('/aventuras');
      }
    }]);