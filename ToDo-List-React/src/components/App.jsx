import React, { useState } from "react";

function App() {
  const [inputText, setInputText] = useState("");
  const [todos, setTodos] = useState([]);

  function handleInputText(event) {
    const newValue = event.target.value;
    setInputText(newValue);
  }

  function handleChange(event) {
    setTodos(previousValue => {
      return [...previousValue, inputText];
    });
    setInputText("");
  }

  return (
    <div className="container">
      <div className="heading">
        <h1>To-Do List</h1>
      </div>
      <div className="form">
        <input
          type="text"
          name="todo"
          value={inputText}
          onChange={handleInputText}
        />
        <button onClick={handleChange}>
          <span>Add</span>
        </button>
      </div>
      <div>
        <ul>
          {todos.map(todoItem => (
            <li>{todoItem}</li>
          ))}
        </ul>
      </div>
    </div>
  );
}

export default App;
