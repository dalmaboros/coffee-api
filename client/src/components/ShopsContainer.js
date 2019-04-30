import React, { Component } from 'react';
import Shop from './Shop';
import { Link } from 'react-router-dom';

class ShopsContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      shops: [],
    }
  }

  componentDidMount() {
    fetch('/api/v1/shops', {
      accept: 'application/json',
    })
      .then(response => response.json())
      .then(json => {
        console.log(json);
        this.setState({
          shops: json
        })
      })
      .catch(error => console.log(error))
  }



  render () {
    const renderShops = Object.keys(this.state.shops).map(shopId =>
      <li><Link key={shopId} to={`/shops/${shopId}`}>{this.state.shops[shopId].name} </Link></li>
    );

    return (
      <div className="shops-container">
      <h2 className="App-title">Coffee Shops</h2>
        {this.state.shops.map( shop => {
          return (<Shop shop={shop} key={shop.id} />)
        })}
        <h2>Coffee Shops Again</h2>
        {renderShops}
      </div>
    )
  }
}

export default ShopsContainer;
