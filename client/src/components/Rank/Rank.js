import React from 'react';

const Rank = ({ name, entries }) => {
  return (
    <div>
      <div className="white f3">
        {`Hello ${name}, you have submitted a total of `}
      </div>
      <div className="white f1">{entries}</div>
      <div className="white f3">{` pictures`}</div>
    </div>
  );
};

export default Rank;
