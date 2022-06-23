<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                $resultado = 'Candidatos';
                $resultado = '';
                $consultacandidatos = new Consulta();
                $consultacandidatos = $consultacandidatos->Candidatos();

                $resultado .= "
                        <!-- tabela -->
                        <div class='wrap listawrap'>
                                <div class='listacandidatowrap cabecalho'>
                                        <p>Nome</p>
                                        <p>Email</p>
                                        <p>Telefone</p>
                                        <p>Atualizar</p>
                                        <p>Excluir</p>
                                </div>
                                <div id='produtos'></div>
                        </div>
                        <!-- tabela -->
                ";

                if ($consultacandidatos[0]['id']!=0) {
                        foreach ($consultacandidatos as $candidato) {
                                $resultado .= "
                                        <div class='listacandidatowrap'>
                                                <p>".$candidato['nome']."</p>
                                                <p>".$candidato['email']."</p>
                                                <p>".$candidato['telefone']."</p>
                                                <p id='atualizar' class='botao' data-id='".$candidato['id']."' style='background-color:midnightblue;'>Atualizar</p>
                                                <p id='excluir' class='botao' data-id='".$candidato['id']."' style='background-color:crimson;'>Excluir</p>
                                        </div>
                                ";
                        } // foreach produto
                } else {
                        $resultado = 'Nenhum candidato';
                } // produtos != 0
        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
