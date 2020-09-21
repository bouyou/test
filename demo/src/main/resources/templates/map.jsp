<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Map</title>
    <meta name="author" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.rawgit.com/openlayers/openlayers.github.io/master/en/v5.3.0/css/ol.css" type="text/css">
    <script
      src="https://code.jquery.com/jquery-3.5.1.min.js"
      integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
      crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css"
       integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A=="
       crossorigin=""/>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>

<body>
<p>Map</p>

<div id="map" style="width: auto; height: 600px;"></div>

</body>

<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"
   integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA=="
   crossorigin=""></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script th:inline="javascript">
/*<![CDATA[*/


    $( document ).ready(function() {

    var mymap = L.map('map').setView([50.633 , 3.066], 13);
    L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox/streets-v11',
        tileSize: 512,
        zoomOffset: -1,
        accessToken: 'pk.eyJ1IjoiZmFiYWFkYWRhZCIsImEiOiJja2ZhMjR2ZG4wcncxMnVvODQ3d3N1bnRnIn0.21lhMogKZobEJhyKD5tRJQ'
    }).addTo(mymap);


    	var data = /*[[${list}]]*/ 'default';

            var dataParsed = JSON.parse(data);
            var marker = L.marker([50.633 , 3.066])
            marker.bindTooltip("my tooltip text").openTooltip();
            marker.addTo(mymap);

    		for(let i = 0; i < dataParsed.length; i++){
                var marker = L.marker([dataParsed[i].ylatitude, dataParsed[i].xlongitude]);
                marker.bindTooltip(dataParsed[i].amenageur).openTooltip();
                marker.addTo(mymap);
            }
        });

/*]]>*/
</script>


</html>