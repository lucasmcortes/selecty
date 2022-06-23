<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                $candidato = new Consulta();
                $candidato = $candidato->CandidatoID($_POST['id']);

                if ($candidato!=0) {
                        $consultacandidato = new Consulta();
                        $consultacandidato = $consultacandidato->Candidato($candidato);

                        $resultado = "
                                <p>Nome:</p><input id='atualizanome' type='text' value='".$consultacandidato['nome']."' placeholder='Nome'>
                                <p>Email:</p><input id='atualizaemail' type='email' value='".$consultacandidato['email']."' placeholder='Email'>

                                <div style='display:flex;justify-content:space-around;'>
                                        <p id='fecharjanela' class='botao' data-id='".$consultacandidato['id']."' style='background-color: antiquewhite;color:black;'>fechar</p>
                                        <p id='confirmar' class='botao' data-id='".$consultacandidato['id']."' style='background-color:aquamarine;color:black;'>confirmar</p>
                                </div>
                        ";
                } else {
                        $resultado = 'Tente novamente';
                } // candidato existe
        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;
?>
