import React from "react";
import './search.css';
import '../../colors.css'
import ItemSearch from "./items/item";
import SearchBox from "./searchbox/searchbox";

function Search(){
    return(
        <div className="body main-color font-color">
            <SearchBox/>
            <h3 className="title">Resultados</h3>
            <ItemSearch/>
        </div>
    )
}

export default Search;