import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import * as serviceWorker from './serviceWorker';
import { BrowserRouter as Router, Route, NavLink } from 'react-router-dom';
import ShopsContainer from './components/ShopsContainer';
import { createStore } from 'redux';
import { Provider } from 'react-redux';
import shopsReducer from './reducers/shopsReducer.js';

const store = createStore(shopsReducer, window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__());

/* Add basic styling for NavLinks */
const link = {
  width: '100px',
  padding: '12px',
  margin: '0 6px 6px',
  background: 'blue',
  textDecoration: 'none',
  color: 'white',
}

/* Add the navbar component */
const Navbar = () =>
  <div>
    <NavLink
      to="/"
      /* set "exact" so it knows to only set activeStyle when route is deeply equal to link */
      exact
      /* add styling to Navlink */
      style={link}
      /* add prop for activeStyle */
      activeStyle={{
        background: 'darkblue'
      }}
    >Home</NavLink>
    <NavLink
      to="/shops"
      exact
      style={link}
      activeStyle={{
        background: 'darkblue'
      }}
    >Shops</NavLink>
    <NavLink
      to="/coffees"
      exact
      style={link}
      activeStyle={{
        background: 'darkblue'
      }}
    >Coffees</NavLink>
    <NavLink
      to="/login"
      exact
      style={link}
      activeStyle={{
        background: 'darkblue'
      }}
    >Login</NavLink>
  </div>;

  ReactDOM.render(
    <Provider store={store}>
      {' '}
      (
        <Router>
          <React.Fragment>
            <Navbar />
            <Route exact path="/" component={App} />
            <Route path='/shops' component={ShopsContainer} />
          </React.Fragment>
        </Router>)
    </Provider>,
    document.getElementById('root')
  );

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
