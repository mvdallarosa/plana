import mapboxgl from 'mapbox-gl';
// import MapboxDirections from "mapbox-gl-directions";

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
      container: mapElement,
      style: 'mapbox://styles/mvdallarosa/ckham75l63dvm19mvvfqpfwgz'
    });

    const directions = new MapboxDirections({
          accessToken: mapboxgl.accessToken
      })
    map.addControl(directions, 'top-left');

    directions.on("route", () => {
      const distance = document.querySelector('.mapbox-directions-route-summary>h1')
      const duration = document.querySelector('.mapbox-directions-route-summary>span')
      // console.log(distance.innerText);
      const number = Number(distance.innerText.substring(0, distance.innerText.length - 2));
      const car = document.querySelector('#car-result')
      const metro = document.querySelector('#metro-result')
      const walk = document.querySelector('#walk-result')
      car.innerHTML = `${Math.floor(number*1.60934*0.133)} Kg CO2`
      metro.innerHTML = `${Math.floor(number*1.60934*0.059)} Kg CO2`
      walk.innerHTML = `${Math.floor(number*1.60934*0)} Kg CO2`
    })
  }
};

export { initMapbox };
