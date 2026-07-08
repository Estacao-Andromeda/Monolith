discord-watchlist-connection-header =
    { $players ->
        [one] {$players} jogador em uma lista de monitoramento
        *[other] {$players} jogadores em listas de monitoramento
    } conectou-se a {$serverName}

discord-watchlist-connection-entry = - {$playerName} com mensagem "{$message}"{ $expiry ->
        [0] {""}
        *[other] {" "}(expira <t:{$expiry}:R>)
    }{ $otherWatchlists ->
        [0] {""}
        [one] {" "}e {$otherWatchlists} outra lista de monitoramento
        *[other] {" "}e {$otherWatchlists} outras listas de monitoramento
    }
