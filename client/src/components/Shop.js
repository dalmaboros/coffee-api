import React from 'react';
import Coffee from './Coffee'

const Shop = ({shop}) =>
    <div className="single-shop" key={shop.id}>
        <h3>{shop.name}</h3>
        <p>{shop.hours}</p>
        <div>
          {shop.coffees.map(coffee => {
            return(
              <Coffee coffee={coffee} key={coffee.id} />
            )
          })}
          </div>
    </div>

export default Shop;
