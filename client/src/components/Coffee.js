import React from 'react';

const Coffee = ({coffee}) =>
    <div className="single-coffee" key={coffee.id}>
      <h4>{coffee.name}</h4>
      <b>Roaster</b>: {coffee.roaster}<br/>
      <b>Origin</b>:
      {coffee.origins.map((origin, index) => {
        return (index ? ', ' : '') + " " + origin.region
      })}
      <br/>
      <b>Processing</b>:
      {coffee.processing_methods.map((processing_method, index) => {
        return (index ? ', ' : '') + " " + processing_method.name
      })}
      <br/>
      <b>Flavors</b>:
      {coffee.flavors.map((flavor, index) => {
        return (index ? ', ' : '') + " " + flavor.name
      })}
      <br/>
      <br/>

      <b>Description</b>: {coffee.description}<br/>
      <b>Producer</b>: {coffee.producer}<br/>
      <b>Washing Station</b>: {coffee.washing_station}<br/>
      <b>Altitude</b>: {coffee.min_altitude}<br/>
      <b>Varieties</b>:
      {coffee.varieties.map((variety, index) => {
        return (index ? ', ' : '') + " " + variety.name
      })}
      <br/>

    </div>

export default Coffee;
