ore-silo-ui-title = Silo de Materiais
ore-silo-ui-label-clients = Máquinas
ore-silo-ui-label-mats = Materiais
ore-silo-ui-itemlist-entry = {$linked ->
[true] {"[Vinculado] "}
*[False] {""}
} {$name} ({$beacon}) {$inRange ->
[true] {""}
*[false] (Fora de Alcance)
}
