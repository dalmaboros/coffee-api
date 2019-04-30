import React, { Component } from 'react';
import Coffee from './Coffee'

class Shop extends Component {
  constructor(props) {
    super(props);
    this.state = {
      coffees: [],
    }
  }

  componentDidMount() {
    fetch(`/api/v1/shops/${this.props.shop.id}/coffees`, {
      accept: 'application/json',
    })
      .then(response => response.json())
      .then(json => {
        console.log(json);
        this.setState({
          coffees: json
        })
      })
      .catch(error => console.log(error))
  }

  render () {
    return (
      <div className="single-shop" key={this.props.shop.id}>
        <h3>{this.props.shop.name}</h3>
        <div>
          {this.state.coffees.map(coffee => {
            return(
              <Coffee coffee={coffee} key={coffee.id} />
            )
          })}
        </div>
      </div>
    )
  }
}

export default Shop;
