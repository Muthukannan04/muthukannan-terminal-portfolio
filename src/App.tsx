import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Terminal from './components/Terminal'
import './App.css';

function App() {
  return (
    <>
    <h1 className="visually-hidden">Sridamul - Personalized termial site, dig it to explore sridamul works and interests</h1>

    <Router>
      <Routes>
        <Route path="*" element={<Terminal />} />
      </Routes>
    </Router>
    </>
  );
}

export default App;
