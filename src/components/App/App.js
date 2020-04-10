import React, { Component } from 'react';
import './App.css';
import axios from 'axios';

class App extends Component {
  state = {
    newSong: {
      track: '',
      artist: '',
      published: '',
      rank: 0,
    },
    songsList: []
  }

  // this method runs when component is mounted to the the App / page
  componentDidMount() {
    console.log('Component App Did Mount');
    this.getSongs();
  }

  //
  // EVENT HANDLERS
  // -------------------

  submitNewSong = (event) => {
    event.preventDefault();
    console.log('NEW SONG:', this.state.newSong);
  }

  changeNewSong = (event, newSongKey) => {
    // any update to state uses this.setState();
    this.setState({
      newSong: {
        ...this.state.newSong,
        [newSongKey]: event.target.value,
      }
    })
  }

  //
  // API SERVER CALLS
  // -------------------

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

        <form onSubmit={this.submitNewSong}>
          <h2>Add New Song</h2>
          <label>
            <span>Track:</span>
            <input
              type="text"
              placeholder="Enter song track name"
              required
              onChange={(event) => this.changeNewSong(event, 'track')}
            />
          </label>
          <label>
            <span>Artist:</span>
            <input
              type="text"
              placeholder="Enter artist's name"
              required
              onChange={(event) => this.changeNewSong(event, 'artist')}
            />
          </label>
          <label>
            <span>Date Published:</span>
            <input
              type="text"
              placeholder="01/01/1980"
              onChange={(event) => this.changeNewSong(event, 'published')}
            />
          </label>
          <label>
            <span>Rank:</span>
            <input
              type="text"
              placeholder="Enter song's rank"
              onChange={(event) => this.changeNewSong(event, 'rank')}
            />
          </label>

          <button>Save Song</button>
        </form>

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
