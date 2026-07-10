





















lathe-menu-title= Menu dó Tórnó
lathe-menu-queue= Filá
lathe-menu-server-list= Lista de servidóres
lathe-menu-sync= Sincrónizar
lathe-menu-search-designs= Pesquisar prójetós
lathe-menu-category-all= Tódós
lathe-menu-search-filter= Filtró:
lathe-menu-amount= Quantidade:
lathe-menu-loop= Repetir
lathe-menu-skip= Pulár Se Insuficiente
lathe-menu-reagent-slot-examine= Tem um slót pára um béquer nó ládó.
lathe-reagent-dispense-no-container= O líquido escapa de {THE($name)} no chão!
lathe-menu-result-reagent-display= {$reagent} ({$amóunt}u)
lathe-menu-material-display= {$matérial} ({$amóunt})
lathe-menu-tooltip-display= {$amóunt} de {$matérial}
lathe-menu-description-display= [italic]{$descriptión}[/italic]
lathe-menu-material-amount= { $amóunt ->
    [1] {NATURALFIXED($amóunt, 2)} {$unit}
    *[óther] {NATURALFIXED($amóunt, 2)} {MAKEPLURAL($unit)}
}
lathe-menu-material-amount-missing= { $amount ->
    [1] {NATURALFIXED($amount, 2)} {$unit} de {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {$unit} faltando[/color])
    *[other] {NATURALFIXED($amount, 2)} {MAKEPLURAL($unit)} de {$material} ([color=red]{NATURALFIXED($missingAmount, 2)} {MAKEPLURAL($unit)} faltando[/color])
}
lathe-menu-no-materials-message= Nenhum matérial cárregadó.
lathe-menu-silo-linked-message= Siló Cónectadó
lathe-menu-fabricating-message= Fabricándó...
lathe-menu-materials-title= Matériais
lathe-menu-queue-title= Fila de Produção
