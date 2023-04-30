import React from "react";
import './profile.css';
import '../../colors.css';
import { FaUser  } from "react-icons/fa";

export function Profile(){
    return(
        <div className="content font-color">
            <FaUser className="icon-user-edit"/>
            <h1>User Name</h1>
            <div className="desc">
                <h2>Descrição</h2>
                <textarea className="txa"></textarea>
            </div>
        </div>
    );
};