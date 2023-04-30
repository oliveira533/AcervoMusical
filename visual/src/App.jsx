import './App.css';
import './colors.css';
import {MainIn} from './components/main/main';
import {NavIn , NavOff} from './components/navbar/navbar.jsx';

function App() {
  return (
    <div className="App main-color">
      <NavIn className="nav"/>
      <MainIn/>
    </div>
  );
}

export default App;
