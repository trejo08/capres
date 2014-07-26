var map;
$(function(){
	if ($('#map-canvas').length) {
		//google.maps.event.addDomListener(window, 'load', initialize);
		$(window).load(function(){
			initialize()
		});
	} else{
		alert('no esta el div');
	};
});

function initialize(){
	var sede = new google.maps.LatLng(-89.28313, 13.67813);
	var mapOptions = {
		zoom: 8,
		center: sede
	};
	map = new google.maps.Map(document.getElementById("#map-canvas"), mapOptions);
}