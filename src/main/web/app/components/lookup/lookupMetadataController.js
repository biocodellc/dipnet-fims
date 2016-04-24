angular.module('fims.lookup')


.controller('LookupMetadataCtrl', ['$state', '$scope', '$http', '$stateParams', 'LookupFactory',
    function ($state, $scope, $http, $stateParams, LookupFactory) {
        var vm = this;
        vm.identifier = LookupFactory.identifier;
        vm.metadata = fetchMetadata();
        vm.filteredMetadata = filterMetadata;

        function filterMetadata() {
            var filteredMetadata = {};
            var metadataToExclude = ['identifier', 'datasets', 'download'];
            angular.forEach(vm.metadata, function(value, key) {
                if (metadataToExclude.indexOf(key) == -1 && value.value.trim()) {
                    filteredMetadata[key] = value;
                }
            });
            return filteredMetadata;
        }


        function fetchMetadata() {
            vm.identifier = $stateParams.ark;
            if (!angular.isUndefined(vm.identifier)) {
                LookupFactory.identifier = vm.identifier;
                var metadata = {};
                LookupFactory.fetchMetadata().then(
                    function(data, status, headers, config) {
                        angular.extend(metadata, data.data);
                    },
                    function (data, status, headers, config) {
                        if (status == 404) {
                            vm.error = "Invalid identifier";
                        } else {
                            vm.error = data.data.usrMessage;
                        }
                    });
                return metadata;
            } else {
                $state.go('lookup');
            }
        }

    }])