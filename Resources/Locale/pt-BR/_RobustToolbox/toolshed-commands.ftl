command-help-usage =
    Uso:
    O comportamento deste comando pode ser invertido usando o prefixo "not".
    Teleporta as entidades fornecidas para alguma entidade alvo.
command-description-player-list =
    Retorna uma lista de todas as sessões de jogadores.
command-description-player-self =
    Retorna a sessão do jogador atual.
command-description-player-imm =
    Retorna a sessão associada ao jogador fornecido como argumento.
command-description-player-entity =
    Retorna as entidades das sessões de entrada.
command-description-self =
    Retorna a entidade anexada atual.
command-description-physics-velocity =
    Retorna a velocidade das entidades de entrada.
command-description-physics-angular-velocity =
    Retorna a velocidade angular das entidades de entrada.
command-description-buildinfo =
    Fornece informações sobre a build do jogo.
command-description-cmd-list =
    Retorna uma lista de todos os comandos, para este lado.
command-description-explain =
    Expande a expressão fornecida, fornecendo descrições e assinaturas de comandos. Isso funciona apenas para expressões válidas, não consegue explicar comandos que falha ao analisar.
command-description-search =
    Pesquisa na entrada o valor fornecido.
command-description-stopwatch =
    Mede o tempo de execução da expressão fornecida.
command-description-types-consumers =
    Fornece todos os comandos que podem consumir o tipo fornecido.
command-description-types-tree =
    Ferramenta de depuração para retornar todos os tipos que o interpretador de comandos pode converter a entrada.
command-description-types-gettype =
    Retorna o tipo da entrada.
command-description-types-fullname =
    Retorna o nome completo do tipo de entrada de acordo com o CoreCLR.
command-description-as =
    Converte a entrada para o tipo fornecido.
    Efetivamente uma dica de tipo se você sabe o tipo mas o interpretador não.
command-description-count =
    Conta a quantidade de entradas na sua entrada, retornando um inteiro.
command-description-map =
    Mapeia a entrada sobre o bloco fornecido.
command-description-select =
    Seleciona N objetos ou N% de objetos da entrada.
    Além disso, pode inverter este comando com not para fazer com que selecione tudo exceto N objetos.
command-description-comp =
    Retorna o componente fornecido das entidades de entrada, descartando entidades sem aquele componente.
command-description-delete =
    Exclui as entidades de entrada.
command-description-ent =
    Retorna o ID da entidade fornecido.
command-description-entities =
    Retorna todas as entidades no servidor.
command-description-paused =
    Filtra as entidades de entrada por se elas estão pausadas ou não.
command-description-with =
    Filtra as entidades de entrada por se elas têm o componente fornecido ou não.
command-description-fuck =
    Lança uma exceção.
command-description-ecscomp-listty =
    Lista cada tipo de componente registrado.
command-description-cd =
    Altera o diretório atual da sessão para o caminho relativo ou absoluto fornecido.
command-description-ls-here =
    Lista o conteúdo do diretório atual.
command-description-ls-in =
    Lista o conteúdo do caminho relativo ou absoluto fornecido.
command-description-methods-get =
    Retorna todos os métodos associados ao tipo de entrada.
command-description-methods-overrides =
    Retorna todos os métodos sobrescritos no tipo de entrada.
command-description-methods-overridesfrom =
    Retorna todos os métodos sobrescritos do tipo fornecido no tipo de entrada.
command-description-cmd-moo =
    Faz as perguntas importantes.
command-description-cmd-descloc =
    Retorna a string de localização para a descrição de um comando.
command-description-cmd-getshim =
    Retorna o shim de execução de um comando.
command-description-help =
    Fornece um resumo rápido de como usar o toolshed.
command-description-ioc-registered =
    Retorna todos os tipos registrados com IoCManager na thread atual (geralmente a thread do jogo)
command-description-ioc-get =
    Obtém uma instância de um registro IoC.
command-description-loc-tryloc =
    Tenta obter uma string de localização, retornando null se não conseguir.
command-description-loc-loc =
    Obtém uma string de localização, retornando a string não localizada se não conseguir.
command-description-physics-angular_velocity =
    Retorna a velocidade angular das entidades fornecidas.
command-description-vars =
    Fornece uma lista de todas as variáveis definidas nesta sessão.
command-description-any =
    Retorna true se houver valores na entrada, caso contrário false.
command-description-contains =
    Retorna se o enumerável de entrada contém o valor especificado.
command-description-ArrowCommand =
    Atribui a entrada a uma variável.
command-description-isempty =
    Retorna true se a entrada estiver vazia, caso contrário false.
command-description-isnull =
    Retorna true se a entrada for null, caso contrário false.
command-description-unique =
    Filtra a sequência de entrada para unicidade, removendo valores duplicados.
command-description-where =
    Dada uma sequência de entrada IEnumerable<T>, toma um bloco de assinatura T -> bool que decide se cada valor de entrada deve ser incluído na sequência de saída.
command-description-do =
    Compatibilidade com versões anteriores do BQL, aplica os comandos antigos fornecidos sobre a sequência de entrada.
command-description-named =
    Filtra as entidades de entrada pelo seu nome, com o regex ^selector$.
command-description-prototyped =
    Filtra as entidades de entrada pelo seu protótipo.
command-description-nearby =
    Cria uma nova lista de todas as entidades próximas às entradas dentro do intervalo fornecido.
command-description-first =
    Retorna a primeira entrada do enumerável fornecido.
command-description-splat =
    "Espalha" um bloco, valor ou variável, criando N cópias dele em uma lista.
command-description-val =
    Converte o valor, bloco ou variável fornecido para o tipo fornecido. Isso é principalmente uma solução para limitações atuais de variáveis.
command-description-var =
    Retorna o conteúdo da variável fornecida. Isso tentará inferir automaticamente o tipo de uma variável. Compostos que modificam uma variável podem precisar usar o comando 'val' em vez disso.
command-description-actor-controlled =
    Filtra entidades por se elas estão sendo controladas ativamente ou não.
command-description-actor-session =
    Retorna as sessões associadas às entidades de entrada.
command-description-physics-parent =
    Retorna o(s) pai(s) das entidades de entrada.
command-description-emplace =
    Executa o bloco fornecido sobre suas entradas, com o valor de entrada colocado na variável $value dentro do bloco.
    Além disso, separa $wx, $wy, $proto, $desc, $name e $paused para entidades.
    Também pode ter valores de separação para outros tipos, consulte a documentação para esse tipo para mais informações.
command-description-AddCommand =
    Realiza adição numérica.
command-description-SubtractCommand =
    Realiza subtração numérica.
command-description-MultiplyCommand =
    Realiza multiplicação numérica.
command-description-DivideCommand =
    Realiza divisão numérica.
command-description-min =
    Retorna o mínimo de dois valores.
command-description-max =
    Retorna o máximo de dois valores.
command-description-BitAndCommand =
    Realiza AND bit a bit.
command-description-bitor =
    Realiza OR bit a bit.
command-description-BitXorCommand =
    Realiza XOR bit a bit.
command-description-neg =
    Nega a entrada.
command-description-GreaterThanCommand =
    Realiza uma comparação maior que, x > y.
command-description-LessThanCommand =
    Realiza uma comparação menor que, x < y.
command-description-GreaterThanOrEqualCommand =
    Realiza uma comparação maior ou igual que, x >= y.
command-description-LessThanOrEqualCommand =
    Realiza uma comparação menor ou igual que, x <= y.
command-description-EqualCommand =
    Realiza uma comparação de igualdade, retornando true se as entradas forem iguais.
command-description-NotEqualCommand =
    Realiza uma comparação de igualdade, retornando true se as entradas não forem iguais.
command-description-append =
    Adiciona um valor ao enumerável de entrada.
command-description-DefaultIfNullCommand =
    Substitui a entrada pelo valor padrão do tipo se for null, mas apenas para tipos de valor (não objetos).
command-description-OrValueCommand =
    Se a entrada for null, usa o valor alternativo fornecido.
command-description-DebugPrintCommand =
    Imprime o valor fornecido transparentemente, para impressões de depuração em uma execução de comando.
command-description-i =
    Constante inteira.
command-description-f =
    Constante float.
command-description-s =
    Constante string.
command-description-b =
    Constante bool.
command-description-join =
    Junta duas sequências em uma única sequência.
command-description-reduce =
    Dado um bloco para usar como redutor, transforma uma sequência em um único valor.
    O lado esquerdo do bloco está implícito, e o lado direito é armazenado em $value.
command-description-rep =
    Repete o valor de entrada N vezes para formar uma sequência.
command-description-take =
    Toma N valores da sequência de entrada.
command-description-spawn-at =
    Gera uma entidade nas coordenadas fornecidas.
command-description-spawn-on =
    Gera uma entidade na entidade fornecida, nas suas coordenadas.
command-description-spawn-in =
    Gera uma entidade no contêiner fornecido na entidade fornecida, soltando-a nas suas coordenadas se não couber.
command-description-spawn-attached =
    Gera uma entidade anexada à entidade fornecida, em (0 0) relativo a ela.
command-description-mappos =
    Retorna as coordenadas de uma entidade relativas ao seu mapa atual.
command-description-pos =
    Retorna as coordenadas de uma entidade.
command-description-tp-coords =
    Teleporta as entidades fornecidas para as coordenadas alvo.
command-description-tp-to =
    Teleporta as entidades fornecidas para a entidade alvo.
command-description-tp-into =
    Teleporta as entidades fornecidas "para dentro" da entidade alvo, anexando-a em (0 0) relativo a ela.
command-description-comp-get =
    Obtém o componente fornecido da entidade fornecida.
command-description-comp-add =
    Adiciona o componente fornecido à entidade fornecida.
command-description-comp-ensure =
    Garante que a entidade fornecida tem o componente fornecido.
command-description-comp-has =
    Verifica se a entidade fornecida tem o componente fornecido.
command-description-AddVecCommand =
    Adiciona um escalar (valor único) a cada elemento na entrada.
command-description-SubVecCommand =
    Subtrai um escalar (valor único) de cada elemento na entrada.
command-description-MulVecCommand =
    Multiplica um escalar (valor único) por cada elemento na entrada.
command-description-DivVecCommand =
    Divide cada elemento na entrada por um escalar (valor único).
command-description-rng-to =
    Retorna um número entre a entrada (inclusive) e o argumento (exclusivo).
command-description-rng-from =
    Retorna um número entre o argumento (inclusive) e a entrada (exclusivo).
command-description-rng-prob =
    Retorna um booleano baseado na probabilidade/chance de entrada (de 0 a 1).
command-description-sum =
    Calcula a soma da entrada.
command-description-bin =
    "Agrupa" a entrada, contando quantas vezes cada elemento único ocorre.
command-description-extremes =
    Retorna as duas extremidades de uma lista, entrelaçadas.
command-description-sortby =
    Ordena a entrada do menor para o maior pela chave calculada.
command-description-sortmapby =
    Ordena a entrada do menor para o maior pela chave calculada, substituindo o valor pela sua chave calculada depois.
command-description-sort =
    Ordena a entrada do menor para o maior.
command-description-sortdownby =
    Ordena a entrada do maior para o menor pela chave calculada.
command-description-sortmapdownby =
    Ordena a entrada do maior para o menor pela chave calculada, substituindo o valor pela sua chave calculada depois.
command-description-sortdown =
    Ordena a entrada do maior para o menor.
command-description-iota =
    Retorna uma lista de números de 1 a N.
command-description-to =
    Retorna uma lista de números de N a M.
command-description-curtick =
    O tick atual do jogo.
command-description-curtime =
    O tempo atual do jogo (um TimeSpan).
command-description-realtime =
    O tempo real desde o início (um TimeSpan).
command-description-servertime =
    O tempo atual do jogo do servidor, ou zero se formos o servidor (um TimeSpan).
command-description-replace =
    Substitui as entidades de entrada pelo protótipo fornecido, preservando posição e rotação (mas nada mais).
command-description-allcomps =
    Retorna todos os componentes na entidade fornecida.
command-description-entitysystemupdateorder-tick =
    Lista a ordem de atualização de tick dos sistemas de entidade.
command-description-entitysystemupdateorder-frame =
    Lista a ordem de atualização de frame dos sistemas de entidade.
command-description-more =
    Imprime o conteúdo de $more, ou seja, qualquer extra que o Toolshed não imprimiu do último comando.
command-description-ModulusCommand =
    Calcula o módulo de dois valores.
    Geralmente é o resto, verifique a documentação do C# para o tipo.
command-description-ModVecCommand =
    Realiza a operação de módulo sobre a entrada com o valor constante do lado direito fornecido.
command-description-BitAndNotCommand =
    Realiza AND-NOT bit a bit sobre a entrada.
command-description-bitornot =
    Realiza OR-NOT bit a bit sobre a entrada.
command-description-BitXnorCommand =
    Realiza XNOR bit a bit sobre a entrada.
command-description-BitNotCommand =
    Realiza NOT bit a bit na entrada.
command-description-abs =
    Calcula o valor absoluto da entrada (removendo o sinal).
command-description-average =
    Calcula a média (média aritmética) da entrada.
command-description-bibytecount =
    Retorna o tamanho da entrada em bytes, dado que a entrada implementa IBinaryInteger.
    Isso NÃO é sizeof.
command-description-shortestbitlength =
    Retorna o número mínimo de bits necessário para representar o valor de entrada.
command-description-countleadzeros =
    Conta o número de zeros binários iniciais no valor de entrada.
command-description-counttrailingzeros =
    Conta o número de zeros binários finais no valor de entrada.
command-description-fpi =
    pi (3,14159...) como float.
command-description-fe =
    e (2,71828...) como float.
command-description-ftau =
    tau (6,28318...) como float.
command-description-fepsilon =
    O valor epsilon para um float, exatamente 1,4e-45.
command-description-dpi =
    pi (3,14159...) como double.
command-description-de =
    e (2,71828...) como double.
command-description-dtau =
    tau (6,28318...) como double.
command-description-depsilon =
    O valor epsilon para um double, exatamente 4,9406564584124654E-324.
command-description-hpi =
    pi (3,14...) como half.
command-description-he =
    e (2,71...) como half.
command-description-htau =
    tau (6,28...) como half.
command-description-hepsilon =
    O valor epsilon para um half, exatamente 5,9604645E-08.
command-description-floor =
    Retorna o floor do valor de entrada (arredondando em direção a zero).
command-description-ceil =
    Retorna o ceil do valor de entrada (arredondando para longe de zero).
command-description-round =
    Arredonda o valor de entrada.
command-description-trunc =
    Trunca o valor de entrada.
command-description-round2frac =
    Arredonda o valor de entrada para o número especificado de dígitos fracionários.
command-description-exponentbytecount =
    Retorna o número de bytes necessário para armazenar o expoente.
command-description-significandbytecount =
    Retorna o número de bytes necessário para armazenar o significando.
command-description-significandbitcount =
    Retorna o comprimento exato em bits do significando.
command-description-exponentshortestbitcount =
    Retorna o número mínimo de bits para armazenar o expoente.
command-description-stepnext =
    Avança para o próximo valor float, adicionando um ao significando com carry.
command-description-stepprev =
    Volta para o valor float anterior, subtraindo um do significando com carry.
command-description-checkedto =
    Converte do tipo numérico de entrada para o alvo, gerando erro se não for possível.
command-description-saturateto =
    Converte do tipo numérico de entrada para o alvo, saturando se o valor estiver fora do intervalo.
    Por exemplo, converter 382 para um byte saturaria para 255 (o valor máximo de um byte).
command-description-truncto =
    Converte do tipo numérico de entrada para o alvo, com truncamento.
    No caso de inteiros, isso é uma conversão de bits com extensão de sinal.
command-description-iscanonical =
    Retorna se a entrada está na forma canônica.
command-description-iscomplex =
    Retorna se a entrada é um número complexo (por valor, não por tipo).
command-description-iseven =
    Retorna se a entrada é par.
    Não é um pacote javascript.
command-description-isodd =
    Retorna se a entrada é ímpar.
command-description-isfinite =
    Retorna se a entrada é finita.
command-description-isimaginary =
    Retorna se a entrada é puramente imaginária (sem parte real).
command-description-isinfinite =
    Retorna se a entrada é infinita.
command-description-isinteger =
    Retorna se a entrada é um inteiro (por valor, não por tipo).
command-description-isnan =
    Retorna se a entrada é Not a Number (NaN).
    Este é um valor especial de ponto flutuante, então é por valor, não por tipo.
command-description-isnegative =
    Retorna se a entrada é negativa.
command-description-ispositive =
    Retorna se a entrada é positiva.
command-description-isreal =
    Retorna se a entrada é puramente real (sem parte imaginária).
command-description-issubnormal =
    Retorna se a entrada está na forma sub-normal.
command-description-iszero =
    Retorna se a entrada é zero.
command-description-pow =
    Calcula a potência do lado esquerdo para o lado direito. x^y.
command-description-sqrt =
    Calcula a raiz quadrada da sua entrada.
command-description-cbrt =
    Calcula a raiz cúbica da sua entrada.
command-description-root =
    Calcula a raiz N da sua entrada.
command-description-hypot =
    Calcula a hipotenusa de um triângulo com os lados A e B fornecidos.
command-description-sin =
    Calcula o seno da entrada.
command-description-sinpi =
    Calcula o seno da entrada multiplicado por pi.
command-description-asin =
    Calcula o arco seno da entrada.
command-description-asinpi =
    Calcula o arco seno da entrada multiplicado por pi.
command-description-cos =
    Calcula o cosseno da entrada.
command-description-cospi =
    Calcula o cosseno da entrada multiplicado por pi.
command-description-acos =
    Calcula o arco cosseno da entrada.
command-description-acospi =
    Calcula o arco cosseno da entrada multiplicado por pi.
command-description-tan =
    Calcula a tangente da entrada.
command-description-tanpi =
    Calcula a tangente da entrada multiplicado por pi.
command-description-atan =
    Calcula o arco tangente da entrada.
command-description-atanpi =
    Calcula o arco tangente da entrada multiplicado por pi.
command-description-iterate =
    Itera a função fornecida sobre a entrada N vezes, retornando uma lista de resultados.
    Pense nisso como aplicar sucessivamente a função a um valor, rastreando todos os valores intermediários.
command-description-pick =
    Escolhe um valor aleatório da entrada.
command-description-tee =
    Encaminha a entrada para o bloco fornecido, ignorando o resultado do bloco.
    Isso essencialmente permite ter um branch no seu código para fazer múltiplas operações em um valor.
command-description-cmd-info =
    Retorna um CommandSpec para o comando fornecido.
    Por si só, isso significa que imprimirá a mensagem de ajuda do comando.
command-description-comp-rm =
    Remove o componente fornecido da entidade.

command-description-overlay-toggle = Alterne uma overlay ligada ou desligada
command-description-overlay-add = Adicione uma overlay (se ela ainda não existir)
command-description-overlay-remove = Remova uma overlay
