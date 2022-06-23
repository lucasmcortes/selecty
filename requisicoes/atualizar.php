<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                $atualizanome = new AtualizarRow();
                $atualizanome = $atualizanome->AtualizaNome($_POST['nome'],$_POST['id']);
                if ($atualizanome===true) {
                        $atualizaemail = new AtualizarRow();
                        $atualizaemail = $atualizaemail->AtualizaEmail($_POST['email'],$_POST['id']);
                        if ($atualizaemail===true) {
                                $resultado = 'Candidato atualizado com sucesso';
                        } else {
                                $resultado = 'Tente novamente';
                        } // atualizaemail true
                } else {
                        $resultado = 'Tente novamente';
                } // atualizanome true
        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
