import React from 'react';
import '../colors.css'
import './navbaroff.css';
import { FaUser  } from "react-icons/fa";
import { FiLogOut  } from "react-icons/fi";
import { RiHome4Fill  } from "react-icons/ri";
import { BiSearchAlt2  } from "react-icons/bi";
import { BsFillGearFill  } from "react-icons/bs";

function NavOff(){
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

export default NavOff;