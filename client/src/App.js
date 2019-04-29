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
        <ShopsContainer />
      </div>
    )
  }
}

export default App;
