parse-minutes-fail = Nao foi possivel analisar '{$minutes}' como minutos
parse-session-fail = Não foi encontrada sessão para '{$username}'

## Role Timer Commands

# - playtime_addoverall
cmd-playtime_addoverall-desc = Adiciona os minutos especificados ao tempo de jogo geral de um jogador
cmd-playtime_addoverall-help = Uso: {$command} <nome do usuario> <minutos>
cmd-playtime_addoverall-succeed = Tempo geral aumentado para {$username} para {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addoverall-arg-user = <nome do usuario>
cmd-playtime_addoverall-arg-minutes = <minutos>
cmd-playtime_addoverall-error-args = Esperava exatamente dois argumentos

# - playtime_addrole
cmd-playtime_addrole-desc = Adiciona os minutos especificados ao tempo de jogo de cargo de um jogador
cmd-playtime_addrole-help = Uso: {$command} <nome do usuario> <cargo> <minutos>
cmd-playtime_addrole-succeed = Tempo de jogo de cargo aumentado para {$username} / \'{$role}\' para {TOSTRING($time, "dddd\\:hh\\:mm")}
cmd-playtime_addrole-arg-user = <nome do usuario>
cmd-playtime_addrole-arg-role = <cargo>
cmd-playtime_addrole-arg-minutes = <minutos>
cmd-playtime_addrole-error-args = Esperava exatamente três argumentos

# - playtime_getoverall
cmd-playtime_getoverall-desc = Obtem os minutos especificados para o tempo de jogo geral de um jogador
cmd-playtime_getoverall-help = Uso: {$command} <nome do usuario>
cmd-playtime_getoverall-success = Tempo geral de {$username} e {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getoverall-arg-user = <nome do usuario>
cmd-playtime_getoverall-error-args = Esperava exatamente um argumento

# - GetRoleTimer
cmd-playtime_getrole-desc = Obtem todos ou um temporizador de cargo de um jogador
cmd-playtime_getrole-help = Uso: {$command} <nome do usuario> [cargo]
cmd-playtime_getrole-no = Nenhum temporizador de cargo encontrado
cmd-playtime_getrole-role = Cargo: {$role}, Tempo de jogo: {$time}
cmd-playtime_getrole-overall = O tempo de jogo geral e {$time}
cmd-playtime_getrole-succeed = Tempo de jogo para {$username} e: {TOSTRING($time, "dddd\\:hh\\:mm")}.
cmd-playtime_getrole-arg-user = <nome do usuario>
cmd-playtime_getrole-arg-role = <cargo|'Geral'>
cmd-playtime_getrole-error-args = Esperava exatamente um ou dois argumentos

# - playtime_save
cmd-playtime_save-desc = Salva os tempos de jogo do jogador no banco de dados
cmd-playtime_save-help = Uso: {$command} <nome do usuario>
cmd-playtime_save-succeed = Tempo de jogo salvo para {$username}
cmd-playtime_save-arg-user = <nome do usuario>
cmd-playtime_save-error-args = Esperava exatamente um argumento

## 'playtime_flush' command'

cmd-playtime_flush-desc = Envia rastreadores ativos para armazenamento no rastreamento de tempo de jogo.
cmd-playtime_flush-help = Uso: {$command} [nome do usuário]\n    Isso causa um envio apenas para o armazenamento interno, não envia para o banco de dados imediatamente.\n    Se um usuário for fornecido, apenas aquele usuário é enviado.

cmd-playtime_flush-error-args = Esperava zero ou um argumento
cmd-playtime_flush-arg-user = [nome do usuario]
