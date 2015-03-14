app.controller('registrationCtrl', ['$scope','$http', function($scope, $http) {

	/*var form = {
			name : ,
			clazz :,
			sex :,
			address :,
			batch :,
			phoneNum :,
			college :,
			emailAddress :,
			parentName :,
			parentPhoneNum :,
				
	}*/
	$scope.form = {};
	$scope.students = [];
	
	$scope.addFormTOTable = function(form){
		var newObject = jQuery.extend({}, form);
		$scope.students.splice($scope.students.length, 1, newObject);
		$scope.form = {};
	};

	$scope.edit = function(student){
		$scope.form = jQuery.extend({}, student);
	};
	
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