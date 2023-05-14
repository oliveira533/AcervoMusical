import React from "react";
import './login.css';
import '../../colors.css';

export function Log(){
    return(
        <div className="contentainer">
            <div className="form sec-color font-color">
                <div className="box">
                    <label>Email</label><br/>
                    <input className="btn-color2" placeholder="example@email.com" type="emai"/>
                </div>
                <br/>
                <div className="box">
                    <label>Senha</label><br/>
                    <input className="btn-color2" placeholder="senha" type="password"/>
                </div>
                <br/>
                <a href="#" className="link">Esqueci a Senha</a><br/>
                <div className="btn-box">
                    <button className="btn-color1 font-color btn">Login</button>
                    <button className="btn-color2 btn">Cadastrar</button>
                </div>
            </div>
        </div>
    )
}