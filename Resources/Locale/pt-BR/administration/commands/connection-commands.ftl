## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = Permite temporariamente que um usuário contorne as verificações regulares de conexão.
cmd-grant_connect_bypass-help = Uso: grant_connect_bypass <usuário> [duração minutos]
    Concede temporariamente a um usuário a capacidade de contornar restrições de conexão regulares.
    A contornação se aplica apenas a este servidor de jogo e expirará após (por padrão) 1 hora.
    Eles poderão entrar independentemente de whitelist, bunker de pânico ou limite de jogadores.

cmd-grant_connect_bypass-arg-user = <usuário>
cmd-grant_connect_bypass-arg-duration = [duração minutos]

cmd-grant_connect_bypass-invalid-args = Esperado 1 ou 2 argumentos
cmd-grant_connect_bypass-unknown-user = Incapaz de encontrar usuário '{$user}'
cmd-grant_connect_bypass-invalid-duration = Duração inválida '{$duration}'
cmd-grant_connect_bypass-success = Contornação adicionada com sucesso para o usuário '{$user}'
