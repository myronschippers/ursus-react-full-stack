import React, { Component } from 'react';
import './App.css';
import axios from 'axios';

class App extends Component {

  componentDidMount() {
    console.log('Component App Did Mount');
    this.getSongs();
  }

  getSongs() {
    // $.ajax(
    //   {}
    // )
    axios({
      method: 'GET',
      url: '/songs'
    })
    .then((response) => {
      // update state with server data
      console.log(response.data);
    })
    .catch((err) => {
      // surface error message to user
    });
  }

  render() {
    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Songs!</h1>
        </header>

        <br />
        <p>Songs go here</p>
      </div>
    );
  }
}

export default App;
