import React, { Component } from 'react';
import './App.css';
import ShopsContainer from './components/ShopsContainer';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header>
          <h1 className="App-title">Coffee App</h1>
        </header>
        Here we are in App.js. We will want to display a list (index) of shops:
        " ShopsContainer shops=somelist"
        <ShopsContainer />
      </div>
    )
  }
}

export default App;
