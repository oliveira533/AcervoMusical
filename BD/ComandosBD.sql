/* Comando para criação de tabelas de usuários */
CREATE TABLE USERS(
  USRID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  USRNAME VARCHAR(150) NOT NULL,
  URSDESC TEXT NOT NULL,
  USREMAIL VARCHAR(256) NOT NULL,
  USERPASSWORD VARCHAR(50) NOT NULL
);

/* Comando para criação da tabela de artistas */
CREATE TABLE ARTIST(
  ARTID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ARTNAME VARCHAR(150) NOT NULL,
  ARTDTBIRTH DATE NOT NULL,
  ARTDTDEATH DATE,
  ARTDTSTAR DATE NOT NULL,
  ARTDTEND DATE,
  ARTMINPIC TEXT NOT NULL,
  ARTLARPIC TEXT NOT NULL
);

/* Comando para criação da tabela de bandas */
CREATE TABLE BAND(
  ARTID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ARTNAME VARCHAR(150) NOT NULL,
  ARTDTBIRTH DATE NOT NULL,
  ARTDTSTAR DATE NOT NULL,
  ARTDTEND DATE,
  ARTMINPIC TEXT NOT NULL,
  ARTLARPIC TEXT NOT NULL
);

/* Comando para criação da tabela de genêros */
CREATE TABLE GENDER(
  GENID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  GENNAME VARCHAR(150) NOT NULL,
  GENDESC TEXT NOT NULL
);

/* Comando para criação da tabela de integrantes */
CREATE TABLE INTERNAL(
  INTARTIST INT NOT NULL,
  INTBAND INT NOT NULL,
  INTDTIN DATE NOT NULL,
  INTDTOUT DATE NOT NULL,
  FOREIGN KEY(INTARTIST) REFERENCES ARTIST(ARTID),
  FOREIGN KEY(INTBAND) REFERENCES BAND(BNDID)
);

/* Comando para criação da tabela de musicas com chave estrangeira para as tabela banda e artistas */
CREATE TABLE MUSIC(
  MSCID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  MSCNAME VARCHAR(150) NOT NULL,
  MSCSING INT NOT NULL,
  MSCFEAT INT NOT NULL,
  FOREIGN KEY(MSCSING) REFERENCES BAND(BNDID),
  FOREIGN KEY(MSCSING) REFERENCES ARTIST(ARTID),
  FOREIGN KEY(MSCFEAT) REFERENCES BAND(BNDID),
  FOREIGN KEY(MSCFEAT) REFERENCES ARTIST(ARTID)
);

/* Comando para criação da tabela de album com chave estrangeira para as tabela banda e artistas */
CREATE TABLE ALBUM(
  ALBID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ALBNAME VARCHAR(150) NOT NULL,
  ALBSING INT NOT NULL,
  ALBFEAT INT NOT NULL,
  FOREIGN KEY(ALBSING) REFERENCES BAND(BNDID),
  FOREIGN KEY(ALBSING) REFERENCES ARTIST(ARTID),
  FOREIGN KEY(ALBFEAT) REFERENCES BAND(BNDID),
  FOREIGN KEY(ALBFEAT) REFERENCES ARTIST(ARTID)
);

/* Comando para criação da tabela de faixas */
CREATE TABLE TRACK(
  RNGALBUM INT NOT NULL,
  RNGMUSIC INT NOT NULL,
  RNGNUMBER INT NOT NULL,
  FOREIGN KEY(RNGALBUM) REFERENCES ALBUM(ALBID),
  FOREIGN KEY(RNGMUSIC) REFERENCES MUSIC(MSCID)
)


/* Comando para criação da tabela de multiplos com chave estrangeira para as tabelas de música, banda, artista e album */
CREATE TABLE MULTIGEN(
  MTGSOND INT NOT NULL,
  MTGGENDER INT NOT NULL,
  FOREIGN KEY(MTGSOND) REFERENCES ALBUM(ALBID),
  FOREIGN KEY(MTGSOND) REFERENCES ARTIST(ARTID),
  FOREIGN KEY(MTGSOND) REFERENCES BAND(BNDID),
  FOREIGN KEY(MTGSOND) REFERENCES MUSIC(MSCID),
  FOREIGN KEY(MTGGENDER) REFERENCES GENDER(GENID)
);