## Survivor

roles-antag-survivor-name = Sobrevivente
# It's a Halo reference
roles-antag-survivor-objective = Objetivo Atual: Sobreviver

survivor-role-greeting =
    Você sobreviveu ao ataque dos magos. Sobreviva e escape vivo.
    Acima de tudo você precisa voltar para o Comando Central vivo.
    Colete tanto poder de fogo quanto necessário para garantir sua sobrevivência.
    Não confie em ninguém.

survivor-round-end-dead-count =
{
    $deadCount ->
        [one] [color=red]{$deadCount}[/color] sobrevivente morreu.
        *[other] [color=red]{$deadCount}[/color] sobreviventes morreram.
}

survivor-round-end-alive-count =
{
    $aliveCount ->
        [one] [color=yellow]{$aliveCount}[/color] sobrevivente foi abandonado na estação.
        *[other] [color=yellow]{$aliveCount}[/color] sobreviventes foram abandonados na estação.
}

survivor-round-end-alive-on-shuttle-count =
{
    $aliveCount ->
        [one] [color=green]{$aliveCount}[/color] sobrevivente conseguiu sair vivo.
        *[other] [color=green]{$aliveCount}[/color] sobreviventes conseguiram sair vivos.
}

## Wizard

objective-issuer-swf = [color=turquoise]A Federação dos Magos Espaciais[/color]

wizard-title = Mago
wizard-description = Há um Mago na estação! Você nunca sabe o que eles podem fazer.

roles-antag-wizard-name = Mago
roles-antag-wizard-objective = Ensine a eles uma lição que eles nunca esquecerão.

wizard-role-greeting =
    VOCÊ É UM MAGO!
    Houve tensões entre a Federação dos Magos Espaciais e a NanoTrasen.
    Então você foi selecionado pela Federação dos Magos Espaciais para visitar a estação.
    Dê a eles uma boa demonstração de seus poderes.
    O que você fazer é por sua conta, apenas lembre-se que os Magos Espaciais querem que você saia vivo.

wizard-round-end-name = mago

## TODO: Wizard Apprentice (Coming sometime post-wizard release)
