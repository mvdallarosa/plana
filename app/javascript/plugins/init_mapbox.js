import mapboxgl from 'mapbox-gl';
// import MapboxDirections from "@mapbox/mapbox-gl-directions";

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};


const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mvdallarosa/ckham75l63dvm19mvvfqpfwgz'
    });
    map.addControl(
      new MapboxDirections({
          accessToken: mapboxgl.accessToken
      }),
      'top-left'
    );
    // const tripInstructions = [];
    // for (let i = 0; i < steps.length; i++) {
    //   tripInstructions.push('<br><li>' + steps[i].maneuver.instruction) + '</li>';
    //   instructions.innerHTML = '<br><span class="duration">Trip duration: ' + Math.floor(data.duration / 60) + ' min  </span>' + tripInstructions;
    // }
    const distance = JSON.parse(mapElement.dataset.duration);
    console.log(distance)

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    fitMapToMarkers(map, markers);
  });
  }
};

export { initMapbox };
