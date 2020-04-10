import React, { Component } from 'react';
import './App.css';
import axios from 'axios';

class App extends Component {
  state = {
    songsList: []
  }

  // this method runs when component is mounted to the the App / page
  componentDidMount() {
    console.log('Component App Did Mount');
    this.getSongs();
  }

  addSong(newSongData) {
    axios({
      method: 'POST',
      url: '/songs',
      data: newSongData
      // EXPECTED FORMAT:
      // {
      //   rank: 0,
      //   artist: '',
      //   track: '',
      //   published: '',
      // }
    })
    .then((response) => {
      // update state with server data
      console.log('Server POST Response:', response.data);
      // message says "OK", so what do we do?
    })
    .catch((err) => {
      // surface error message to user
      console.log('ERROR:', err);
      alert('There was an issue saving your song. Please try again later.');
    });
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
      console.log('Server Response:', response.data);
      // store songs in local state
      this.setState(
        {
          songsList: [
            ...response.data
          ]
        },
        () => {
          console.log('NEW SONGS?', this.state.songsList);
        }
      );
    })
    .catch((err) => {
      // surface error message to user
      alert('There was an issue getting songs. Please try again later.');
    });
  }

  render() {
    const displayedSongs = this.state.songsList.map((song, index) => {
      return (
        <div key={index}>
          <h3>{song.track}</h3>
          <em>- by, {song.artist}</em>
          <p>Rank: {song.rank}</p>
          <p>{song.published}</p>
        </div>
      )
    });

    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">Songs!</h1>
        </header>

        <br />

        <div>
          <h2>Songs List</h2>
          <div>
            {displayedSongs}
          </div>
        </div>
      </div>
    );
  }
}

export default App;
