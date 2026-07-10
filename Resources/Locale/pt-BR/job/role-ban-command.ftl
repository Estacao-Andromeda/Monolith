### Localization for role ban command

cmd-roleban-desc = Bane um jogador de um cargo
cmd-roleban-help = Uso: roleban <nome ou ID de usuário> <cargo> <motivo> [duração em minutos, deixe vazio ou 0 para banimento permanente]

## Completion result hints
cmd-roleban-hint-1 = <nome ou ID de usuário>
cmd-roleban-hint-2 = <cargo>
cmd-roleban-hint-3 = <motivo>
cmd-roleban-hint-4 = [duração em minutos, deixe vazio ou 0 para banimento permanente]
cmd-roleban-hint-5 = [gravidade]

cmd-roleban-hint-duration-1 = Permanente
cmd-roleban-hint-duration-2 = 1 dia
cmd-roleban-hint-duration-3 = 3 dias
cmd-roleban-hint-duration-4 = 1 semana
cmd-roleban-hint-duration-5 = 2 semanas
cmd-roleban-hint-duration-6 = 1 mês


### Localization for role unban command

cmd-roleunban-desc = Perdoa o banimento de cargo de um jogador
cmd-roleunban-help = Uso: roleunban <id do banimento de cargo>

## Completion result hints
cmd-roleunban-hint-1 = <id do banimento de cargo>


### Localization for roleban list command

cmd-rolebanlist-desc = Lista os banimentos de cargo do usuário
cmd-rolebanlist-help = Uso: <nome ou ID de usuário> [incluir desbanidos]

## Completion result hints
cmd-rolebanlist-hint-1 = <nome ou ID de usuário>
cmd-rolebanlist-hint-2 = [incluir desbanidos]


cmd-roleban-minutes-parse = {$time} não é uma quantidade válida de minutos.\n{$help}
cmd-roleban-severity-parse = ${severity} não é uma gravidade válida\n{$help}.
cmd-roleban-arg-count = Quantidade inválida de argumentos.
cmd-roleban-job-parse = O cargo {$job} não existe.
cmd-roleban-name-parse = Não foi possível encontrar um jogador com esse nome.
cmd-roleban-existing = {$target} já tem um banimento de cargo para {$role}.
cmd-roleban-success = Cargo banido {$target} de {$role} com motivo {$reason} {$length}.

cmd-roleban-inf = permanentemente
cmd-roleban-until =  até {$expires}

# Department bans
cmd-departmentban-desc = Bane um jogador dos cargos que compõem um departamento
cmd-departmentban-help = Uso: departmentban <nome ou ID de usuário> <departamento> <motivo> [duração em minutos, deixe vazio ou 0 para banimento permanente]
