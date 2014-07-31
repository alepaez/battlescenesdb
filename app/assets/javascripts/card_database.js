(function(){
  var app = angular.module('cardDatabase', []);

  app.controller("ListController", [ '$http', function($http){
    var list = this;
    var allCards = [];
    var cards = [];
    this.filter = {
      name: "",
      alter_ego: "",
      faction: ""
    };

    this.filterCards = function(){
      list.cards = list.allCards.filter(function(card){
        return card.name.match(RegExp('.*' + list.filter.name + '.*', 'ig'))
          &&
          card.alter_ego.match(RegExp('.*' + list.filter.alter_ego + '.*', 'ig'))
          &&
          card.faction.match(RegExp('.*' + list.filter.faction + '.*', 'ig'))
          &&
          (list.powerFilterOn() ? list.powerFilter(card) : true);
      });
    };

    this.powerFilterOn = function(){
      return this.filter.elasticity == "true"
        ||
        this.filter.regeneration == "true"
        ||
        this.filter.blades == "true"
        ||
        this.filter.genius == "true"
        ||
        this.filter.super_strength == "true"
        ||
        this.filter.agility == "true"
        ||
        this.filter.telepathy == "true"
        ||
        this.filter.flying == "true"
        ||
        this.filter.ranged_attack == "true"
        ||
        this.filter.energy_attack == "true"
        ||
        this.filter.telekinesis == "true"
        ||
        this.filter.magic == "true";
    }

    this.powerFilter = function(card){
      return this.comparePower(list.filter.elasticity, card.elasticity)
        &&
        this.comparePower(list.filter.regeneration, card.regeneration)
        &&
        this.comparePower(list.filter.blades, card.blades)
        &&
        this.comparePower(list.filter.genius, card.genius)
        &&
        this.comparePower(list.filter.super_strength, card.super_strength)
        &&
        this.comparePower(list.filter.agility, card.agility)
        &&
        this.comparePower(list.filter.telepathy, card.telepathy)
        &&
        this.comparePower(list.filter.flying, card.flying)
        &&
        this.comparePower(list.filter.ranged_attack, card.ranged_attack)
        &&
        this.comparePower(list.filter.energy_attack, card.energy_attack)
        &&
        this.comparePower(list.filter.telekinesis, card.telekinesis)
        &&
        this.comparePower(list.filter.magic, card.magic);
    }

    this.comparePower = function(filterValue, cardValue){
      return filterValue == "true" ? cardValue.toString() == filterValue : true
    }

    $http.get('/api/cards').success(function(data){
      list.allCards = data;
      list.filterCards();
    });

  } ]);

  app.controller("CardDetailsController", function(){
    this.show = false;

    this.toggleDetails = function(){
      this.show = !this.show;
    }

  });

})();
