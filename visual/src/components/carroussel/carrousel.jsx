import React from 'react';
import Slider from 'react-slick';
import "slick-carousel/slick/slick.css"; 
import "slick-carousel/slick/slick-theme.css";
import "../../colors.css";
import "./carrousel.css";

function Carrousel(){
    var settings = {
        dots: false,
        arrows: false,
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        pauseOnHover: true
      };
      return (
        <div className='font-color carrousel'>
          <h2>Lorem ispsum</h2>
          <Slider {...settings}>
            <div>
              <div className='sec-color slide'>1</div>
            </div>
            <div>
              <div className='sec-color slide'>2</div>
            </div>
            <div>
              <div className='sec-color slide'>3</div>
            </div>
            <div>
              <div className='sec-color slide'>4</div>
            </div>
            <div>
              <div className='sec-color slide'>5</div>
            </div>
            <div>
              <div className='sec-color slide'>6</div>
            </div>
          </Slider>
        </div>
    )
};

export default Carrousel;