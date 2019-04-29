import React from 'react';

const Shop = ({shop}) =>
    <div className="single-shop" key={shop.id}>
        <h4>{shop.name}</h4>
        <p>{shop.hours}</p>
    </div>

export default Shop;
