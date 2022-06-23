<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                if ( (empty($_POST['usuario'])) || (empty(($_POST['senha']))) || (empty($_POST['csenha']))  ) {
                        $resultado = 'Preencha todos os campos corretamente';
                } else {
                        $candidato =  base64_decode($_COOKIE['candidato']);
                        $candidatoid = new Consulta();
                        $candidatoid = $candidatoid->Candidato($candidato);

                        if ($_POST['senha']==$_POST['csenha']) {
                                // hash senha
                                $senha = password_hash($_POST['senha'], PASSWORD_DEFAULT);

                                $concluircadastro = new AtualizarRow();
                                $concluircadastro = $concluircadastro->InserirInfoLogin($_POST['usuario'],$senha,1,$candidatoid['id']);
                                if ($concluircadastro===true) {
                                        // cadastrado
                                        $resultado = 'Usuário cadastrado com sucesso';
                                } else {
                                        $resultado = 'Tente novamente';
                                } // concluircadastro true
                        } else {
                                $resultado = 'As senhas não conferem';
                        } // senha
                } // empty

        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
