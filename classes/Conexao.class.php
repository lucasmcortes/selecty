<?php

	// classe que cria uma conexão à database
	class Conexao {
		private $dbHost = 'localhost';
		private $dbUsername = 'root';
		private $dbPwd = '';
		private $dbName = 'selecty';

		protected function conectar() {
			$dsn = 'mysql:host=' . $this->dbHost . ';dbname=' . $this->dbName . ';charset=utf8';
			$pdo = new PDO($dsn, $this->dbUsername, $this->dbPwd);
			$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
			return $pdo;
		} // conectar

	} // conexao

?>
