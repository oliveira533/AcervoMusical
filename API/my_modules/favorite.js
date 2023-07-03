import mysql from 'mysql';

// Caminho para adicionar album favorito FAV-ADD-ALB
export function fnAddFavAlb(user, album){
    var sQuery = "INSERT INTO favorite(FAVUSER, FAVALBUM) VALUES("+user+","+album+");";

  var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if (error){
        connection.end();
        console.log(error);
        return(error);
    }
    else{
        console.log(true)
        connection.end();
        return(true);
    }
  });
}