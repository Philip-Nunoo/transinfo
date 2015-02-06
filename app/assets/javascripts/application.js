// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require foundation
//= require highcharts

// Reveal added
$(function() {
	$(document).foundation();
});

function calcRoute(directionService, directionsDisplay, origin, destination) {

  var request = {
    origin: origin,
    destination: destination,
    // waypoints:[{location: 'Bourke, NSW'}, {location: 'Broken Hill, NSW'}],
    travelMode: google.maps.TravelMode.DRIVING
  };
  directionsService.route(request, function(response, status) {
    if (status == google.maps.DirectionsStatus.OK) {
      directionsDisplay.setDirections(response);
    }
  });
}
var marker;
function createMarker(coords, map, title){
	marker = new google.maps.Marker({
		position: coords,
		map: map,
		title: title
	});
}

function createImage(url){
	var image = {
		url: url,
    	// This marker is 32 pixels wide by 32 pixels tall.
    	size: new google.maps.Size(32, 32),
    	// The origin for this image is 0,0.
    	origin: new google.maps.Point(0,0),
    	// The anchor for this image is the base of the flagpole at 0,32.
    	anchor: new google.maps.Point(0, 32)
    };
    return image;
}

function createCustomMarker(coords,map,title){
	marker = new google.maps.Marker({
		position: coords,
		map: map,
		title: title,
		icon: createImage("/assets/icon.png")
	});
}

// function createInfoWindow(text){
// 	var infowindow = new google.maps.InfoWindow({
// 		content: text
// 	});
// 	return infowindow;
// }

// Put the following code in an initialize() function
// add infowindow when clicking on the simple marker marker
// var info = createInfoWindow("Congratulations!");
// google.maps.event.addListener(marker, 'click', function() {
//   info.open(map,marker);
// });
