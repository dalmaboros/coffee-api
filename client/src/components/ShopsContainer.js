import React, { Component } from 'react';

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
      <div className="Lists-container">
        Here we are in the ShopsContainer. We want to render each shop below:<br />
        "Shop /"
      </div>
    )
  }
}

export default ShopsContainer;
