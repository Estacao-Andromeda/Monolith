# ====================================================================
# Entity Localization File
# Generated: 2026-07-10 21:56:05
# Total entities: 172
# ====================================================================

# From: _EstacaoPirata/Entities/Objects/Misc/base.yml

ent-CardBoxBase = caixa de baralho

ent-CardDeckBase = baralho de cartas

ent-CardHandBase = mão de cartas

# Abstract entity (referenceable by children)

ent-CardStackBase = pilha de cartas

# From: _EstacaoPirata/Entities/Objects/Misc/black_cards.yml

ent-CardBase = carta

ent-CardBoxBlack = {ent-CardBoxBase} preto
    .desc = {ent-CardBoxBase.desc}

ent-CardDeckBlack = {ent-CardDeckBase}
    .desc = {ent-CardDeckBase.desc}

# From: _EstacaoPirata/Entities/Objects/Misc/nt_cards.yml

ent-CardBaseNanotrasen = {$ent-CardBase}

ent-CardBoxNanotrasen = {ent-CardBoxBase} da Nanotrasen
    .desc = {ent-CardBoxBase.desc}

ent-CardDeckNanotrasen = {ent-CardDeckBase}
    .desc = {ent-CardDeckBase.desc}

# From: _EstacaoPirata/Entities/Objects/Misc/syndicate_cards.yml

ent-CardBaseSyndicate = {$ent-CardBase}

ent-CardBoxSyndicate = {ent-CardBoxBase} do Sindicato
    .desc = {ent-CardBoxBase.desc}

ent-CardDeckSyndicate = {ent-CardDeckBase}
    .desc = {ent-CardDeckBase.desc}

