import React from 'react';
import '../colors.css'
import './navbaroff.css';
import { FaUser  } from "react-icons/fa";
import { TbHomeDot  } from "react-icons/tb";

function NavOff(){
    return(
        <nav className='nav sec-color'>
            <div className='user '>
            <FaUser className='font-color icon-user'/>
            <h2 className='font-color'>User name</h2>
            </div>
            <ul className='list'>
                <li><TbHomeDot/> Home</li>
                <li></li>
                <li></li>
            </ul>
        </nav>
    )
};

export default NavOff;