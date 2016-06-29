angular.module 'kandooApp', []
  .controller 'WelcomeController', ['$scope', '$http', ($scope, $http) ->
    $scope.test = "Hello World"

    $scope.showForm = false
    todaysDate = new Date

    $scope.newTask = {
      title: '',
      description: '',
      dueDate: ''
    }

    $http.get('/api/v1/tasks').success (response, status) ->
      $scope.tasks = response

    $scope.showTaskForm = ->
      $scope.showForm = true

    $scope.submitTask = ->

      $http.post('/api/v1/task', $scope.newTask, {}).success (response, status) ->
        $scope.tasks.push response

  ]
