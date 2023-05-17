import './App.css';
import './colors.css';
import { MainIn } from './components/main/main';
import { NavIn , NavOff } from './components/navbar/navbar';
import { Search } from './components/search/search';
import { Fav } from './components/favorite/favorite';
import { Profile } from './components/profile/profile';
import { Conf } from './components/config/config';
import { Log } from './components/login/login';
import { LogOut } from './components/logout/logout';
import { Art } from './components/artist/artist';

function App() {
  return (
    <div className="App main-color">
      <NavIn className="nav"/>
      {/* <MainIn/> */}
      <Art/>
    </div>
  );
}

export default App;
