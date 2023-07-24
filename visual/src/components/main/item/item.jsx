import React from "react";
import './item.css';
import '../../../colors.css'

function Item(props){
    return(
        <div className="item sec-color">
            <img src={props.image} alt="" className="img" />
            {props.name}
        </div>
    );
};

export default Item;