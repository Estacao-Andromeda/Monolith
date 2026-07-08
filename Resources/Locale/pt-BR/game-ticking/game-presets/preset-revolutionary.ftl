## Rev Head

roles-antag-rev-head-name = Revolucionário Chefe
roles-antag-rev-head-objective = Seu objetivo é assumir o controle da estação convertendo pessoas à sua causa e matando toda a equipe de Comando na estação.

head-rev-role-greeting =
    Você é um Revolucionário Chefe.
    Você é encarregado de remover todo o Comando da estação através da morte, exílio ou prisão.
    O Sindicato patrocinou você com um flash que converte a tripulação ao seu lado.
    Cuidado, isso não funcionará em Segurança, Comando, ou aqueles usando óculos de sol.
    Viva la revolución!

head-rev-briefing =
    Use flashes para converter pessoas à sua causa.
    Livre-se de todos os chefes para assumir o controle da estação.

head-rev-break-mindshield = O Escudo Mental foi destruído!

## Rev

roles-antag-rev-name = Revolucionário
roles-antag-rev-objective = Seu objetivo é garantir a segurança e seguir as ordens dos Revolucionários Chefes, além de se livrar de toda a equipe de Comando na estação.

rev-break-control = {$name} lembrou-se de sua verdadeira lealdade!

rev-role-greeting =
    Você é um Revolucionário.
    Você é encarregado de assumir o controle da estação e proteger os Revolucionários Chefes.
    Livre-se de toda a equipe de Comando.
    Viva la revolución!

rev-briefing = Ajude seus revolucionários chefes a se livrarem de cada chefe para assumir o controle da estação.

## General

rev-title = Revolucionários
rev-description = Revolucionários estão entre nós.

rev-not-enough-ready-players = Não há jogadores prontos suficientes para o jogo. Houve {$readyPlayersCount} jogador(es) prontTHE(s).
rev-no-one-ready = Nenhum jogador ficou pronto! Não é possível iniciar Revolução.
rev-no-heads = Não havia Líderes Revolucionários para serem selecionados. Não é possível iniciar uma Revolução.

rev-won = os Revs Chefes sobreviveram e tomaram com sucesso o controle da estação.

rev-lost = O Comando sobreviveu e matou todos os Revs Chefes.

rev-stalemate = Todos os Revs Chefes e o Comando morreram. É um empate.

rev-reverse-stalemate = Tanto o Comando quanto os Revs Chefes sobreviveram.

rev-headrev-count = {$initialCount ->
    [one] Havia um Revolucionário Chefe:
    *[other] Havia {$initialCount} Revolucionários Chefes:
}

rev-headrev-name-user = [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) converteu {$count} {$count ->
    [one] pessoa
    *[other] pessoas
}

rev-headrev-name = [color=#5e9cff]{$name}[/color] converteu {$count} {$count ->
    [one] pessoa
    *[other] pessoas
}

## Deconverted window

rev-deconverted-title = Desconvertido!
rev-deconverted-text =
    Como o último revchefe morreu, a revolução acabou.

    Você não é mais um revolucionário, então seja gentil.
rev-deconverted-confirm = Confirmar
