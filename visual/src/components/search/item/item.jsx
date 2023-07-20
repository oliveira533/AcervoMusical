import React from "react";
import './item.css';
import '../../../colors.css';

export function Item(){
    return(
        <div className="content-item sec-color">
            <img  src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAWIAAACOCAMAAAA8c/IFAAAAhFBMVEX///8AAAAEBAS9vb3z8/OysrKqqqrT09MbGxv8/Pzq6uqamprl5eXCwsLIyMjZ2dl4eHiGhoZgYGBoaGhUVFQREREnJyesrKzw8PDn5+cgICCNjY2hoaFra2vf39/Ozs5NTU0zMzOMjIxDQ0N8fHw7Oztzc3MsLCwXFxednZ1QUFBGRkaXpJFnAAARe0lEQVR4nO1diXarOAzFDklDFtIsTcnSLM3W5f//b7ANWJJloPPSNs3hnjlvGrCNuQhZlmQTBA0aNGjQoEGDBg0aNGjQoEGDBg0aNGjQoMGfw2Iw6P12H+4X0fB5vRMpPj5Xw/C3e/NTCFf9AptUxOyvTlYiei8OObXb58f83KjySuu9QNh3ElpmYC/fj4LgXXXu/aV/7jslk0mB6SDtyGQ6nYBDChPVyvr/kHJddMA9pxSuwc+WKTGwRya09hkUL+d48ILoldI0SCo9gyK9ILI/DpTjLSjZDoKp8GHzL+xcBcVNSU0xZFxEpsjSHnkntR8FqF5ylYGXAkwyvHyqsMGvC9Erf5FiocUW3KMUL6ZIFxQhUoco3nkvAt8NB+vIFvRSLMUec3wnFGeEdsGhT1y7oDh98aWY8pcI94ViYLG3SsBPsRQnxPFdUJxiqYtAKRZjVPsRnpLCHQ9TJEtRgW5Bg19RpJjBVu+FYnFURbr+LhOKxda9QDgvFWFTLxtZyykWZ9AsofhF+HBzFGOtKUVqD0GKU7L2cGzHFKdcDWj7SbeKYc1xbEqXUSwRx3+XYiLF4hBRKTaSneGRFBdPEWkfagmJ/4Y/u0bRlksx5NivKNSwIPVjlX+CYkUoplgWb3XgUizFDjd/hESq+77MOp1O/5D/LOqddPEqinMj5450cUrCg0OxsJLqUEyGvC2WVfE4yur24hNpVU8mqyiWhRyHfooP4/Hy+PT29vY0m4jj7/tDSilW9BzQu64P7YvajqJIMQSt7yzD6R8nZFW3BDqpZy7VFBdy7KUYGR63gCpFkeq/J+fQKq/NUQymJy3EzoTo6Q2u9hjUUBQi18c98Hpgip1Z/m+jmmIOueHAUnzK247m8LB76yNUbRnWo9jMcKL7oZgzuKToZrU5iu2Qh8R0x1x8iCp26lFsJvbARfTXKfYgG3WAjwJav5m+HOcPSJ1kHXHbjsW6V1OKjRzfPcXZPA65gQC0WRE9gaPn0l7kqElxOo1/uB9F4cNFj11AUUyRbads56iwfLXtVwf1KE6bXfuleD/ajDabTavVqowS/Ay+RrG0pGlhARRvoREm3tJp9gOo+FnVD4MST1vJLNw39dh9H21fwRelOL9RLUiI4mHwiYpFoC1J3t4oZrGtrSgwfBSzjr+fx5co7l4K0lISF4TinqVUKlJfiicixTO6qC2JQQJL/0rx4pc4JSih+Oj0eQJNJWX/Ioq130CTqv/pw8BeC13UR3HPT3EnFrwFKTwUy5uZ5pVQHI7pPc1gPFSKI/yp5s2qgh3hIP6Z4rXys36N4noj7PfDS7GyZPek27MgAbNpKTYte9faNbGzJ/H4NEQX/R8UpzSuPLVYf7EUl1/hk0GJFI/IDFd7WIDPXooDuDNNoo87Err2FJuX6OKURm+UldfFK+52fwOlFAevuNdKu508r6uR0zZ7TiI/vodiKfYlFoWiOO0Oa7vxFP++FzNDOcUR7rWieFNKMe8Yop56jxSPqyjGHn54zqW43nTyJ1BOcRCjbusxmiXRatsLfxoF9TwUtyspDlwrR7gUHw6Hk7wZIa6iOB1HgNxoihPBDu1ZgFPpb+dsegAbxntwBl6wkmJltDjNY4o/9dOkMcRfRBXFMICTWZot9m1tRQbpwO+elllKBgVqXZT5KHKKA8eS/MtuIONFgUcyYx6H3TIOxZPBG0O/Ok/T4TTQcPpai+KU43ujOPiwr3NGMYz+1gfj98I6Oa5HseIYK4s/T3HPodg34pVBMhxHF/jSH4KaFAPnx51QrKxRQjGx5epyPCTXPiBpVCTWo5jq479PcVDcT+FYgaHlL+AMLakhlkXddk2KyfznDiguTAjru5r5XDJlUFlpmSTHnRM5o02tuhSHJ/gCYIpP8dCidQO+oDoUBxNBKSY5ELUpVv8ul134G1JYl+IgOnhjdwQ3nXBlKY4ySwx4YP/HiKcFzyP8WeCpNsWKY3gOUozNjT9Ccao3db8Bxf9nxPNAWhdGfYq1HMvi3J+X4nweDeMI2KeWTt86oweAUacyOd7W3eWNfoFioCv+Vn4xdMlCis0kAYVqyF05YRzqbPbjo6jzFYqD6NOe+0MU+6Q46Ds0LhijKyBVKs0OVQCsPvRT3HKaD7RhnVF8B4rCOCkxjdhfzwQjJxUUa126j0ENqH0wxaz7V00P5f1QHLs0ItcwQ3G0L2VYoYu9Q7A3CY5A893XXbhxiiGnJbo40GYaoRElVn4ELrCvEsKI9ykmbl3YG0yxZ01fovLm2moqdLsUL0TXIJ0PpDOv1lM6MTC/nc65knouSnefXgIGcX46h804vkxabmBiK9MLqzrL5TxlX+qOqN+8Lk4RXrLotL3GEl30BvJVQgv1Myp+OXGD2FUGpLKLKMSINpvV6+vrw6bHhyXw5UFtbxQjXCqK6XWq690mpreSX4MQzn0S/hdxmyJxm71q0KBBgwYNGjRo0KBBgztF9CWXQVTi+LhN9HRWQZ5hEG82rI9vM6SI44fBxtnwh6vayioMmcyFZHucFC62x07Fqs5N+7gvSr+0Nu5jye+j5d5F0ipuk14meugcjzvxeBxvvyP52E1nPE2fHep8ju3TS5/ZuwoCpnqTvRej5xkNfuz63ntMVk7e54Xue9m35xwP0DuoiJ7NegrjtbPr76XpWe2zxhIy4UuZG409TStA3/sFtRn2+eZeWD9u78yXxtvPDEHAinIMYgpgK6iQWYlzvrKz3reg6gllr/spViGyT3+fQN6ImEOKdfIbl9Kd0uYqAL20ji39BKWuDc+0nSZcirfOxjA6bNi/qq5nKJZmbRzcsKdEivWN+5QoCpQCKU52ZUHoLtHaC9Mpdh2DEIcQFbSnsBxzFK+E7zGXvZlfhXdZoIBbBJYpCg3e+Y3fQivF26pslVfYSlXexbzgY4BPtDx9ecoOeZSPxhU5LqPYvmuVFLNyTBIqCorj6jwKEPCrkYiY5ycjiomucKX4vawX++v580spLuSgiuK0r4z62uFCOcU1GAabxY7Kd4c1iBmKyX4iDsXbsobpplvXo9i55JahWLJ9e3Wapu9hRjFasVe05bQ4LhjGPcy2ZSTlNwzF9jhL8R43azZ8zPp01Q0ryEpbyvKSoZiDdPMS1vSBGYp7b7SiB62MNFmn9NJDsVVglOIYNKb+unSL9rvX3dimXFHkwlSHYryBsVKhhBBjUeyowI7XvSRJ2u4caMSUXq7aSS95WDvd1qsMFvQoWKtDh7s+6t50E4VJluG/v/b0HD2x7bZ9INT0KMWZltwOxwLsVyOKLdoMoq5rZalJxTM4rCqBV7L9BvWF3tibTE/21kaI1kKgnip17IyM6vzIpVg9a1Quy9rSuXauxrs6hnPUx6O5toXtwmCOSETW7Ae9W6FXbZBMqzEaVaIz1skjmA6u1oOg0skUlVZPeMWqEsMxoRhlmhd7QImfysMCeWDSyB6kGCgEnP4HTSRuMa5SFM/oiGN8ooXVYobVOV06BpeASb3L0IK3ETTHhGK4y5Y1EQ+Tn1qEbmcG0mT5eijGHT2j40AbZFDDHcrZZLKvifBDwo5uaau/pd4sZcEJcWa7EYqRTiksxOTHslvQ+lg1OMA1MmhYg7f0WBxN0B3mZVKKH8BhUN4i2S8LzGEjeg0pRYRmiQ+cRZGfYnQx6PsvZGahATvBuz0giqHNZymjZrTBHrfzVjlwI5FndSSysVd+itN7oBTjlVU//zkg1Ne4JsWFooCKeN61PwYoPX7sXpYAjrtsCm0Ad9lL7TbHaMugrBNK8TO2i+eM1vpewLvrlFAMV6vknUTaYAAkuheBPfDcbyRQoEHfMxtAy6NC7GlD+ARzTU2xs3ht+ep8EutbAQ3SmZ9iJO3ZZBvd5yMwTy5gTxBp94v2Aq6n7nrKhNDKHnr30cIwE2jGGT/+ycx5uJRgH3kpRmszjW6NLsLK0Ae0AOdI5vACgtfxOP1P49VgPK4wJwzsSyJFu5Ri21zmaSPrXLW9d4l/LPIKN+/ohj6KwaS38I2dwSFlU0Mphis28Lr6Mm4UvH6ZCZDiZ0hxvOMsOEhx+MG5+d9+as9SOFR7KI56E2T9mpkB2JXQfOgDSjFUP9hOqqIYb9IEMATqvQ+NxRFacM5RHETuWhtVY+nMcb4FcE5BKJ6bbye+nPIuGZgPTiwg69rEsLexjKAt+DWKPUu/cEQUUfygNk7gYWN37+64qPTFpE72wr8Cmj+EYtid/H+FL7MLzpjAAVQUkGL8Pnq5zVAmxbZJTLGXYxCBThwformna8buPICK4hKRuQT3/hmhRF544xaCFPuHO54LC+8+l9CrgYY7dfWQ32QSfe9po8XHKfb9HEPhmFB/MemP+mkYRtvWZMs/gS6OIMV4kRNPrK80wKyMYjSTtyCf1Fq8OyXkD3AMrzrD9s3ZdZ5nDG+hgOdSCimOwOPZo+v5yc3g6SdyjsYOxfwOkc5Xy4LRC06okP4rXg1Qi7Xx1OM1pJ05mwQeLDL5VMm+ACnFMKiExMRLbQ7PKI+co3B2l3uvF4xicylOn5V6A1FJryl+HWDhoLM78L4rh1k+/O5hpSIHw77J80hpzmKIRI621fE4Pirw+97IOj6KKZps5gECRldwFKfo7PmchO8B8rRtHGcm7Enb1oGHJ7MU08fHs9UN6bC5BiYdv2m+d98bdkcq5GkbsxQzviEPxXT72G+dTScggpbOGBwfBYze5jkd1Zs5phQjkdpzl4aKHr23XOmQRBlZitVFsa5QFG/B59GtiY6G9W+lGMyLzLahdHY3A9JodFaPMXxcirFVx+zWQR4UChK7pZFWmQQeip0xT1GM0mgKqUaxEO90598RztBTV9EsSrFlIgvbBH6PQIELDZm5LmOcKDSBgxn9ykqgnhfsZ8tLMdXHimK0ZV/CFJTfGIpuw28iZR/BcHwUhYstvUnVY8aQc6DzKLBbYIajkUSGR2S33g80r13gppQ+81FM3rGMYnukmDsiB+e1tvWPhuhTO+3VEvVGGtPAoRiZHI90m0semmIa+1lZjTdAufjSKH3c7riQt5Bmim3LKA4W8ONkT1Rj5SMvTkG41paPrvhhroxp5Xra0AeBVm81GM6ygdb4CabqYPWw2Qw6r9Sh0FV0ooi0Kn0Yv29G/dcJ7qk0vfJTHGyBSa4oxh8tNL7uBd7u/lrDXVXCVeihOMKsSvuvl+zM0Pz0nSfQ43wqfb4G0WETny6hGHKqKE7wExKzdmuK27yaXQzjm8xNZDMIxl8cM7de+mW0vM/JvFLkVTuZJjQZ8hXF8wGrjGLwXWRtF79UNVsdvq2J2H8NaaetnEv+wFa59McQfWAc5WIxqFYqwHxw0w8ZZHyWUmxvVVM8ZJpBuJpZ/FB2lcIxwFHMZq87EydQqnjzFvzO/RBgvjyo5Hieh6cZHwVEPvE3nfT4wHNc7wsrLMXSzIeso4aN3bmLUaTrAgQp2Fa5DWYltKkTyF+/YZI8YfFTYWbA745y9kDbtG4ojnxfLNKNPl0vTOqX4h14U1iKQ9eJ5U6IWIrNxwu8V34jcZ2k7InANQNwYGFNLvONzuxVizhVl+OKs2cfxTvURZiRYocBJw+emeOC9tEQHe+9d7dyh/Jnb+EL9HJC84i3anXQIF+x5Ddu5DWzVvgVVy8kBxSG0sFIi141yS6pAZl9c3x6uMyrZcaeeSXGbN5P1M+L2HSiFF2cJgU/GOaZOCh9XAwY0dS0Wtic0jQwuWoyhfMJg9lL371JT/IrMUdYcmzq1huVzu0Z0qUwWfvFp0UjmfMXuv4axmp8c7MWGpNHcA6TUT258k7+UdwqECdJj7/FRTsv027BEqMWAB8ZHyW9rCaj3sKRXbWx77crYusbsMTj3BkxU4M472f7wTtxGGOzJ3xG/rrp++9vV/odSHr138ywlyT/9h73BaU/Cof6wSx+NnHwjnEjn4Fu0KBBgwYNGjRo0KBBgwYNGjRo0KBBgwb3g/8A/Ifw8WvyYCkAAAAASUVORK5CYII=" alt="" className="img-src" />
            <p className="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi exercitationem fugiat quaerat repudiandae incidunt pariatur velit deleniti. Reprehenderit eos sit amet, corporis doloribus aliquam quasi similique rem nulla reiciendis quaerat!</p>
        </div>
    );
};