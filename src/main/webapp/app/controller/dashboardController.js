app.controller('dashboardController', ['$scope', '$http', function($scope, $http) {

	$scope.students = [];
	$scope.clazzs = [];
	$scope.batchs = [];
	
	$http.get('/getStudentInfo').
	  success(function(data, status, headers, config) {
		  $scope.students = data
		  console.log(data);
	  }).
	  error(function(data, status, headers, config) {
		  console.log(data);
	  });
	
	$http.get('/getBatchList').
	  success(function(data, status, headers, config) {
		  $scope.batchs = data
		  console.log(data);
	  }).
	  error(function(data, status, headers, config) {
		  console.log(data);
	  });
	
	$http.get('/getClazzList').
	  success(function(data, status, headers, config) {
		  $scope.clazzs = data
		  console.log(data);
	  }).
	  error(function(data, status, headers, config) {
		  console.log(data);
	  });


}]);