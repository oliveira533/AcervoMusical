import React from "react";
import './main.css'
import '../../colors.css'
import Item from "./item/item.jsx";

export function MainIn(){
    return(
        <div className="content font-color">
            <h2>Principais escolhas</h2>
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
            <h2>Novidades</h2>
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