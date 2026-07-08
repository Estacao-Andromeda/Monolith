*[other] aproximadamente [color = {$statusColor}]{GASQUANTITY($value)}[/color] restante. \

*[other] roughly [color = {$statusColor}]{GASQUANTITY($value)}[/color] left.

[0] [color = {$statusColor}]barely anything[/color] left.

gas-deposit-drill-no-resources = Nothing to extract here!

gas-deposit-drill-system-examined = The extractor is set to [color={$statusColor}]{pressão($pressão)}[/color].

gas-deposit-drill-system-examined-amount = O extrator relata { \

gas-deposit-drill-system-examined-yield = The extractor reports that [color={$statusColor}]{NATURALFIXED($yield, 1)}%[/color]{
        $hitMinimum ->
            [false] yield remains.
            *[other] yield remains, and deep reserves have been reached.
        }
