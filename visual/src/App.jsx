import './App.css';
import './colors.css';
import NavOff from './components/navbar/navbaroff';
import MainOff from './components/main/mainoff';
import NavIn from './components/navbar/navbarin';
import Search from './components/search/search';
import Favorite from './components/favorite/favorite';

function App() {
  return (
    <div className="App main-color">
      <NavIn/>
      <main>
        <Favorite/>
      </main>
    </div>
  );
}

export default App;
