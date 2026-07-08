# Displayed as initiator of vote when no user creates the vote
ui-vote-initiator-server = O servidor

## Default.Votes

ui-vote-restart-title = Reiniciar round
ui-vote-restart-succeeded = Votação de reinício bem-sucedida.
ui-vote-restart-failed = Votação de reinício falhou (necessário { TOSTRING($ratio, "P0") }).
ui-vote-restart-fail-not-enough-ghost-players = Votação de reinício falhou: Mínimo de { $ghostPlayerRequirement }% de jogadores fantasmas é necessário para iniciar uma votação de reinício. Atualmente, não há jogadores fantasmas suficientes.
ui-vote-restart-yes = Sim
ui-vote-restart-no = Não
ui-vote-restart-abstain = Abster-se

ui-vote-gamemode-title = Próximo modo de jogo
ui-vote-gamemode-tie = Empate na votação de modo de jogo! Escolhendo... { $picked }
ui-vote-gamemode-win = { $winner } venceu a votação de modo de jogo!

ui-vote-map-title = Próximo mapa
ui-vote-map-tie = Empate na votação de mapa! Escolhendo... { $picked }
ui-vote-map-win = { $winner } venceu a votação de mapa!
ui-vote-map-notlobby = Votação para mapas é válida apenas no lobby pré-round!
ui-vote-map-notlobby-time = Votação para mapas é válida apenas no lobby pré-round com { $time } restante!


# Votekick votes
ui-vote-votekick-unknown-initiator = Um jogador
ui-vote-votekick-unknown-target = Jogador Desconhecido
ui-vote-votekick-title = { $initiator } iniciou uma votação de expulsão para o usuário: { $targetEntity }. Motivo: { $reason }
ui-vote-votekick-yes = Sim
ui-vote-votekick-no = Não
ui-vote-votekick-abstain = Abster-se
ui-vote-votekick-success = Votação de expulsão para { $target } bem-sucedida. Motivo da votação: { $reason }
ui-vote-votekick-failure = Votação de expulsão para { $target } falhou. Motivo da votação: { $reason }
ui-vote-votekick-not-enough-eligible = Não há eleitores elegíveis suficientes online para iniciar uma votação de expulsão: { $voters }/{ $requirement }
ui-vote-votekick-server-cancelled = Votação de expulsão para { $target } foi cancelada pelo servidor.
