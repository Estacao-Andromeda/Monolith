gas-deposit-drill-no-resources = Nada para extrair aqui!
gas-deposit-drill-system-examined = O extrator está definido para [color={$statusColor}]{PRESSURE($pressure)}[/color].
gas-deposit-drill-system-examined-amount = O extrator relata {
    $value ->
        [0] [color={$statusColor}]quase nada[/color] restante.
        *[other] aproximadamente [color={$statusColor}]{GASQUANTITY($value)}[/color] restante.
    }
gas-deposit-drill-system-examined-yield = O extrator relata que [color={$statusColor}]{NATURALFIXED($yield, 1)}%[/color]{
    $hitMinimum ->
        [false] de rendimento resta.
        *[other] de rendimento resta, e reservas profundas foram alcançadas.
    }
