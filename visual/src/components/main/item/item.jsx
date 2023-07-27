import React from "react";
import './item.css';
import '../../../colors.css'

function Item(props){
    return(
        <div className="item sec-color">
            <img src="#" alt="" className="img" />
            <p>{props.name}</p>
        </div>
    );
};

export default Item;