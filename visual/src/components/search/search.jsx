import React from "react";
import "./search.css";
import "../../colors.css";
import { BiSearchAlt2  } from "react-icons/bi";

export function Search(){
    return(
        <div className="content main-color">
            <div className="search sec-color">
                <input type="text" className="background txb"/>
                <button className="background"><BiSearchAlt2 className="font-color img"/></button>
            </div>
        </div>
    )
};