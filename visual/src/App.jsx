import './App.css';
import './colors.css';
import {MainIn} from './components/main/main';
import {NavIn , NavOff} from './components/navbar/navbar.jsx';
import { Search } from './components/search/search';

function App() {
  return (
    <div className="App main-color">
      <NavIn className="nav"/>
      <Search/>
    </div>
  );
}

export default App;
