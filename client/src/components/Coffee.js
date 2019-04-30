import React from 'react';

const Coffee = ({coffee}) =>
    <div className="single-coffee" key={coffee.id}>
      <h4>{coffee.name}</h4>
      <b>Description</b>: {coffee.description}<br/>
      <b>Roaster</b>: {coffee.roaster}<br/>
      <b>Producer</b>: {coffee.producer}<br/>
      <b>Washing Station</b>: {coffee.washing_station}<br/>
      <b>Altitude</b>: {coffee.min_altitude}<br/>
      <br/>
      <b>Flavors</b>:
      {coffee.flavors.map((flavor, index) => {
        return (index ? ', ' : '') + " " + flavor.name
      })}

    </div>

export default Coffee;
