import React from 'react';
import '../../colors.css'
import './navbar.css';
import { FaUser  } from "react-icons/fa";
import { FiLogOut  } from "react-icons/fi";
import { RiHome4Fill  } from "react-icons/ri";
import { BiSearchAlt2  } from "react-icons/bi";
import { BsFillGearFill  } from "react-icons/bs";
import { MdFavorite  } from "react-icons/md";

import { MainIn } from '../../components/main/main';
import { Search } from '../../components/search/search';
import { Fav } from '../../components/favorite/favorite';
import { Profile } from '../../components/profile/profile';
import { Conf } from '../../components/config/config';
import { Log } from '../../components/login/login';
import { LogOut } from '../../components/logout/logout';
import { Art } from '../../components/artist/artist';
import { Alb } from '../../components/album/album';

import { Route, Routes } from 'react-router';
import { Link } from 'react-router-dom';

export function NavIn(){
    return(
        <nav className='nav sec-color'>
            <div className='user '>
            <FaUser className='font-color icon-user'/>
            <h2 className='font-color'>User name</h2>
            </div>
            <ul className='list1 font-color'>
                <li className='item-list'>
                    <Link to="/search">
                        <RiHome4Fill /> Home
                    </Link>
                </li>
                <li className='item-list'><BiSearchAlt2/> Pesquisar</li>
                <li className='item-list'><MdFavorite/> Favoritos</li>
            </ul>
            <ul className='list2 font-color'>
                <li className='item-list'><BsFillGearFill/> Configuração</li>
                <li className='item-list'><FiLogOut/> Sair</li>
            </ul>
        </nav>
    )
};

export function NavOff(){
    return(
        <nav className='nav sec-color'>
            <div className='user '>
            <FaUser className='font-color icon-user'/>
            <h2 className='font-color'>User name</h2>
            </div>
            <ul className='list1 font-color'>
                <li className='item-list'><RiHome4Fill/> Home</li>
                <li className='item-list'><BiSearchAlt2/> Pesquisar</li>
            </ul>
            <ul className='list2 font-color'>
                <li className='item-list'><BsFillGearFill/> Configuração</li>
                <li className='item-list'><FiLogOut/> Sair</li>
            </ul>
        </nav>
    )
};