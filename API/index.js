import express from 'express';
import bodyParser from 'body-parser';
import mysql from 'mysql';

// criando o app node
const app = express();

// porta que vou utilizar
const PORT = 3000;

// configurando o bodyparser para requisições JSON
app.use(bodyParser.json());



// Rota para criar usuário USR-ADD
app.post('/api/singin', (req, res)=>{
  var sQuery= "INSERT INTO users(USRNAME, USREMAIL, USRPASSWORD) VALUES('"+req.query.name+"', '"+req.query.email+"', '"+req.query.password+"')";
    
  var connection = mysql.createConnection({
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
app.get('/api/login', (req, res)=>{
  var sQuery = "SELECT USRID, USREMAIL, USRPASSWORD FROM users WHERE USREMAIL LIKE '"+req.query.email+"'";

  var connection = mysql.createConnection({
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

    jsonData = JSON.stringify(results);
    // Acessando o campo USREMAIL
    email = jsonData[0].USREMAIL;
    // Acessando o campo USRPASSWORD
    password = jsonData[0].USRPASSWORD;

    // Verificando os dados que foram passados
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

// Rota para efetuar login DATA-SER
app.get('/api/pesquisa', (req, res) => {
  // Criando variável de consulta
  var sQuery = "SELECT MSCID ID,MSCNAME NOME FROM music WHERE MSCNAME LIKE '%" + req.query.value + "%' UNION SELECT ALBID ID,ALBNAME NOME FROM album WHERE ALBNAME LIKE '%" + req.query.value + "%' UNION SELECT BANID ID, BANNAME NOME FROM band WHERE BANNAME LIKE '%" + req.query.value + "%' UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON artist.ARTID = internal.INTARTIST WHERE internal.INTARTIST IS NULL AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%') UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON ARTID = INTARTIST WHERE INTARTIST = ARTID AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%');";
  
  var connection = mysql.createConnection({
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
  var sQuery= "INSERT INTO favorite(FAVUSER, FAVARTIST) VALUES ("+req.query.user+","+req.query.artist+")";

  var connection = mysql.createConnection({
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
  var sQuery = "INSERT INTO favorite(FAVUSER, FAVBAND) VALUES ("+req.query.user+","+req.query.band+");";

  var connection = mysql.createConnection({
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
  var sQuery = "INSERT INTO favorite(FAVUSER, FAVMUSIC) VALUES ("+req.query.user+","+req.query.music+");";

  var connection = mysql.createConnection({
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
  var sQuery = "INSERT INTO favorite(FAVUSER, FAVALBUM) VALUES("+req.query.user+","+req.query.album+");";

  var connection = mysql.createConnection({
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
  var sQuery = 'SELECT ALBNAME Album, ALBID ID FROM album LEFT JOIN favorite ON FAVALBUM = ALBID WHERE FAVUSER = ' + req.query.user;

  var connection = mysql.createConnection({
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

    res.status(201).send(true)
    connection.end();
  });
});

// Rota para procurar a música favorita FAV-SRC-MSC
app.get('/api/favorite/search/music', (req, res)=>{
  var sQuery = 'SELECT MSCNAME, MSCID FROM music LEFT JOIN favorite ON FAVMUSIC = MSCID WHERE FAVUSER = ' + req.query.user;
  
  var connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();

  connection.query(sQuery, function(error, results, fields){
    if(error){
      console.log(error);
      res.status(502).send('Erro ao buscar dado no bando. Erro: '+ error);
      return
    }

    res.status(201).send(true);
    connection.end();
  });
});

// Rota para procurar a banda favorita FAV-SRC-BND
app.get('/api/favorite/search/band', (req, res)=>{
  var sQuery = 'SELECT BANNAME, BANID FROM band LEFT JOIN favorite ON FAVBAND = BANID WHERE FAVUSER = ' +req.query.user;

  var connection = mysql.createConnection({
    host: 'localhost',
    user : 'root',
    password : '',
    database : 'Acervo'
  });

  connection.connect();
});


// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});