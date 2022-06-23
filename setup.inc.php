<?php
        // seta o horário pro Brasil
        setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
        setlocale(LC_CTYPE, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
        setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
        date_default_timezone_set('America/Sao_Paulo');
        mb_internal_encoding('UTF8');
        mb_regex_encoding('UTF8');

        $data = date_create()->format('Y-m-d H:i:s.u');
        $agora = new DateTime($data);

        // função que carrega as classes quando chama nos scripts
	spl_autoload_register(function ($classe) {
		$caminho = __DIR__.'/classes/';
		$extensao = '.class.php';
		$caminhao = $caminho . $classe . $extensao;

		if (!file_exists($caminhao)) {
			return false;
		}

		include_once $caminhao;
	}); // func loadClasses

        include_once __DIR__.'/recursos/funcoes.php';
?>
