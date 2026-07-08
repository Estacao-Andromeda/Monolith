defusable-examine-defused = {CAPITALIZE(THE($name))} est [color=lime]desarmado[/color].
defusable-examine-live = {CAPITALIZE(THE($name))} est [color=red]ticando[/color] e tem [color=red]{$time}[/color] segundos restantes.
defusable-examine-live-display-off = {CAPITALIZE(THE($name))} est [color=red]ticando[/color], e o temporizador parece estar desligado.
defusable-examine-inactive = {CAPITALIZE(THE($name))} est [color=lime]inativo[/color], mas ainda pode ser armado.
defusable-examine-bolts = Os parafusos esto {$down ->
[true] [color=red]abaixados[/color]
*[false] [color=green]levantados[/color]
}.
