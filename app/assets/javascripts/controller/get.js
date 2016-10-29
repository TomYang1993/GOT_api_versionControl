(function() {
   'use strict';

     angular.module("app").controller('get', function($scope,$http){

     function setup(){
       $http.get('api/v1/characters.json').then(function(response){
         $scope.characters = response.data;
       })
     }

     setup();

     $scope.addCharacter = function(character){
       $http.post('api/v1/characters.json', character).success(function(response){
         console.log(response);
          $scope.message = response.data.message;
          $scope.characters.push(character);

       }).error(function(response){
          $scope.errors = response.errors;

       })
     }

     $scope.toggleOrder = function(orderAttribute){
       if (orderAttribute != $scope.orderAttribute) {
         $scope.isReverse = false;
       }
       else {
         $scope.isReverse = !$scope.isReverse;
       }
       $scope.orderAttribute = orderAttribute
     }



   });
})();
