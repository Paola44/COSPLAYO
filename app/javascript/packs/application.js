import "bootstrap";

import "../plugins/flatpickr";

import {initAutocomplete} from "../plugins/init_autocomplete";

initAutocomplete();


import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
