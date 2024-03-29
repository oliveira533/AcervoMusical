import React from 'react';
import './config.css';
import '../../colors.css';

export function Conf(){
    return(
        <div className='content'>
            <div className='email'>
                <h2 className='font-color'>Email cadastrado</h2>
                <input className='main-color font-color' placeholder='user@example.com' />
            </div>
            <div className='info'>
                <h2 className='font-color'>Suas informações</h2>
                <label className='font-color'>Email</label><br/>
                <input className='main-color font-color' placeholder='XX/XX/XXXX' type='date'/><br/><br/>
                <label className='font-color'>Telefone</label><br/>
                <input type="tel" className='main-color font-color' placeholder='(XX) XXXXX-XXXX' pattern="\([0-9]{2}\) [0-9]{4}-[0-9]{4}" required />
            </div>
            <div className='password'>
                <h2 className='font-color'>Suas informações</h2>
                <label className='font-color'>Senha antiga</label><br/>
                <input className='btn-color2 password' type='password'/><br/><br/>
                <label className='font-color'>Senha nova</label><br/>
                <input className='btn-color2 password' type="password" />
            </div>
            <button className="button btn-color1 font-color">Salvar</button>
        </div>
    );
};