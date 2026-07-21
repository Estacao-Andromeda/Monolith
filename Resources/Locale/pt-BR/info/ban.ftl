# ban
cmd-ban-desc = Bane alguém
cmd-ban-help = Uso: ban <nome ou ID de usuário> <motivo> [duração em minutos, deixe vazio ou 0 para banimento permanente]
cmd-ban-player = Não foi possível encontrar um jogador com esse nome.
cmd-ban-invalid-minutes = {$minutes} não é uma quantidade válida de minutos!
cmd-ban-invalid-severity = {$severity} não é uma gravidade válida!
cmd-ban-invalid-arguments = Quantidade inválida de argumentos
cmd-ban-hint = <nome/ID de usuário>
cmd-ban-hint-reason = <motivo>
cmd-ban-hint-duration = [duração]
cmd-ban-hint-severity = [gravidade]

cmd-ban-hint-duration-1 = Permanente
cmd-ban-hint-duration-2 = 1 dia
cmd-ban-hint-duration-3 = 3 dias
cmd-ban-hint-duration-4 = 1 semana
cmd-ban-hint-duration-5 = 2 semanas
cmd-ban-hint-duration-6 = 1 mês

# ban panel
cmd-banpanel-desc = Abre o painel de banimentos
cmd-banpanel-help = Uso: banpanel [nome ou ID de usuário]
cmd-banpanel-server = Isso não pode ser usado a partir do console do servidor
cmd-banpanel-player-err = O jogador especificado não pôde ser encontrado

# listbans
cmd-banlist-desc = Lista os banimentos ativos de um usuário.
cmd-banlist-help = Uso: banlist <nome ou ID de usuário>
cmd-banlist-empty = Nenhum banimento ativo encontrado para {$user}
cmd-banlistF-hint = <nome/ID de usuário>

cmd-ban_exemption_update-desc = Define uma isenção de um tipo de banimento para um jogador.
cmd-ban_exemption_update-help = Uso: ban_exemption_update <jogador> <flag> [<flag> [...]]
    Especifique múltiplas flags para dar a um jogador múltiplas flags de isenção de banimento.
    Para remover todas as isenções, execute este comando e dê "None" como única flag.

cmd-ban_exemption_update-nargs = Espera pelo menos 2 argumentos
cmd-ban_exemption_update-locate = Não foi possível localizar o jogador '{$player}'.
cmd-ban_exemption_update-invalid-flag = Flag inválida '{$flag}'.
cmd-ban_exemption_update-success = Atualizadas as flags de isenção de banimento para '{$player}' ({$uid}).
cmd-ban_exemption_update-arg-player = <jogador>
cmd-ban_exemption_update-arg-flag = <flag>

cmd-ban_exemption_get-desc = Mostra as isenções de banimento para um jogador específico.
cmd-ban_exemption_get-help = Uso: ban_exemption_get <jogador>

cmd-ban_exemption_get-nargs = Espera exatamente 1 argumento
cmd-ban_exemption_get-none = O usuário não tem isenção de nenhum banimento.
cmd-ban_exemption_get-show = O usuário tem isenção das seguintes flags de banimento: {$flags}.
cmd-ban_exemption_get-arg-player = <jogador>

# Ban panel
ban-panel-title = Painel de banimentos
ban-panel-player = Jogador
ban-panel-ip = IP
ban-panel-hwid = HWID
ban-panel-reason = Motivo
ban-panel-last-conn = Usar IP e HWID da última conexão?
ban-panel-submit = Banir
ban-panel-confirm = Tem certeza?
ban-panel-tabs-basic = Informações básicas
ban-panel-tabs-reason = Motivo
ban-panel-tabs-players = Lista de jogadores
ban-panel-tabs-role = Informações de banimento de cargo
ban-panel-no-data = Você deve fornecer um usuário, IP ou HWID para banir
ban-panel-invalid-ip = O endereço IP não pôde ser analisado. Tente novamente
ban-panel-select = Selecionar tipo
ban-panel-server = Banimento de servidor
ban-panel-role = Banimento de cargo
ban-panel-minutes = Minutos
ban-panel-hours = Horas
ban-panel-days = Dias
ban-panel-weeks = Semanas
ban-panel-months = Meses
ban-panel-years = Anos
ban-panel-permanent = Permanente
ban-panel-ip-hwid-tooltip = Deixe vazio e marque a caixa abaixo para usar os detalhes da última conexão
ban-panel-severity = Gravidade:
ban-panel-erase = Apagar mensagens do chat e jogador da rodada

# Ban string
server-ban-string = {$admin} criou um banimento de servidor de gravidade {$severity} que expira {$expires} para [{$name}, {$ip}, {$hwid}], com motivo: {$reason}
server-ban-string-no-pii = {$admin} criou um banimento de servidor de gravidade {$severity} que expira {$expires} para {$name} com motivo: {$reason}
server-ban-string-never = nunca

# Kick on ban
ban-kick-reason = Você foi banido
