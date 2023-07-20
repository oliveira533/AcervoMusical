import React from "react";
import "./search.css";
import "../../colors.css";
import { BiSearchAlt2  } from "react-icons/bi";
import {Item} from './item/item.jsx';

export function Search(){
    return(
        <div className="content main-color font-color">
            <div className="search sec-color">
                <input type="text" className="background txb-src font-color" placeholder="Pesquisa"/>
                <button className="background btn-src"><BiSearchAlt2 className="font-color img-src"/></button>
            </div>
            <div className="wrap">
                <Item/>
                <Item/>
                <Item/>
            </div>
        </div>
    )
};