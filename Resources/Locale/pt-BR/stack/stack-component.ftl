### UI

# Shown when a stack is examined in details range
comp-stack-examine-detail-count = {$count ->
    [one] Há [color={$markupCountColor}]{$count}[/color] item
    *[other] Há [color={$markupCountColor}]{$count}[/color] itens
} na pilha.

# Stack status control
comp-stack-status = Quantidade: [color=white]{$count}[/color]

### Interaction Messages

# Shown when attempting to add to a stack that is full
comp-stack-already-full = A pilha já está cheia.

# Shown when a stack becomes full
comp-stack-becomes-full = A pilha agora está cheia.

# Text related to splitting a stack
comp-stack-split = Você dividiu a pilha.
comp-stack-split-halve = Dividir pela metade
comp-stack-split-custom = Dividir quantidade...
comp-stack-split-too-small = A pilha é muito pequena para ser dividida.

# Cherry-picked from space-station-14#32938 courtesy of Ilya246
comp-stack-split-size = Máx: {$size}

ui-custom-stack-split-title = Dividir Quantidade
ui-custom-stack-split-line-edit-placeholder = Quantidade
ui-custom-stack-split-apply = Dividir
# End cherry-pick from ss14#32938
