<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                $excluir = new AtualizarRow();
                $excluir = $excluir->ExcluiCandidato($_POST['id']);
                if ($excluir===true) {
                        $resultado = 'Candidato excluído com sucesso';
                } else {
                        $resultado = 'Tente novamente';
                } // excluir true
        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
