(function(){
  var app = angular.module('cardDatabase', []);

  app.controller("ListController", [ '$http', function($http){
    var list = this;
    var cards = [];

    $http.get('/api/cards').success(function(data){
      list.cards = data;
    });

  } ]);

})();
