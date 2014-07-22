(function(){
  var app = angular.module('cardDatabase', []);

  app.controller("ListController", [ '$http', function($http){
    var list = this;
    var cards = [];

    $http.get('/api/cards').success(function(data){
      list.cards = data;
    });

    var showCardDetails = function(card){
      console.log("aqui");
      card.show = true;
    };

  } ]);

  app.controller("CardDetailsController", function(){
    this.show = false;

    this.toggleDetails = function(){
      this.show = !this.show;
    }

  });

})();
