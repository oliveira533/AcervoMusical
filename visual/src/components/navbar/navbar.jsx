import React from 'react';
import '../../colors.css'
import './navbar.css';
import { FaUser  } from "react-icons/fa";
import { FiLogOut  } from "react-icons/fi";
import { RiHome4Fill  } from "react-icons/ri";
import { BiSearchAlt2  } from "react-icons/bi";
import { BsFillGearFill  } from "react-icons/bs";
import { MdFavorite  } from "react-icons/md";

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
                    <Link to="/">
                        <RiHome4Fill /> Home
                    </Link>
                </li>
                <li className='item-list'>
                    <Link to="/search">
                        <BiSearchAlt2/> Pesquisar
                    </Link>
                </li>
                <li className='item-list'>
                    <Link to="/fav">
                        <MdFavorite/> Favoritos
                    </Link>
                </li>
            </ul>
            <ul className='list2 font-color'>
                <li className='item-list'>
                    <Link to="/conf">
                        <BsFillGearFill/> Configuração
                    </Link>
                </li>
                <li className='item-list'>
                    <Link to="logout">
                        <FiLogOut/> Sair
                    </Link>
                </li>
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
                <li className='item-list'>
                    <Link to="/">
                        <RiHome4Fill /> Home
                    </Link>
                </li>
                <li className='item-list'>
                    <Link to="/search">
                        <BiSearchAlt2/> Pesquisar
                    </Link>
                </li>
            </ul>
            <ul className='list2 font-color'>
                <li className='item-list'>
                    <Link to="/conf">
                        <BsFillGearFill/> Configuração
                    </Link>
                </li>
                <li className='item-list'>
                    <Link to="logout">
                        <FiLogOut/> Sair
                    </Link>
                </li>
            </ul>
        </nav>
    )
};