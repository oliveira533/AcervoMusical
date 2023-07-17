express = require('express');
bodyParser = require('body-parser');
mysql = require('mysql');

// criando o app node
const app = express();

// porta que vou utilizar
const PORT = 3000;

// configurando o bodyparser para requisições JSON
app.use(bodyParser.json());



// Rota para criar usuário USR-ADD
app.post('/api/user/singin', (req, res)=>{
  let sQuery= "INSERT INTO users(USRNAME, USREMAIL, USRPASSWORD) VALUES('"+req.query.name+"', '"+req.query.email+"', '"+req.query.password+"')";
    
  let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'acervo'
  });
  connection.connect();
  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.error(error);
      res.status(501).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }
    res.send('Requisição enviada');

    connection.end();
  });
})

// Rota para efetuar login USR-LOG
app.get('/api/user/login', (req, res)=>{
  let sQuery = "SELECT USRID, USREMAIL, USRPASSWORD FROM users WHERE USREMAIL LIKE '"+req.query.email+"'";

  let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'acervo'
  });
  connection.connect();

  connection.query(sQuery,function(error, results,fields){
    if(error){
      console.error(error);
      res.status(501).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }

    jsonData = JSON.parse(JSON.stringify(results));
    // Acessando o campo USREMAIL
    email = jsonData[0].USREMAIL;
    // Acessando o campo USRPASSWORD
    password = jsonData[0].USRPASSWORD;

    // Verificando os dados que foram passados
    console.log(jsonData[0])
    console.log(email);
    console.log(req.query.email)
    console.log(password);
    console.log(req.query.password)

    // Testano se as credencais 
    if(req.query.email == email && req.query.password == password){
      // Resposta verdadeira
      res.json({
        'id': jsonData[0].USRID,
        'logged': true
      })}
    else{
      // Resposta falsa
      res.json({
        'id': false,
        'logged': false
      })};
    connection.end()
  })
});

// Rota para realizar a pesquisa
app.get('/api/pesquisa', (req, res) => {
  // Criando variável de consulta
  let sQuery = "SELECT MSCID ID,MSCNAME NOME FROM music WHERE MSCNAME LIKE '%" + req.query.value + "%' UNION SELECT ALBID ID,ALBNAME NOME FROM album WHERE ALBNAME LIKE '%" + req.query.value + "%' UNION SELECT BANID ID, BANNAME NOME FROM band WHERE BANNAME LIKE '%" + req.query.value + "%' UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON artist.ARTID = internal.INTARTIST WHERE internal.INTARTIST IS NULL AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%') UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON ARTID = INTARTIST WHERE INTARTIST = ARTID AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%');";
  
  let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'acervo'
  });
  connection.connect();

  connection.query(sQuery, function(error, results, fields) {
    if (error) {
      // Tratativa de erro da requisição
      console.error(error);
      res.status(501).send('Erro no servidor');
      return;
    }

    res.json(results);

    connection.end();
  });
});

// Rota para adicionar artista favorito FAV-ADD-ART
app.post('/api/favorite/add/artist', (req, res) =>{
  let sQuery= "INSERT INTO favorite(FAVUSER, FAVARTIST) VALUES ("+req.query.user+","+req.query.artist+")";

  let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'acervo'
  });
  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if (error){
      console.error(error)
      res.status(501).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }

    res.status(201).send(true);

    connection.end;
  });
});

// Rota para adicionar banda favorita FAV-ADD-BND
app.post('/api/favorite/add/band', (req, res) =>{
  let sQuery = "INSERT INTO favorite(FAVUSER, FAVBAND) VALUES ("+req.query.user+","+req.query.band+");";

  let connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'acervo'
  });
  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if (error){
      console.error(error);
      res.status(501).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }
    
    res.status(201).send(true);
    connection.end();
  });
});

// Rota para adicionar música favorita FAV-ADD-MSC
app.post('/api/favorite/add/music', (req, res)=>{
  let sQuery = "INSERT INTO favorite(FAVUSER, FAVMUSIC) VALUES ("+req.query.user+","+req.query.music+");";

  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password: '',
    database: 'acervo'
  });
  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if (error){
      console.error(error);
      res.status(501).send('Erro ao inserir dado no banco. Erro: '+error);
      return
    }

    res.status(201).send(true);
    connection.end();
  });
});

// Rota para adicionar album favorito FAV-ADD-ALB
app.post('/api/favorito/add/album', (req, res)=>{
  let sQuery = "INSERT INTO favorite(FAVUSER, FAVALBUM) VALUES("+req.query.user+","+req.query.album+");";

  let connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if (error){
        console.log(error);
        res.status(501).send('erro ao inserir dado no banco. Erro: '+error);
        return
    }

    res.status(201).send(true);
    connection.end();
  });
    
});

// Rota para procurar o album favorito FAV-SRC-ALB
app.get('/api/favorite/search/album', (req, res)=>{
  let sQuery = 'SELECT ALBNAME Album, ALBID ID FROM album LEFT JOIN favorite ON FAVALBUM = ALBID WHERE FAVUSER = ' + req.query.user;

  let connection = mysql.createConnection({
    host :'localhost',
    user : 'root',
    password: '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.log(error);
      res.status(502).send('Erro ao buscar dado no banco. Erro: '+error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para procurar a música favorita FAV-SRC-MSC
app.get('/api/favorite/search/music', (req, res)=>{
  let sQuery = 'SELECT MSCNAME, MSCID FROM music LEFT JOIN favorite ON FAVMUSIC = MSCID WHERE FAVUSER = ' + req.query.user;
  
  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.log(error);
      res.status(502).send('Erro ao buscar dado no banco. Erro: '+ error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para procurar a banda favorita FAV-SRC-BND
app.get('/api/favorite/search/band', (req, res)=>{
  let sQuery = 'SELECT BANNAME, BANID FROM band LEFT JOIN favorite ON FAVBAND = BANID WHERE FAVUSER = ' +req.query.user;

  let connection = mysql.createConnection({
    host: 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.log(error);
      res.status(502).send('Erro ao buscar dado no banco. Erro: '+ error);
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para procurar o artista favorito FAV-SRC-ART
app.get('/api/favorite/search/artist', (req, res) =>{
  let sQuery = 'SELECT ARTNAME, ARTID FROM artist LEFT JOIN favorite ON FAVARTIST = ARTID WHERE FAVUSER = ' +req.query.user;

  let connection = mysql.createConnection({
    host : 'localhost',
    user: 'root',
    password: '',
    database: 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.log(error);
      res.status(502).send('Erro ao buscar dado no banco. Erro: ', error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para passar o carrossel com recomendações aleatórias RAN-CAR
app.get('/api/random/music', (req, res) =>{
  fnMax(function(qTotal){
    var value = []
  
    for (let i = 0; i < 4; i++) {
      let nRandom = parseInt(Math.random() * (qTotal - 1) + 1);
      if(value[i] == undefined){
        if(value[i-1] == undefined){
          value.push(nRandom);
        }
        else{
          if(value[i-1] != nRandom){
            value.push(nRandom);
          }
        }
      }
      else{
        if(value[i-1] == undefined){
          value.push(nRandom);
        }
        else{
          if(value[i-1] != nRandom){
            value.push(nRandom);
          }
        }
      }  
    }

    let sQuery = 'SELECT * FROM music WHERE MSCID = '+value[0]+' OR MSCID = '+value[1]+' OR MSCID = '+value[2]+' OR MSCID = '+ value[3];

    let connection = mysql.createConnection({
      host : 'localhost',
      user : 'root',
      password : '',
      database : 'Acervo'
    });

    connection.connect();

    connection.query(sQuery, function(error, results, fields){
      if(error){
        console.log(error);
        res.status(502).send('Erro ao buscar dado no banco. Erro: ' + error);
        return
      }
      
      jData = JSON.parse(JSON.stringify(results));

      res.status(202).send(jData);
      connection.end();
    });

  });
});

// Rota para atualizar dados do usuário USR-UP-DT-CON
app.put('/api/user/update/config', (req, res)=>{
  let sQuery = "UPDATE users SET USREMAIL = '"+req.query.email+"', USRDTBIRTH = '"+req.query.birth+"', USRPHONE = '"+req.query.phone+"', USRPASSWORD = '"+req.query.password+"' WHERE USRID = "+req.query.user+";";

  // console.log(sQuery)
  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database: 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results ,fields){
    if(error){
      console.log(error);
      res.status(503).send('Erro ao atualizar dado no banco. Erro: '+error);
      return
    }

    // console.log(results);
    res.status(203).send(true);
    connection.end();
  });
});

// Rota para atualizar dados do usuário USR-UP-DT-PRF
app.put('/api/user/update/profile', (req, res) =>{
  let sQuery = "UPDATE users SET USRNAME = '"+req.query.name+"', URSDESC = '"+req.query.desc+"' WHERE USRID = "+req.query.user+";";

  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results,  fields){
    if(error){
      console.log(error);
      res.status(503).send('Erro ao atualizar dado no banco. Erro: '+error);
      return
    }
    res.status(203).send(true);
    connection.end();
  });
});

// Rota para buscar as músicas de um album SRC-MSC-ALB
app.get('/api/album/music', (req, res) =>{
  let sQuery = 'SELECT * FROM music LEFT JOIN track ON MSCID = RNGMUSIC WHERE RNGALBUM = '+ req.query.album;

  let connection = mysql.createConnection({
    host: 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(results, error, fields){
    if(error){
      res.status(502).send('Erro na busca. Erro: '+error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para buscar albuns de uma banda SRC-ALB-BND
app.get('/api/band/album', (req, res)=>{
  let sQuery = 'SELECT * FROM album WHERE ALBBAND = '+ req.query.album;

  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(results, error, fields){
    if(error){
      res.status(502).send('Erro na busca. Erro: '+error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});

// Rota para buscar albuns de um srtista SRC-ALB-ART
app.get('/api/artist/album', (req, res)=>{
  let sQuery = 'SELECT * FROM album WHERE ALBARTIST = ' + req.query.artist;

  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(results, error, fields){
    if(error){
      res.status(502).send('Erro na busca. Erro: '+error);
      return
    }

    jData = JSON.parse(JSON.stringify(results));

    res.status(202).send(jData);
    connection.end();
  });
});



// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});



function fnMax(callback){
  let qTotal = 'SELECT COUNT(*) max FROM music';

  let connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(qTotal, function(error, results, fields){
    if(error){
      console.log(error);
      return false
    }

    let jMax = JSON.parse(JSON.stringify(results));
    let nMax = jMax[0].max;
    callback(nMax);
  });
  connection.end();
}