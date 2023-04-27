import './App.css';
import './colors.css';
import NavOff from './components/navbar/navbaroff.jsx';
import MainOff from './components/main/mainoff.jsx';
import NavIn from './components/navbar/navbarin.jsx';
import Search from './components/search/search.jsx';
import Favorite from './components/favorite/favorite.jsx';

function App() {
  return (
    <div className="App main-color">
      <NavIn/>
      <Favorite/>
    </div>
  );
}

export default App;
