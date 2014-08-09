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
//= require bootstrap.min
//= require ie-emulation-modes-warning
//= require ie10-viewport-bug-workaround
//= require turbolinks
//= require jquery.turbolinks
// require_tree .

var map;
var capres = {lat: 13.68439, lng: -89.24047}

$(document).ready(function(){
	if ($("#controller_action_name").val() === "index") {
		google.maps.event.addDomListener(window, 'load', initialize);
	};
});

function initialize() {
	var mapOptions = {
		zoom: 16,
		center: new google.maps.LatLng(capres.lat, capres.lng),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById('map-canvas'),
		mapOptions);
	var marker = new google.maps.Marker({
		position: map.getCenter(),
		map: map,
		title: "CAPRES"
	});

}