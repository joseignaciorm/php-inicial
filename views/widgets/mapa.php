<style>
	#map {
		height: 450px;
		margin-bottom: 1em;
	}
</style>

<!--
	<img src="https://maps.googleapis.com/maps/api/staticmap?zoom=15&size=100x200&maptype=roadmap&key=AIzaSyCQRr6ZjGpZJi6Qk1cVCWdJGHqiwQu7VVQ&markers=color:blue%7Clabel:Y%7C19.4326077,-99.13320799999997">
-->

<div id="map"></div>
<script>
	var map;
	function initMap() {
		var myLatLng = { lat: 19.4326077, lng: -99.13320799999997 }; // Latitud y longitud como parametros en este caso
		map = new google.maps.Map(document.getElementById('map'), {
			center: myLatLng,
			zoom: 6
		});

		// Se crea un marcador para indicar el sitio exacto de la ubicación
		var marker = new google.maps.Marker({
			position: { lat: 19.4326177, lng: -99.23320799999997 },
			map: map, //Lo colocara en la caja de map que estamos instanciando
			title: "Oficinas"
		});

	}



</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCQRr6ZjGpZJi6Qk1cVCWdJGHqiwQu7VVQ&callback=initMap" async defer></script>