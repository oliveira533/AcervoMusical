import React from "react";
import './logout.css';
import '../../colors.css';
import {AiOutlineWarning} from "react-icons/ai"

export function LogOut(){
    return(
        <div className="container">
            <div className="form sec-color font-color">
                <h1>LogOut <AiOutlineWarning/></h1>
                <label>Você realmente deseja sair da nossa plataforma?</label><br/>
                <div className="btn-box">
                    <button className="btn-color1 font-color btn">Sim</button>
                    <button className="btn-color2 btn">Não</button>
                </div>
            </div>
        </div>
    )
}