mail-recipient-mismatch = Nome ou cargo do destinatário não correspondem.
mail-recipient-mismatch-name = O nome do destinatário não corresponde.
mail-invalid-access = O nome e cargo do destinatário correspondem, mas o acesso não é o esperado.
mail-locked = O bloqueio anti-adulteração não foi removido. Toque a ID do destinatário.
mail-desc-far = Um pacote de correspondência.
mail-desc-close = Um pacote de correspondência endereçado a {CAPITALIZE($name)}, {$job}. Última localização conhecida: {$station}.
mail-desc-fragile = Ele tem um [color=red]rótulo frágil vermelho[/color].
mail-desc-priority = O [color=yellow]fita amarela de prioridade[/color] do bloqueio anti-adulteração está ativo.
mail-desc-priority-inactive = O [color=#886600]fita amarela de prioridade[/color] do bloqueio anti-adulteração está inativo.
mail-unlocked = Sistema anti-adulteração desbloqueado.
mail-unlocked-by-emag = Sistema anti-adulteração *BZZT*.
mail-unlocked-reward = Sistema anti-adulteração desbloqueado. {$bounty} créditos foram adicionados à conta Frontier.
mail-penalty-lock = BLOQUEIO ANTI-ADULTERAÇÃO QUEBRADO. CONTA BANCÁRIA DA ESTAÇÃO PENALIZADA EM {$credits} CRÉDITOS.
mail-penalty-fragile = INTEGRIDADE COMPROMETIDA. CONTA BANCÁRIA DA ESTAÇÃO PENALIZADA EM {$credits} CRÉDITOS.
mail-penalty-expired = ENTREGA ATRASADA. CONTA BANCÁRIA DA ESTAÇÃO PENALIZADA EM {$credits} CRÉDITOS.
mail-item-name-unaddressed = correspondência
mail-item-name-addressed = correspondência ({$recipient})

# Frontier: descrição reformulada, não precisa ser um container.
command-mailto-description = Coloca um item na fila para ser entregue a um destinatário. Exemplo de uso: `mailto 1234 5678 false false`. Se a entidade alvo for um container, seu conteúdo será transferido para um pacote de correspondência real.
# Frontier: adicionar descrição is-large, container<contents
command-mailto-help = Uso: {$command} <entidadeUid do destinatário> <entidadeUid do conteúdo> [é-frágil: true|false] [é-prioridade: true|false] [é-grande: true|false]
command-mailto-no-mailreceiver = A entidade do destinatário alvo não tem um {$requiredComponent}.
command-mailto-no-blankmail = O protótipo {$blankMail} não existe. Algo está muito errado. Contate um programador.
command-mailto-bogus-mail = {$blankMail} não tinha {$requiredMailComponent}. Algo está muito errado. Contate um programador.
command-mailto-invalid-container = A entidade do container alvo não tem um container {$requiredContainer}.
command-mailto-unable-to-receive = A entidade do destinatário alvo não pôde ser configurada para receber correspondência. A ID pode estar ausente.
command-mailto-no-teleporter-found = A entidade do destinatário alvo não pôde ser correspondida a nenhum teletransportador de correspondência da estação. O destinatário pode estar fora da estação.
command-mailto-success = Sucesso! O pacote de correspondência foi colocado na fila para o próximo teletransporte em {$timeToTeleport} segundos.

# Frontier: conclusões do comando mailto
command-mailto-completion-recipient = <entidadeUid do destinatário>
command-mailto-completion-container = <entidadeUid do conteúdo>
command-mailto-completion-fragile = [é-frágil: true|false]
command-mailto-completion-priority = [é-prioridade: true|false]
command-mailto-completion-large = [é-grande: true|false]
# Fim Frontier

command-mailnow = Força todos os teletransportadores de correspondência a entregarem outra rodada de correspondência o mais rápido possível. Isso não contornará o limite de correspondência não entregue.
command-mailnow-help = Uso: {$command}
command-mailnow-success = Sucesso! Todos os teletransportadores de correspondência estarão entregando outra rodada de correspondência em breve.
