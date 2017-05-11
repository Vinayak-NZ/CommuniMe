var app = angular.module('choose', ['as.sortable', 'ngResource', 'ngRoute']);
app.constant('navNames', ['Start','Choose','Rank','Compare']);
app.value('placeTypes', placeTypesArray);
app.value('ranking', false);
app.constant('genericSuburbImages', placeholderImages);

app.config(function ($routeProvider, $locationProvider) {

  $routeProvider

  .when('/', {
    templateUrl: 'home.html',
  })

  .when('/choose/', {
    templateUrl: 'choose.html',
  })

  .when('/rank/', {
    templateUrl: 'rank.html',
  })

  .when('/compare/', {
    templateUrl: 'compare.html',
  })
  
  // use the HTML5 History API
    $locationProvider.html5Mode(true);

});

app.service('topSuburbs', function () {
  this.suburbsList = [];
  this.filtered = [];
});

app.directive('progressNav', function () {
  return {
    restrict: 'E',
    templateUrl: 'progressNav.html',
    replace: true,
  };
});

// Navigation bar controller
var readyToMove = [false,false];
app.controller('NavController', ['$location','navNames', function ($location, navNames) {
      this.names = navNames;
      this.activeIndex = 0;
      this.isStrikeStart = false;
      this.isStrikeChoose = false;
      this.isStrikeRank = false;
      this.isStrikeCompare = false;
      
      this.setStrikeStart = function (strike){
        this.isStrikeStart = strike;
      };
      this.setStrikeChoose = function (strike){
        this.isStrikeChoose = strike;
      };
      this.setStrikeRank = function (strike){
        this.isStrikeRank = strike;
      };
      this.setStrikeCompare = function (strike){
        this.isStrikeCompare = strike;
      };
      this.setActive = function (index) {
        this.activeIndex = index;
      };
      
      this.setHomeNave = function () {
        this.setActive(0);
        this.setStrikeStart(false);
        this.setStrikeChoose(false);
        this.setStrikeRank(false);
        this.setStrikeCompare(false)
      }
      
      this.setChooseNav = function () {
        this.setActive(1);
        this.setStrikeStart(true)
        this.setStrikeChoose(false);
        this.setStrikeRank(false);
        this.setStrikeCompare(false)
      }
      
      this.setRankNav = function () {
        if (readyToMove[0]){  // restrict users from going to other pages
          this.setActive(2);  // before getting the result
          this.setStrikeStart(true);
          this.setStrikeChoose(true);
          this.setStrikeRank(false);
          this.setStrikeCompare(false);
          $location.path("/rank");
        }
      }
      
      this.setCompareNav = function () {
        if (readyToMove[1]){
          this.setActive(3); 
          this.setStrikeStart(true);
          this.setStrikeChoose(true);
          this.setStrikeRank(true);
          $location.path("/compare");
        }
      }
      

}]);


// Next button controller
app.controller('NextController', ['placeTypes','$filter','$http', 'topSuburbs', function(placeTypes, $filter, $http, topSuburbs){
  this.choices = placeTypes;

  this.selectItem = function(itemID){
    this.choices[itemID].active = !this.choices[itemID].active;
  };
  
  this.filtered = [];
  function isActive(obj) {
    return obj.active == true;
  }
  
  this.clicked = function(){
   
    //chosen and ready to filter
      /* filter choices leaving only actives*/
      this.filtered = placeTypes.filter(isActive);
      topSuburbs.filtered = this.filtered;
      readyToMove[0] = true;
  };
  
}]);

app.controller('rankNextController', ['placeTypes','$filter','$http', '$location', 'topSuburbs','genericSuburbImages', function(placeTypes, $filter, $http, $location, topSuburbs, genericSuburbImages) {
  
  this.filtered = topSuburbs.filtered;
  
  function createPreferenceString(array) {
    var preferenceString="";
    var length =array.length;
    if(length >0)
    {
     preferenceString=array[0].placeTypeID;
    
    for(var i=1; i<length;i++)
    {
      preferenceString +='_'+ array[i].placeTypeID;
    }
    }
    return preferenceString;
  }
  
  // at this point, the data is ranked and ready to be sent
  this.send = function () {
      //convert preferences to a _ separated string
      var preferenceString = createPreferenceString(this.filtered);
      $http.get('/runAlgorithm/'+preferenceString).then(function success(response){
       
        topSuburbs.suburbsList = response.data;
      /*topSuburbs.suburbsList is the returned list of suburbs 
      based on the preferences given*/
        this.topSuburbs = topSuburbs.suburbsList;
        
        // keep track of used generic images to ensure they are
        // only displayed once.
        var usedGenericImages = [];
        function arrayContains (array, element) {
          for (var i = 0; i < array.length; i++){
            if (array[i] === element) return true;
          }
          return false;
        }
        function getGenericImage () {
          var image = genericSuburbImages[Math.floor(Math.random() * genericSuburbImages.length)];
          if (arrayContains(usedGenericImages, image)) {
            return getGenericImage();
          }
          else {
            usedGenericImages.push(image);
            return image;
          }
        }
        for (var i = 0; i < this.topSuburbs.length; i++) {
        /* If url is empty, display an unused random 
         image from genericImages array */
          if (this.topSuburbs[i].suburb_url === '') {
            //select placeholder random image
            this.topSuburbs[i].suburb_url = getGenericImage();
            
          }
        }
        
        readyToMove[1] = true;
        // After we get the result from the database, it goes to the compare page
        comparePage();
        
      });
      
  }
  
  var comparePage = function () {
    $location.path("/compare");
  }
  
}]);

// controller for the top six results to display on the compare page
app.controller('topSixController', ['$scope', 'topSuburbs', function ($scope, topSuburbs) {
  this.suburbsList = topSuburbs.suburbsList;
  
}]);

// Drag and drop controller for ranking preferences
app.controller('ngModel', [function($scope){
  $scope.dragControlListeners = {
      accept: function (sourceItemHandleScope, destSortableScope) {
      return sourceItemHandleScope.itemScope.sortableScope.$id === destSortableScope.$id;}, //restrict dragging to other columns (this JS library is intended for multiple columns)
      //accept: function (sourceItemHandleScope, destSortableScope) {return true},//override to determine drag is allowed or not. default is true.
      itemMoved: function (event) {},
      orderChanged: function(event) {},
      contain: '#dragAndDrop'
  };

}]);