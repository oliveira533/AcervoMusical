import React from 'react';
import './mainoff.css';
import Carrousel from './carroussel/carrousel.jsx';

function MainOff(){
    return(
        <main className='body main-color'>
            <div className='most-pop'>
                <Carrousel/>
                <Carrousel/>
                <Carrousel/>
                <Carrousel/>
            </div> 
        </main>
    );
};

export default MainOff;