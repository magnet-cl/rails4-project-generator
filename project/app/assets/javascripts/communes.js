$(document).ready(function() {
    'use strict';
    var regionSelector = '.region-selector';
    var communeSelector = '.commune-selector';

    var $communeSelect = $(communeSelector);
    var regionData = {};
    $communeSelect.find('option').each(function() {
        var regionName = $(this).data('region');
        if (!regionData[regionName]) {
            regionData[regionName] = [];
        }
        regionData[regionName].push({
            id: $(this).val(),
            name: $(this).html()
        });
    });

    $(regionSelector).change(function() {
        var val = $(this).val();
        $(communeSelector + ' option').remove();
        var communesArray = regionData[val];
        for (var i = 0; i < communesArray.length; i++){
            $communeSelect.append(
                '<option value="' + communesArray[i].id + '">' + 
                communesArray[i].name +
                '</option>' 
            );
        }
    });
});