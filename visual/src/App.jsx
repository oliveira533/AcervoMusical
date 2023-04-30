import './App.css';
import './colors.css';
import { MainIn } from './components/main/main';
import { NavIn , NavOff } from './components/navbar/navbar';
import { Search } from './components/search/search';
import { Fav } from './components/favorite/favorite'

function App() {
  return (
    <div className="App main-color">
      <NavIn className="nav"/>
      <Fav/>
    </div>
  );
}

export default App;
