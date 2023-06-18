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


// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});