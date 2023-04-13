import './App.css';
import './colors.css';
import NavOff from './components/navbar/navbaroff';
import MainOff from './components/main/mainoff';
import NavIn from './components/navbar/navbarin';
import Search from './components/search/search';

function App() {
  return (
    <div className="App main-color">
      <NavIn/>
      <main>
        <Search/>
      </main>
    </div>
  );
}

export default App;
