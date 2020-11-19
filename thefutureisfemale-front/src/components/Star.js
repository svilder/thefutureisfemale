import React from 'react';

const Star = () => {
  function getRandomInt(min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
  }

  const cx = getRandomInt(1, 1300)
  const cy = getRandomInt(1, 800)
  const r = Math.random() 
  return <circle cx={cx} cy={cy} r={r} fill="#F7F3E3" />;
};

export default Star;