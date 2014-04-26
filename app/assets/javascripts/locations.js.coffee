# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$('.showPopover').popover('hide')

map = L.mapbox.map('map', 'jhupro.i2p1cbh2').setView([32.7154595, -117.1614801], 14)

$.ajax
  dataType: 'text'
  url: 'locations/pledge.json'
  success: (data) ->
    geojson = $.parseJSON(data)
    map.featureLayer.setGeoJSON(geojson)

map.featureLayer.on 'layeradd', (e) ->
  marker = e.layer
  properties = marker.feature.properties

  # create custom popup
  popupContent =  '<div class="popup">' +
  '<h3>' + properties.name + '</h3>' +
  '<p>' + properties.address + '</p>' +
  '</div>'

  # http://leafletjs.com/reference.html#popup
  marker.bindPopup popupContent,
    closeButton: false
    minWidth: 320