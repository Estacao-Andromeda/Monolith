gas-deposit-drill-no-resources = Nada para extrair aqui!
gas-deposit-drill-system-examined = O extrator está configurado para [color={$statusColor}]{PRESSURE($pressure)}[/color].
gas-deposit-drill-system-examined-amount = O extrator relata que {
    $value ->
        [0] [color={$statusColor}]há bem pouco[/color] sobrando.
        *[other] aproximadamente [color={$statusColor}]{GASQUANTITY($value)}[/color] sobrando.
    }
gas-deposit-drill-system-examined-yield = O extrator relata que sobra [color={$statusColor}]{NATURALFIXED($yield, 1)}%[/color]{
    $hitMinimum ->
        [false] de coleta.
        *[other] de coleta, e depositos profundos foram alcançados.
    }
