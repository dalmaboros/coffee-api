import React, { Component } from 'react';

class CoffeesContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      shops: [],
    }
  }

  componentDidMount() {
    fetch('/api/v1/shops.json', {
      headers: {
        "accepts": "application/json"
      }
    })
      .then(response => {
        console.log(response);
        this.setState({
          shops: response.data
        });
      })
      .catch(error => console.log(error))
  }

  render () {
    return (
      <div className="Lists-container">
        Here we are in the ShopsContainer. We want to render each shop below:<br />
        "Shop /"
      </div>
    )
  }
}

export default CoffeesContainer;
