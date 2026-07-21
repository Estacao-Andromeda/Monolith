### Locale para empunhar itens; ou seja, segurá-los com as duas mãos




wieldable-verb-text-wield = Empunhar
wieldable-verb-text-unwield = Soltar
wieldable-component-successful-wield= Você empunha { THE($item) }.
wieldable-component-failed-wield= Você solta { THE($item) }.
wieldable-component-successful-wield-other= { CAPITALIZE(THE($user)) } empunha { THE($item) }.
wieldable-component-failed-wield-other= { CAPITALIZE(THE($user)) } solta { THE($item) }.
wieldable-component-no-hands= Você não tem mãos suficientes!
wieldable-component-not-enough-free-hands= {$number ->
    [one] Você precisa de uma mão livre para empunhar { THE($item) }.
    *[other] Você precisa de { $number } mãos livres para empunhar { THE($item) }.
}
wieldable-component-not-in-hands= { CAPITALIZE(THE($item)) } não está nas suas mãos!
wieldable-component-requires= { CAPITALIZE(THE($item)) } deve ser empunhado!
gunwieldbonus-component-examine= Essa arma tem precisão melhorada quando empunhada.
gunrequireswield-component-examine= Essa arma só pode ser disparada quando empunhada.
