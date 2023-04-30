import React from "react";
import './favorite.css';
import Item from "./item/item.jsx";

export function Fav(){
    return(
        <div className="content font-color">
            <label className="titulo">Seus favoritos</label><br/>
            <label className="subtitulo">Confira tudo que você marcou como favorito</label><br/>
            <div className="wrap">
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
                <Item/>
                <Item/>
                <Item/>
                <Item/>
                <Item/>
            </div>
        </div>
    )
}