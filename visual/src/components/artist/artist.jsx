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
            <ul className='art-list font-color'>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
               <li><img src="#" className='art-item'/> Album1</li>
            </ul>
        </div>
    )
}