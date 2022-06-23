<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                // pega o objeto do javascript
                $etapadois = json_decode(file_get_contents( "php://input"));

                if (empty($etapadois)) {
                        $resultado = 'Preencha todos os campos corretamente';
                } else {
                        // converte pra array
                        $etapadois = get_object_vars($etapadois);
                        $etapadois['experiencias'] = get_object_vars($etapadois['experiencias']);
                        $etapadois['formacoes'] = get_object_vars($etapadois['formacoes']);

                        // conferencia
                        $continuar = 0;

                        ///// EXPERIENCIAS
                        $experienciascompletas = [];

                        $candidato =  base64_decode($_COOKIE['candidato']);
                        $candidatoid = new Consulta();
                        $candidatoid = $candidatoid->Candidato($candidato);

                        $i=0;
                        foreach ($etapadois['experiencias']['titulos'] as $titulo) {
                                $experienciascompletas[$i]['titulo'] = $titulo;
                                $i++;
                        } // add titulos

                        $i=0;
                        foreach ($etapadois['experiencias']['descricoes'] as $descricao) {
                                $experienciascompletas[$i]['descricao'] = $descricao;
                                $i++;
                        } // add descricoes

                        $i=0;
                        foreach ($experienciascompletas as $experiencia) {
                                $addexperiencia = new InsereRow();
                                $addexperiencia = $addexperiencia->InserirExperiencias($candidatoid['id'],$experiencia['titulo'],$experiencia['descricao'],$data);
                                if ($addexperiencia===true) {
                                        // adicionada
                                        $i++;
                                } else {
                                        // erro
                                        $i=$i;
                                }
                        } // add experiencia no banco

                        if ((count($experienciascompletas))==$i) {
                                $continuar++;
                        } else {
                                $resultado = 'Tente novamente';
                        } // conferencia de experiencias adicionadas com quantidade inserida pelo usuario


                        ////// FORMACOES
                        $formacoescompletas = [];

                        $i=0;
                        foreach ($etapadois['formacoes']['titulos'] as $titulo) {
                                $formacoescompletas[$i]['titulo'] = $titulo;
                                $i++;
                        } // add titulos

                        $i=0;
                        foreach ($etapadois['formacoes']['anos'] as $ano) {
                                $formacoescompletas[$i]['ano'] = $ano;
                                $i++;
                        } // add descricoes

                        $i=0;
                        foreach ($formacoescompletas as $formacao) {
                                $addformacao = new InsereRow();
                                $addformacao = $addformacao->InserirFormacoes($candidatoid['id'],$formacao['titulo'],$formacao['ano'],$data);
                                if ($addformacao===true) {
                                        // adicionada
                                        $i++;
                                } else {
                                        // erro
                                        $i=$i;
                                }
                        } // add formacao no banco

                        if ((count($formacoescompletas))==$i) {
                                $continuar++;
                        } else {
                                $resultado = 'Tente novamente';
                        } // conferencia de descricoes adicionadas com quantidade inserida pelo usuario

                        if ($continuar==2) {
                                // Cadastrado na etapa dois
                                $resultado = '<p>Etapa 3/3</p>';

                                $resultado .= '<p>Informações de login</p>';

                                $resultado .= '<p id="etapatresresposta" class="resposta">Preencha todos os campos</p>';

                                $resultado .= '<div class="cadastroinputwrap">';
                                $resultado .= '<p>Nome de usuário</p>';
                                $resultado .= '<input id="usuario" type="text" placeholder="Nome de usuário"></input>';
                                $resultado .= '</div>';

                                $resultado .= '<div class="cadastroinputwrap">';
                                $resultado .= '<p>Senha</p>';
                                $resultado .= '<input id="pwd" type="password" placeholder="Senha"></input>';
                                $resultado .= '</div>';

                                $resultado .= '<div class="cadastroinputwrap">';
                                $resultado .= '<p>Confirme sua senha</p>';
                                $resultado .= '<input id="pwdc" type="password" placeholder="Confirme sua senha"></input>';
                                $resultado .= '</div>';

                                $resultado .= '<p id="concluircadastro" class="cadastrocontinue">Cadastrar</p>';
                        } else {
                                $resultado = 'Tente novamente';
                        }

                } // empty

        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
