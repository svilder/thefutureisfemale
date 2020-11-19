import React from 'react';
import thefutureisfemale_api from '../api/thefutureisfemale_api';
import Sky from './Sky';
import './App.css';

const App = () => {
  const search = async () => {
    const response = await thefutureisfemale_api.get('/api/v1/female_characters');
    console.log(response.data);
   }
  search()
  return (
    <div>
      <Sky />

      <svg height="100" width="100" className="moon">
        <circle cx="50" cy="50" r="50" fill="#F7F3E3" />
      </svg>
    </div>
  );
}

export default App;

