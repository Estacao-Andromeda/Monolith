# Loading Screen

replay-loading = Carregando ({$cur}/{$total})
replay-loading-reading = Lendo Arquivos
replay-loading-processing = Processando Arquivos
replay-loading-spawning = Criando Entidades
replay-loading-initializing = Inicializando Entidades
replay-loading-starting= Iniciando Entidades
replay-loading-failed = Falha ao carregar replay. Erro:
                        {$reason}
replay-loading-retry = Tentar carregar com mais tolerância a exceções - PODE CAUSAR BUGS!
replay-loading-cancel = Cancelar

# Main Menu
replay-menu-subtext = Cliente de Replay
replay-menu-load = Carregar Replay Selecionado
replay-menu-select = Selecionar um Replay
replay-menu-open = Abrir Pasta de Replays
replay-menu-none = Nenhum replay encontrado.

# Main Menu Info Box
replay-info-title = Informações do Replay
replay-info-none-selected = Nenhum replay selecionado
replay-info-invalid = [color=red]Replay inválido selecionado[/color]
replay-info-info = {"["}color=gray]Selecionado:[/color]  {$name} ({$file})
                   {"["}color=gray]Hora:[/color]   {$time}
                   {"["}color=gray]ID da Rodada:[/color]   {$roundId}
                   {"["}color=gray]Duração:[/color]   {$duration}
                   {"["}color=gray]ForkId:[/color]   {$forkId}
                   {"["}color=gray]Versão:[/color]   {$version}
                   {"["}color=gray]Motor:[/color]   {$engVersion}
                   {"["}color=gray]Hash de Tipo:[/color]   {$hash}
                   {"["}color=gray]Hash de Comp:[/color]   {$compHash}

# Replay selection window
replay-menu-select-title = Selecionar Replay

# Replay related verbs
replay-verb-spectate = Observar

# command
cmd-replay-spectate-help = replay_spectate [entidade opcional]
cmd-replay-spectate-desc = Anexa ou desanexa o jogador local a um uid de entidade específico.
cmd-replay-spectate-hint = EntityUid Opcional

cmd-replay-toggleui-desc = Alterna a interface de controle do replay.
