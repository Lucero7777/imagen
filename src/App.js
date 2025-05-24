// src/App.js
import React from 'react';
import './App.css'; // Asegúrate de que este CSS esté enlazado
import trollFaceImage from './assets/troll_face.jpeg'; // Importa tu imagen

function App() {
  return (
    <div className="App">
      <header className="App-header">
        {/* Aquí va la imagen */}
        <img
          src={trollFaceImage}
          className="troll-image" // Agregamos una clase para estilos CSS
          alt="Troll Face Meme"
        />
      </header>
    </div>
  );
}

export default App;
