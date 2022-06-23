
/* trigger início */
document.addEventListener('click', function (event) {
	if (event.target.matches('#inicio')) {
                document.getElementById('principal').innerHTML = '<p>Use o menu superior para começar</p>';
        }
});

/* função que lista candidatos */
function Candidatos() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        document.getElementById('principal').innerHTML = this.responseText;
                }
        };
        httpRequest.open('POST', 'requisicoes/candidatos.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('');
}

/* trigger candidatos */
document.addEventListener('click', function (event) {
	if (event.target.matches('#candidatos')) {
                Candidatos();
        }
});

/* função que inicia aa etapa um do cadastro */
function Cadastrar() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        document.getElementById('principal').innerHTML = this.responseText;
                }
        };
        httpRequest.open('POST', 'requisicoes/cadastroetapaum.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('');
}

/* trigger casdtro etapa um */
document.addEventListener('click', function (event) {
	if (event.target.matches('#cadastrar')) {
                Cadastrar();
        }
});

/* função que inicia a etapa dois do cadastro */
function EtapaDois() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        if (this.responseText=='Preencha todos os campos corretamente') {
                                document.getElementById('etapaumresposta').innerHTML = this.responseText;
                        } else {
                                document.getElementById('principal').innerHTML = this.responseText;
                        }
                }
        };
        httpRequest.open('POST', 'requisicoes/cadastroetapadois.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('cadastronome='+document.getElementById('cadastronome').value+'&cadastroemail='+document.getElementById('cadastroemail').value+'&cadastrotelefone='+document.getElementById('cadastrotelefone').value);
}

/* trigger cadastro etapa dois */
document.addEventListener('click', function (event) {
	if (event.target.matches('#etapaumcontinuar')) {
                EtapaDois();
        }
});

function Experiencia() {
        var experiencias = $('.experienciainputwrap').length;
        experiencias++;
        const novaExperiencia = document.createElement('div');
        $('#experienciascontainer').append(novaExperiencia);
        novaExperiencia.setAttribute('id', 'experiencia_' + experiencias);
        novaExperiencia.classList.add('experienciainputwrap');

        const novaExperienciaTitulo = document.createElement('p');
        novaExperienciaTitulo.append('Experiência ' + experiencias);
        novaExperiencia.append(novaExperienciaTitulo);

        const novaExperienciaTituloCustomizado = document.createElement('input');
        novaExperienciaTituloCustomizado.setAttribute('id', 'experienciatitulo_' + experiencias);
        novaExperienciaTituloCustomizado.setAttribute('type', 'text');
        novaExperienciaTituloCustomizado.setAttribute('placeholder', 'Título');
        novaExperiencia.append(novaExperienciaTituloCustomizado);

        const novaExperienciaDescricao = document.createElement('textarea');
        novaExperienciaDescricao.setAttribute('id', 'experienciadescricao_' + experiencias);
        novaExperienciaDescricao.setAttribute('placeholder', 'Descrição');
        novaExperiencia.append(novaExperienciaDescricao);

        $(novaExperiencia).fadeIn(1200);
}

/* trigger experiência adicional */
document.addEventListener('click', function (event) {
	if (event.target.matches('#experienciaadicional')) {
                Experiencia();
        }
});

function Formacao() {
        var formacoes = $('.formacaoinputwrap').length;
        formacoes++;
        const novaFormacao = document.createElement('div');
        $('#formacoescontainer').append(novaFormacao);
        novaFormacao.setAttribute('id', 'formacao_' + formacoes);
        novaFormacao.classList.add('formacaoinputwrap');

        const novaFormacaoTitulo = document.createElement('p');
        novaFormacaoTitulo.append('Formação ' + formacoes);
        novaFormacao.append(novaFormacaoTitulo);

        const novaFormacaoTituloCustomizado = document.createElement('input');
        novaFormacaoTituloCustomizado.setAttribute('id', 'formacaotitulo_' + formacoes);
        novaFormacaoTituloCustomizado.setAttribute('type', 'text');
        novaFormacaoTituloCustomizado.setAttribute('placeholder', 'Título');
        novaFormacao.append(novaFormacaoTituloCustomizado);

        const novaFormacaoAno = document.createElement('input');
        novaFormacaoAno.setAttribute('id', 'formacaoano_' + formacoes);
        novaFormacaoAno.setAttribute('type', 'number');
        novaFormacaoAno.setAttribute('placeholder', new Date().getFullYear());
        novaFormacao.append(novaFormacaoAno);

        $(novaFormacao).fadeIn(1200);
}

/* trigger formacao adicional */
document.addEventListener('click', function (event) {
	if (event.target.matches('#formacaoadicional')) {
                Formacao();
        }
});

/* função que inicia a etapa três do cadastro */
function EtapaTres() {
        experienciastitulos = [];
        experienciasdescricoes = [];
        $('.experienciainputwrap').each(function(exp) {
                experienciastitulos.push($(this).find('input').val());
                experienciasdescricoes.push($(this).find('textarea').val());
        });

        experienciascompletas = {
                'titulos': experienciastitulos,
                'descricoes': experienciasdescricoes
        };

        formacoestitulos = [];
        formacoesanos = [];
        $('.formacaoinputwrap').each(function(exp) {
                formacoestitulos.push($(this).find('input[type=text]').val());
                formacoesanos.push($(this).find('input[type=number]').val());
        });

        formacoescompletas = {
                'titulos': formacoestitulos,
                'anos': formacoesanos
        };

        etapadois = {
                'experiencias': experienciascompletas,
                'formacoes': formacoescompletas
        }

        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        if (this.responseText=='Preencha todos os campos corretamente') {
                                document.getElementById('etapadoisresposta').innerHTML = this.responseText;
                        } else {
                                document.getElementById('principal').innerHTML = this.responseText;
                        }
                }
        };

        httpRequest.open('POST', 'requisicoes/cadastroetapatres.php', true);
        httpRequest.setRequestHeader("Content-type", "application/json");
        httpRequest.send(JSON.stringify(etapadois));
}

/* trigger cadastro etapa três */
document.addEventListener('click', function (event) {
	if (event.target.matches('#etapadoiscontinuar')) {
                EtapaTres();
        }
});

/* função que conclui o cadastro */
function ConcluirCadastro() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        if (this.responseText=='Preencha todos os campos corretamente') {
                                document.getElementById('etapatresresposta').innerHTML = this.responseText;
                        } else {
                                document.getElementById('principal').innerHTML = this.responseText;
                        }
                }
        };
        httpRequest.open('POST', 'requisicoes/cadastroconcluido.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('usuario='+document.getElementById('usuario').value+'&senha='+document.getElementById('pwd').value+'&csenha='+document.getElementById('pwdc').value);
}

/* trigger cadastro etapa dois */
document.addEventListener('click', function (event) {
	if (event.target.matches('#concluircadastro')) {
                ConcluirCadastro();
        }
});

/* função que atualiza dados na base */
function Atualizar() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        document.getElementById('janela').innerHTML = this.responseText;
                        abreJanela();
                }
        };
        httpRequest.open('POST', 'requisicoes/atualizarjanela.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('id='+event.target.getAttribute('data-id'));
}


/* função que confirma a atualização de dados na base */
function ConfirmarAtualizacao() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        fechaJanela();
                        Candidatos();
                }
        };
        httpRequest.open('POST', 'requisicoes/atualizar.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('id='+event.target.getAttribute('data-id')+'&nome='+document.getElementById('atualizanome').value+'&email='+document.getElementById('atualizaemail').value);
}

/* função que exclui dados na base */
function Excluir() {
        var httpRequest = new XMLHttpRequest();
        httpRequest.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                        Candidatos();
                }
        };
        httpRequest.open('POST', 'requisicoes/excluir.php', true);
        httpRequest.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        httpRequest.send('id='+event.target.getAttribute('data-id'));
}

document.addEventListener('click', function (event) {
	if (!event.target.matches('.botao')) return;
	event.preventDefault();

        switch (event.target.id) {
                case 'inserir':
                        Inserir();
                        break;
                case 'atualizar':
                        Atualizar();
                        break;
                case 'excluir':
                        Excluir();
                        break;
                case 'confirmar':
                        ConfirmarAtualizacao();
                        break;
                default:
                return;
        }

}, false);

function setJanela() {
        /* janela */
        document.getElementById('janela').classList.add('janela');

        window.addEventListener('scroll', function (event) {
                scrollPos = window.pageYOffset;
                document.getElementById('janela').style.top = ((scrollPos + 18) + 'px');
        });
        /* janela */
}

setJanela();

/* abre janela */
function abreJanela() {
        document.getElementById('janela').classList.remove('janelafechada');
        document.getElementById('janela').classList.add('janelaaberta');
}
/* abre janela */

/* fecha janela */
function fechaJanela() {
        document.getElementById('janela').classList.remove('janelaaberta');
        document.getElementById('janela').classList.add('janelafechada');
}
/* fecha janela */

document.addEventListener('click', function (event) {
	if (event.target.matches('#fecharjanela')) {
                document.getElementById('janela').classList.add('janelafechada');
        }
});
