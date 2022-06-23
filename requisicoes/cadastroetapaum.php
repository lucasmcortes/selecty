<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                $resultado = '<p>Cadastrar</p>';

                $resultado .= '<p id="etapaumresposta" class="resposta">Preencha todos os campos</p>';

                $resultado .= '<div class="cadastroinputwrap">';
                $resultado .= '<p>Nome</p>';
                $resultado .= '<input id="cadastronome" type="text" placeholder="Nome"></input>';
                $resultado .= '</div>';

                $resultado .= '<div class="cadastroinputwrap">';
                $resultado .= '<p>Email</p>';
                $resultado .= '<input id="cadastroemail" type="email" placeholder="Email"></input>';
                $resultado .= '</div>';

                $resultado .= '<div class="cadastroinputwrap">';
                $resultado .= '<p>Telefone</p>';
                $resultado .= '<input id="cadastrotelefone" type="text" placeholder="Telefone"></input>';
                $resultado .= '</div>';

                $resultado .= '<p id="etapaumcontinuar" class="cadastrocontinue">Continuar</p>';

        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
