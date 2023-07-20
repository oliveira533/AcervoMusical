import React from "react";
import './profile.css';
import '../../colors.css';
import { FaUser  } from "react-icons/fa";

export function Profile(){
    return(
        <div className="content-user font-color">
            <FaUser className="icon-user-edit"/>
            <input className="user-name font-color main-color" placeholder="user name"/>
            <div className="desc">
                <h2>Descrição</h2>
                <textarea className="txa btn-color2"></textarea>
            </div>
            <div className="container-save">
                <button className="button btn-color1 font-color">Salvar</button>
            </div>
        </div>
    );
};