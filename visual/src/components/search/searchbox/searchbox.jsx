import React from "react";
import './searchbox.css';
import '../../../colors.css';
import { BiSearchAlt2  } from "react-icons/bi";

function SearchBox(){
    return(
        <div className="container sec-color">
            <BiSearchAlt2 className="icon"/>
            <input type="text"/>
        </div>
    )
}

export default SearchBox;