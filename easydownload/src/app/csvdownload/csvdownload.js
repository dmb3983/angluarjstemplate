angular.module( 'csvdownload', [
  'naeUi',
  'ui.router',
  'placeholders',
  'ui.bootstrap'
])

.config(['$stateProvider', function config( $stateProvider ) {
  // $stateProvider
  // @see : https://github.com/angular-ui/ui-router
  $stateProvider.state( 'csvdownload', {
    url: '/csvdownload',
    views: {
      "main": {
        controller: 'csvdownloadCtrl',
        templateUrl: 'csvdownload/csvdownload.tpl.html'
      }
    },
    data:{ pageTitle: 'What is It?' }
  });
}])

.controller( 'csvdownloadCtrl', function CsvDownloadCtrl( $scope ) {
  // This is simple a demo for UI Boostrap.
  $scope.dropdownDemoItems = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];


  $scope.flipbox1 = {
    title : 'flip-1',
    description : 'flip-1-desc'
  };
})

;
