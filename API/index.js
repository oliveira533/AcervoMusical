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

// Caminho para criar usuário para cadastro
app.post('/api/singin', (req, res)=>{
    console.log(req.query)

    connection.connect();
    connection.query("INSERT INTO users(USRNAME, USREMAIL, USRPASSWORD) VALUES('"+req.query.name+"', '"+req.query.email+"', '"+req.query.password+"')");
    connection.end();
    res.send('Requisição enviada');
})


// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});