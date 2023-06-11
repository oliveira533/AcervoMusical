const express = require('express');
const bodyParser = require('body-parser');

// conexão com o banco de dados
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'me',
  password : 'secret',
  database : 'my_db'
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
})

// iniciando o servidor 
app.listen(PORT, ()=>{
    console.log('Servidor está online na porta '+PORT);
});