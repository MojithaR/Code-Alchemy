import React, { useState, useEffect } from 'react';

function Counter() {
  // useState hook to manage the count state
  const [count, setCount] = useState(0);

  // useEffect hook to update document title
  useEffect(() => {
    document.title = `Count: ${count}`;
  }, [count]); // Only re-run the effect if count changes

  // Function to handle incrementing the count
  const increment = () => {
    setCount(prevCount => prevCount + 1);
  };

  // Function to handle resetting the count
  const reset = () => {
    setCount(0);
  };

  return (
    <div>
      <h1>Counter App</h1>
      <p>Count: {count}</p>
      <button onClick={increment}>Increment</button>
      <button onClick={reset}>Reset</button>
    </div>
  );
}

export default Counter;
