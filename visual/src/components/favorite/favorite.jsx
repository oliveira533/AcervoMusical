import React from 'react';
import './favorite.css';
import Item from './item/favitem';

function Favorite(){
    return(
        <div className='main font-color'>
            <h1 className='size'>Seus artistas favoritos.</h1>
            <p className='size'>Confira os artistas que você marcou como favorito</p>
            <div className='wrap'>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
            </div>
        </div>
    )
};

export default Favorite;