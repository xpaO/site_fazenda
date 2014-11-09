# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  initialize()

initialize = ->
  mapOptions =
      center: new google.maps.LatLng -20.66393,   -43.78502
      zoom: 14,
      mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map $('#map_canvas')[0], mapOptions
