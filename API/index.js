const express = require('express');
const bodyParser = require('body-parser');

// conexão com o banco de dados
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'acervo'
});

// criando o app node
const app = express();

// porta que vou utilizar
const PORT = 3000;

// configurando o bodyparser para requisições JSON
app.use(bodyParser.json());


// caminho de exemplo
app.get('/api/exemplo', (req, res) =>{
    const exemplo = { mensagem: 'exemplo de api REST com node' };
    res.json(exemplo);
});

// primeira conexão com o banco de dados
app.get('/api/connect', (req, res) =>{
    connection.connect();
    connection.query('SELECT * FROM ARTIST', function(error, results, fields){
      // if (error) throw error;
      // res.send(results);
      console.log(results);
      res.json(results);
    });
    connection.end();
});

// Caminho para criar usuário
app.post('/api/singin', (req, res)=>{
    console.log(req.query)

    connection.connect();
    connection.query("INSERT INTO users(USRNAME, USREMAIL, USRPASSWORD) VALUES('"+req.query.name+"', '"+req.query.email+"', '"+req.query.password+"')");
    connection.end();
    res.send('Requisição enviada');
})

app.get('/api/login', (req, res)=>{

    // Fazendo a consulta no banco de dados
    connection.connect();
    connection.query(("SELECT USRID, USREMAIL, USRPASSWORD FROM users WHERE USREMAIL LIKE '"+req.query.email+"'"),function(error, results,fields){
    connection.end();
      if (error) throw error

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
    })
});

app.get('/api/pesquisa', (req, res) => {
  // console.log('Chegou')
  // Criando variável de consulta
  sQuery = "SELECT MSCID ID,MSCNAME NOME FROM music WHERE MSCNAME LIKE '%" + req.query.value + "%' UNION SELECT ALBID ID,ALBNAME NOME FROM album WHERE ALBNAME LIKE '%" + req.query.value + "%' UNION SELECT BANID ID, BANNAME NOME FROM band WHERE BANNAME LIKE '%" + req.query.value + "%' UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON artist.ARTID = internal.INTARTIST WHERE internal.INTARTIST IS NULL AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%') UNION SELECT ARTID ID, ARTALTEREGO NOME FROM artist LEFT JOIN internal ON ARTID = INTARTIST WHERE INTARTIST = ARTID AND (ARTALTEREGO LIKE '%" + req.query.value + "%' OR ARTNAME LIKE '%" + req.query.value + "%');";

  // Criando uma nova conexão com o servidor para poder se conectar 
  const con = mysql.createConnection({
    // Configurações da conexão com o banco de dados
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'acervo'
  });

  // Conexão com o servidor de banco de dados
  con.connect();

  // Fazendo a requisição no banco
  con.query(sQuery, function(error, results, fields) {
    if (error) {
      // Tratativa de erro da requisição
      console.error(error);
      res.status(500).send('Erro no servidor');
      return;
    }

    res.json(results);

    con.end();
  });
});

// Caminho para adicionar artista favorito
app.post('/api/favorite/add/artist', (req, res) =>{
  sQuery= "INSERT INTO favorite(FAVUSER, FAVARTIST) VALUES ("+req.query.user+","+req.query.artist+")";
  connection.connect();
  connection.query(sQuery, function(error, results, fields){
    if (error){
      console.error(error)
      res.status(400).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }

    res.status(201).send(true);

    connection.end()
  });
});

// Caminho para adicionar banda favorita
app.post('api/favorite/add/band', (req, res) =>{
  sQuery = "INSERT INTO favorite(FAVUSER, FAVBAND) VALUES ("+req.query.user+","+req.query.band+");";
  connection.connect();
  connection.query(sQuery, function(error, results, fields){
    if (error){
      console.error(error);
      res.status(400).send('Erro ao inserir dado no banco. Erro: '+error);
      return;
    }
    
    res.status(201).send(true);

    connection.end();
  });
});

// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});