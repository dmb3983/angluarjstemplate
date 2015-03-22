m = angular.module('naeFlipbox', ['naeFocusInputModule'])

m.controller 'flipBoxCtrl', ['$scope', ($scope) ->
    console.log $scope
    $scope.showInput = false

    $scope.setEnable = (inputElement) ->

    $scope.frontbox = {
        title: 'None'
        showEditInput : ($event) ->
            $scope.showInput = true
            return
        hideEditInput : ($event) ->
            $scope.showInput = false
            return
    }


    return
]


m.directive 'naeFlipbox', ->
    # This is simple a demo for UI Boostrap.
    {
        restrict: 'E'
        scope: frontData: '='
        templateUrl: 'ui/naeflipbox.ui.tpl.html'
    }
m.directive 'naeFrontbox', ->
    {
        restrict: 'E'
        scope: false
        replace: true
        templateUrl: 'ui/naefrontbox.ui.tpl.html'
    }
m.directive 'naeBackbox', ->
    {
        restrict: 'E'
        scope: false
        replace: true
        templateUrl: 'ui/naebackbox.ui.tpl.html'
    }



###
    naeFocusInput
###
m = angular.module('naeFocusInputModule', [])
m.directive 'naeFocusInput', ()->
    {
        restrict: 'E'
        replace: true
        scope: {
            inputId: '@'
        }
        templateUrl: 'ui/naefocusinput.ui.tpl.html'
        controller: 'focusInputCtrl'
        controllerAs: 'ctrl'
    }
m.controller 'focusInputCtrl', ['$scope', ($scope)->

    this.showInput = false

    this.title= 'None'

    this.showEditInput = ($event) ->
        this.showInput = true
        return
    this.hideEditInput = ($event) ->
        this.showInput = false
        return

    return  # does not return anything, it will makes the controller not work

]
m.directive 'focusInputOn', ["$timeout", ($timeout)->
    {
        restrict: 'A'
        link: (scope, element, attrs)->
            attrs.$observe 'focusInputOn', (newValue)->
                if(newValue)
                    $timeout ()->
                        el = element[0]
                        el.focus()
                        el.selectionStart = el.selectionEnd = el.value.length
                        return

    }
]

angular.module('naeUi', ['naeFlipbox'])