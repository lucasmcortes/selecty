<?php

	// classe com todas as funções de inserção em tabelas
	class InsereRow extends Conexao {

		// função que cadastra a etapa um dos candidatos
		public function InserirEtapaUm($nome,$email,$telefone,$data) {
			try {
				$stmt = $this->conectar()->prepare("INSERT INTO candidatos (nome, email, telefone, date) VALUES(?, ?, ?, ?);");
				$stmt->execute([$nome,$email,$telefone,$data]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // InserirEtapaUm

		// função que cadastra as experiencias do candidato
		public function InserirExperiencias($candidato,$titulo,$descricao,$data) {
			try {
				$stmt = $this->conectar()->prepare("INSERT INTO experiencias (candidato, titulo, descricao, date) VALUES(?, ?, ?, ?);");
				$stmt->execute([$candidato,$titulo,$descricao,$data]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // InserirExperiencias

		// função que cadastra as formacoes do candidato
		public function InserirFormacoes($candidato,$titulo,$concluida,$data) {
			try {
				$stmt = $this->conectar()->prepare("INSERT INTO formacoes (candidato, titulo, concluida, date) VALUES(?, ?, ?, ?);");
				$stmt->execute([$candidato,$titulo,$concluida,$data]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // InserirFormacoes

	} // class InsereRow

?>
