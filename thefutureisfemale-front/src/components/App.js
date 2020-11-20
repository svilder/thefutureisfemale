import React, { useState } from 'react';
import thefutureisfemale_api from '../api/thefutureisfemale_api';
import Sky from './Sky';
import FemaleCharacters from './FemaleCharaters';
import './App.css';

const App = () => {
  const [ female_characters, setFemale_characters ] = useState('');

  const search = async () => {
    const response = await thefutureisfemale_api.get('/api/v1/female_characters');
    setFemale_characters(response.data);
  }
  //console.log(female_characters[0].name);
  //search()

  return (
    <div>
      <Sky />
      <div className="container">
        <FemaleCharacters female_characters={female_characters} />
      </div>
      <svg height="100" width="100" className="moon">
        <circle cx="50" cy="50" r="50" fill="#F7F3E3" />
      </svg>
    </div>
  );
}

export default App;
