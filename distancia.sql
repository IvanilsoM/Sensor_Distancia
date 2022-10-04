CREATE TABLE Mac (
  idMac VARCHAR(17)  NOT NULL  ,
  Origem VARCHAR(50)  NULL    ,
PRIMARY KEY(idMac));



CREATE TABLE Distancia (
  idDistancia INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  Mac_idMac VARCHAR(17)  NOT NULL  ,
  DataInclusao DATE  NULL  ,
  HoraInclusao TIME  NULL  ,
  Distancia REAL  NULL    ,
PRIMARY KEY(idDistancia)  ,
INDEX Distancia_FKIndex1(Mac_idMac),
  FOREIGN KEY(Mac_idMac)
    REFERENCES Mac(idMac)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




