import React, { useEffect, useState } from "react";
import './main.css';
import '../../colors.css';
import Item from "./item/item.jsx";

export function MainIn(){

    const url = 'http://localhost:8000/api/random/music';

    const [music1, setMusic1] = useState([]);
    
    useEffect(() => {
        fetch(url).then(response=>response.json().then(data=>setMusic1(data))).catch(err=>console.log(err));
    }, []);

    return(
        <div className="content font-color">
            <h2 className="title">Principais escolhas</h2>
            <div className="wrap">
                {
                    music1.map(item =>(<Item name={item.MSCNAME} />))
                }
            </div>
        </div>
    )
}
