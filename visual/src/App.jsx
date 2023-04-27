import './App.css';
import './colors.css';
import MainIn from './components/main/main';
import NavIn from './components/navbar/navbarin.jsx';

function App() {
  return (
    <div className="App main-color">
      <NavIn className="nav"/>
      <MainIn/>
    </div>
  );
}

export default App;
