<?php

	// classe com todos os updae statements da aplicação
	class AtualizarRow extends Conexao {

		// função que cadastra as informacoes de login do candidato
		public function InserirInfoLogin($username,$pwd,$ativo,$candidato) {
			try {
				$stmt = "UPDATE candidatos SET username=?, pwd=?, ativo=? WHERE id=? LIMIT 1";
				$stmt = $this->conectar()->prepare($stmt);
				$stmt->execute([$username,$pwd,$ativo,$candidato]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // InserirInfoLogin

		public function ExcluiCandidato($id) {
			try {
				$stmt = "UPDATE candidatos SET ativo=0  WHERE id=? LIMIT 1";
				$stmt = $this->conectar()->prepare($stmt);
				$stmt->execute([$id]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // ExcluiCandidato

		public function AtualizaNome($nome,$id) {
			try {
				$stmt = "UPDATE candidatos SET nome=?  WHERE id=? LIMIT 1";
				$stmt = $this->conectar()->prepare($stmt);
				$stmt->execute([$nome,$id]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // AtualizaNome

		public function AtualizaEmail($email,$id) {
			try {
				$stmt = "UPDATE candidatos SET email=?  WHERE id=? LIMIT 1";
				$stmt = $this->conectar()->prepare($stmt);
				$stmt->execute([$email,$id]);
				return true;
			} catch(PDOException $erro) {
				return $erro->getMessage();
			}
		} // AtualizaEmail

	} // class AtualizarRow

?>
