import React, { useState } from "react";
import './main.css';
import '../../colors.css';
import Item from "./item/item.jsx";

export function MainIn(){
    
    let music= []; 
    const url = 'http://localhost:8000/api/random/music'
    music = fetch(url).then(response =>{
        return response.json();
          }).then(data =>
          {
            return data;
          }).catch(err => {console.log(err);});

    // faça music deixar de ser uma promessa e se tornar um array
    console.log(music);
    
    return(
        <div className="content font-color">
            <h2 className="title">Principais escolhas</h2>
            <div className="wrap">
                <Item data={'teste'} />
            </div>
        </div>
    )
}