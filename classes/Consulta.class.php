<?php

	// classe que contém todos os selects para consulta de dados no banco
	class Consulta extends Conexao {

		public function Candidato($email) {
			$sql = "
				SELECT * FROM candidatos
				WHERE email=?
				LIMIT 1
			";
			$stmt = $this->conectar()->prepare($sql);
			$stmt->execute([$email]);
			$candidato = $stmt->fetch();
			return $this->resultado = array(
				'id'=>$this->id = $candidato['id']??0,
				'nome'=>$this->nome = $candidato['nome']??0,
				'email'=>$this->cor = $candidato['email']??0
			);
		} // Candidato

		public function CandidatoID($id) {
			$sql = "
				SELECT * FROM candidatos
				WHERE id=?
				LIMIT 1
			";
			$stmt = $this->conectar()->prepare($sql);
			$stmt->execute([$id]);
			$candidato = $stmt->fetch();
			return $this->resultado = $this->email = $candidato['email']??0;
		} // Candidato

		// função que mostra todos os candidatos
		public function Candidatos() {
			$sql = "
				SELECT * FROM candidatos
				WHERE candidatos.ativo=1
				ORDER BY candidatos.nome
				DESC
			";
			$stmt = $this->conectar()->prepare($sql);
			$stmt->execute([]);
			$candidatos = $stmt->fetchAll();
			if (count($candidatos)>=1) {
				foreach ($candidatos as $candidato) {
					$resultado[] = array(
						'id'=>$this->id = $candidato['id']??0,
						'nome'=>$this->nome = $candidato['nome']??0,
						'email'=>$this->email = $candidato['email']??0,
						'telefone'=>$this->telefone = $candidato['telefone']??0,
						'username'=>$this->username = $candidato['username']??0,
						'ativo'=>$this->ativo = $candidato['ativo']??0,
						'date'=>$this->date = $candidato['date']??0
					);
				} // foreach
			} else {
				$resultado[] = array(
					'id'=>$this->id = 0,
					'nome'=>$this->nome = 0,
					'email'=>$this->email = 0,
					'telefone'=>$this->telefone = 0,
					'username'=>$this->username = 0,
					'ativo'=>$this->ativo = 0,
					'date'=>$this->date = 0
				);
			} // produtos

			return $this->resultado = $resultado;
		} // Produtos

	} // class Consulta

?>
