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
import { Alb } from './components/album/album';
import { Route, Routes } from 'react-router';

function App() {
  return (
    <div className="App main-color">
      <NavIn/>
      <Routes>
        <Route
          path='/'
          element={<MainIn/>}
        />
        <Route
          path='/home'
          element={<MainIn/>}
        />
        <Route
          path='/search'
          element={<Search/>}
        />
        <Route
          path='/fav'
          element={<Fav/>}
        />
        <Route
          path='/profile'
          element={<Profile/>}
        />
        <Route
          path='/conf'
          element={<Conf/>}
        />
        <Route
          path='/log'
          element={<Log/>}
        />
        <Route
          path='/logout'
          element={<LogOut/>}
        />
        <Route
          path='/art'
          element={<Art/>}
        />
        <Route
          path='/alb'
          element={<Alb/>}
        />
      </Routes>
    </div>
  );
}

export default App;