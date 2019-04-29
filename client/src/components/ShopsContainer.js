import React, { Component } from 'react';
import Shop from './Shop';

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
    return (
      <div className="shops-container">
      <h2 className="App-title">Coffee Shops</h2>
        {this.state.shops.map( shop => {
          return (<Shop shop={shop} key={shop.id} />)
        })}
      </div>
    )
  }
}

export default ShopsContainer;
