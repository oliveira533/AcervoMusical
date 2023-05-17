import React from 'react';
import './artist.css';
import '../../colors.css';

export function Art(){
    return(
        <div className='art-content'>
            <div className='art-title btn-color2'>
                <h1 className='band'>Nome da banda</h1>
                <h2 className='follows'>XXXX Seguidores</h2>
            </div>
        </div>
    )
}