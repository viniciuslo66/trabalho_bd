CREATE TABLE departamento (
  id_departamento INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_departamento));
  
  CREATE TABLE funcionario (
	id_Funcionario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato VARCHAR(30) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    salário DOUBLE NOT NULL,
    PRIMARY KEY (idFuncioario),
    FOREIGN KEY (departamentoId) REFERENCES departamento (id_departamento)
  );
  
  -- --------------------------------------------------------------------------
  
  CREATE TABLE cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    contato INT NOT NULL,
    cpf_cnpj VARCHAR(45) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_cliente),
    FOREIGN KEY (cliente_type) REFERENCES cliente_type (id_type)
  );
  
  CREATE TABLE cliente_type (
	id_type INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40),
    PRIMARY KEY (id_type)
  );
  
  -- ---------------------------------------------------------------------------
  
  CREATE TABLE veiculos (
	id_veiculo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    marca VARCHAR(45) NOT NULL, 
    PRIMARY KEY (id_veiculo) 
  );
  
  -- ---------------------------------------------------------------------------
  
  CREATE TABLE servicos (
	id_servico INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(200),
    PRIMARY KEY (id_servico)
  );
  
-- ---------------------------------------------------------------------------
  CREATE TABLE orcamento (
	id_orcamento INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_orcamento),
    FOREIGN KEY (cliente_id) REFERENCES cliente (id_cliente),
    FOREIGN KEY (veiculo_id) REFERENCES veiculo (id_veiculo),
    FOREIGN KEY (servico_id) REFERENCES servico (id_servico)
  );
  
  CREATE TABLE orcamento_servico (
	id_fk_orcamento INT NOT NULL,
    id_fk_servico INT NOT NULL,
    PRIMARY KEY (id_fk_orcamento, id_fk_servico)
);
  
  
  
