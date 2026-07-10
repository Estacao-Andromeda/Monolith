armor-plate-break = Sua {$plateName} foi quebrada!
armor-plate-examine-with-plate = Tem uma [color=yellow]{$plateName}[/color] instalada. Durabilidade: [color={$durabilityColor}]{$percent}%[/color]
armor-plate-examine-with-plate-simple = Tem uma [color=yellow]{$plateName}[/color] instalada.
armor-plate-examine-no-plate = Nenhuma placa de blindagem instalada.
armor-plate-examine-no-storage = Nenhum compartimento de armazenamento para placas de blindagem.

armor-plate-examinable-verb-text = Atributos da placa
armor-plate-examinable-verb-message = Examinar características de proteção e durabilidade.

armor-plate-attributes-examine = Esta placa de blindagem:
armor-plate-initial-durability = É classificada para [color=yellow]{ $durability }[/color] unidades padrão de dano.

armor-plate-item-durability = Durabilidade: [color={$durabilityColor}]{$percent}%[/color]

armor-plate-gait-speed = velocidade
armor-plate-gait-walk = velocidade de caminhada
armor-plate-gait-sprint = velocidade de corrida

armor-plate-speed-display =
    { $deltasign ->
        [-1] Aumenta sua {$gait} em [color=yellow]{$speedPercent}%[/color].
         [0] Não afeta sua velocidade.
         [1] Diminui sua {$gait} em [color=yellow]{$speedPercent}%[/color].
        *[other] Não deveria ter este valor de velocidade!
    }

armor-plate-ratios-display =
    { $deltasign ->
        [-1] [color=cyan]Absorve[/color] [color=yellow]{$ratioPercent}%[/color] de [color=yellow]{$dmgType}[/color] e recebe como [color=yellow]x{$multiplier}[/color] dano de durabilidade.
         [0] Não é afetado por {$dmgType}
         [1] [color=fuchsia]Amplifica[/color] [color=yellow]{$dmgType}[/color] em [color=yellow]{$ratioPercent}%[/color] e recebe o dano adicional como [color=yellow]x{$multiplier}[/color] dano de durabilidade.
        *[other] {$dmgType} não deveria ter este valor de absorção!
    }
armor-plate-stamina-value = Causa [color=yellow]{$multiplier}%[/color] do dano absorvido como dano de stamina.
