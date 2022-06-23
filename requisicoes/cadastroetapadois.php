<?php

        include_once __DIR__.'/../setup.inc.php';

        if (isset($_POST)) {
                if ( (empty($_POST['cadastronome'])) || (empty(($_POST['cadastroemail']))) || (empty($_POST['cadastrotelefone']))  ) {
                        $resultado = 'Preencha todos os campos corretamente';
                } else {
                        // coloca o email em cookie pra cadastrar as próximas etapas relacionando no banco de dados
                        setcookie('candidato', base64_encode($_POST['cadastroemail']), time() + (86400 * 30), "/");

                        $addetapaum = new InsereRow();
                        $addetapaum = $addetapaum->InserirEtapaUm($_POST['cadastronome'],$_POST['cadastroemail'],$_POST['cadastrotelefone'],$data);
                        if ($addetapaum===true) {
                                // Cadastrado na etapa um
                                $resultado = '<p>Etapa 2/3</p>';

                                $consultacandidato = new Consulta();
                                $consultacandidato = $consultacandidato->Candidato($_POST['cadastroemail']);

                                if ($consultacandidato!=0) {
                                        // Existe o email cadastrado para o candidato
                                        // $resultado .= '<p id="etapadoisresposta" class="resposta">Olá!</p>';
                                } else {
                                        // Novo email
                                        // $resultado .= '<p id="etapadoisresposta" class="resposta">Boas vindas!</p>';
                                } // Candidato existente

                                $resultado .= '<p>Experiências profissionais</p>';

                                $resultado .= '<div id="experienciascontainer">';

                                $resultado .= '<div id="experiencia_1" class="experienciainputwrap">';
                                $resultado .= '<p>Experiência 1</p>';
                                $resultado .= '<input id="experienciatitulo_1" type="text" placeholder="Título"></input>';
                                $resultado .= '<textarea id="experienciadescricao_1" placeholder="Descrição"></textarea>';
                                $resultado .= '</div>';

                                $resultado .= '</div> <!-- experiencias container -->';

                                $resultado .= '<p id="experienciaadicional" class="adicional">+ experiência adicional</p>';

                                $resultado .= '<p>Formações acadêmicas</p>';

                                $resultado .= '<div id="formacoescontainer">';

                                $resultado .= '<div id="formacao_1" class="formacaoinputwrap">';
                                $resultado .= '<p>Formação 1</p>';
                                $resultado .= '<input id="formacaotitulo_1" type="text" placeholder="Título"></input>';
                                $resultado .= '<input id="formacaoano_1" type="number" placeholder="'.$agora->format('Y').'"></input>';
                                $resultado .= '</div>';

                                $resultado .= '</div> <!-- formacoes container -->';

                                $resultado .= '<p id="formacaoadicional" class="adicional">+ formação adicional</p>';

                                $resultado .= '<p id="etapadoiscontinuar" class="cadastrocontinue">Continuar</p>';

                        } else {
                                $resultado = 'Tente novamente';
                        } // addetapaum true
                } // empty

        } else {
                $resultado = 'Tente novamente';
        } // isset post

        echo $resultado;

?>
