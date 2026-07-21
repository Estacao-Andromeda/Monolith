cmd-atvrange-desc = Define o alcance de debug de atmos (como dois floats, início [vermelho] e fim [azul])
cmd-atvrange-help = Uso: {$command} <início> <fim>
cmd-atvrange-error-start = START float inválido
cmd-atvrange-error-end = END float inválido
cmd-atvrange-error-zero = A escala não pode ser zero, pois isso causaria uma divisão por zero em AtmosDebugOverlay.

cmd-atvmode-desc = Define o modo de debug de atmos. Isso irá automaticamente resetar a escala.
cmd-atvmode-help = Uso: {$command} <TotalMoles/GasMoles/Temperature> [<ID de gás (para GasMoles)>]
cmd-atvmode-error-invalid = Modo inválido
cmd-atvmode-error-target-gas = Um gás alvo deve ser fornecido para este modo.
cmd-atvmode-error-out-of-range = ID de gás não analisável ou fora de alcance.
cmd-atvmode-error-info = Nenhuma informação adicional é necessária para este modo.

cmd-atvcbm-desc = Muda de vermelho/verde/azul para escala de cinza
cmd-atvcbm-help = Uso: {$command} <true/false>
cmd-atvcbm-error = Flag inválida
