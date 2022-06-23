<?php

        // função que define o nome da cor pelo número
        function Cor($cor) {
                switch($cor) {
                        case 1:
                                $cor = 'AMARELO';
                                break;
                        case 2:
                                $cor = 'AZUL';
                                break;
                        case 3:
                                $cor = 'VERMELHO';
                                break;
                } // switch

                return $cor;
        } // função que define o nome da cor pelo número

        // função que define o desconto de acordo com as regras de negócio
        function Desconto($cor,$preco) {
                if ($cor=='1') {
                        // AMARELO
                        // Produtos das cores AMARELO, terão um desconto de 10%.
                        $desconto = '10';
                } else if ($cor=='2') {
                        // AZUL
                        // Produtos das cores AZUL e VERMELHO, Terão um desconto de 20%.
                        $desconto = '20';
                } else if ($cor=='3') {
                        // VERMELHO
                        // Produtos das cores AZUL e VERMELHO, Terão um desconto de 20%.
                        $desconto = '20';
                        if ($preco>50.00) {
                                $desconto = '5';
                        } // preco do produto vermelho maior que 50
                } // desconto

                return $desconto;
        } // função que define o desconto de acordo com as regras de negócio

        // função que arruma o input de preços
        function PrecoInput($preco) {
                return (float)str_replace(',','.',$preco);
        } // função que arruma o input de preços

        // função que formata o preço pra o formato brasileiro
        function FormataPreco($preco) {
                return number_format($preco,2,',','.');
        } // função que formata o preço pra o formato brasileiro


?>
