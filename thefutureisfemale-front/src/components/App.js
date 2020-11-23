import React from 'react';
import Sky from './Sky';
import FemaleCharacters from './FemaleCharaters';
import './App.css';

const App = () => {
  return (
    <div>
      <Sky />
      <div className="container">
        <FemaleCharacters />
      </div>
      <svg height="100" width="100" className="moon">
        <circle cx="50" cy="50" r="50" fill="#F7F3E3" />
      </svg>
    </div>
  );
}

export default App;
