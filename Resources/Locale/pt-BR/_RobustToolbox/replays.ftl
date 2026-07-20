# Playback Commands

cmd-replay-play-desc = Resume o playback do replay.
cmd-replay-play-help = replay_play

cmd-replay-pause-desc = Pausa o playback do replay.
cmd-replay-pause-help = replay_pause

cmd-replay-toggle-desc = Resume ou pausa o playback do replay.
cmd-replay-toggle-help = replay_toggle

cmd-replay-toggle-screenshot-mode-desc = (Des)Ativa o modo de screenshot para replays, escondendo o widget de controle de replay.
cmd-replay-toggle-screenshot-mode-help = replay_toggle_screenshot_mode

cmd-replay-stop-desc = Para e descarrega um replay.
cmd-replay-stop-help = replay_stop

cmd-replay-load-desc = Carrega de toca um replay.
cmd-replay-load-help = replay_load <pasta do replay>
cmd-replay-load-hint = Pasta do replay

cmd-replay-skip-desc = Avança ou volta no tempo.
cmd-replay-skip-help = replay_skip <tick ou tempo>
cmd-replay-skip-hint = Ticks ou intervalo de tempo (HH:MM:SS).

cmd-replay-set-time-desc = Pula pra frente ou pra trás até um tempo específico.
cmd-replay-set-time-help = replay_set <tick ou tempo>
cmd-replay-set-time-hint = Tick or intervalo de tempo (HH:MM:SS)

cmd-replay-error-time = "{$time}" não é um número inteiro ou tempo.
cmd-replay-error-args = Número incorreto de argumentos.
cmd-replay-error-no-replay = Não está tocando um replay atualmente.
cmd-replay-error-already-loaded = Um replay já está carregado.
cmd-replay-error-run-level = Você não pode carregar um replay enquanto conectado a um server.

# Recording commands

cmd-replay-recording-start-desc = Inicia a gravação do replay, opicionalmente com um tempo limite.
cmd-replay-recording-start-help = Uso: replay_recording_start [nome] [sobrescrever] [tempo limite]
cmd-replay-recording-start-success = Começou a gravar um replay.
cmd-replay-recording-start-already-recording = Já gravando um replay.
cmd-replay-recording-start-error = Um erro ocorreu ao tentar iniciar a gravação.
cmd-replay-recording-start-hint-time = [tempo limite (minutos)]
cmd-replay-recording-start-hint-name = [nome]
cmd-replay-recording-start-hint-overwrite = [sobrescrever (bool)]

cmd-replay-recording-stop-desc = Para uma gravação de replay.
cmd-replay-recording-stop-help = Uso: replay_recording_stop
cmd-replay-recording-stop-success = Parou de gravar um replay.
cmd-replay-recording-stop-not-recording = Não há replay sendo gravado atualmente.

cmd-replay-recording-stats-desc = Mostra informação sobre a gravação atual de replay.
cmd-replay-recording-stats-help = Uso: replay_recording_stats
cmd-replay-recording-stats-result = Duração: {$time} min, Ticks: {$ticks}, Tamanho: {$size} MB, Taxa: {$rate} MB/min.


# Time Control UI
replay-time-box-scrubbing-label = Filtragem Dinâmica
replay-time-box-replay-time-label = Tempo de Gravação: {$current} / {$end}  ({$percentage}%)
replay-time-box-server-time-label = Tempo do Server: {$current} / {$end}
replay-time-box-index-label = Índice: {$current} / {$total}
replay-time-box-tick-label = Tick: {$current} / {$total}
