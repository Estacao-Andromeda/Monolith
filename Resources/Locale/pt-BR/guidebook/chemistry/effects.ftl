
-create-3rd-person=
    { $chance ->
        [1] Cria
        *[other] criam
    }
-cause-3rd-person=
    { $chance ->
        [1] Causa
        *[other] causam
    }
-satiate-3rd-person=
    { $chance ->
        [1] Sacia
        *[other] saciam
    }
reagent-effect-guidebook-create-entity-reaction-effect=
    { $chance ->
        [1] Cria
        *[other] criam
    } { $amount ->
        [1] {INDEFINITE($entname)}
        *[other] {$amount} {MAKEPLURAL($entname)}
    }
reagent-effect-guidebook-explosion-reaction-effect=
    { $chance ->
        [1] Causa
        *[other] causam
    } uma explosão
reagent-effect-guidebook-emp-reaction-effect=
    { $chance ->
        [1] Causa
        *[other] causam
    } um pulso eletromagnético
reagent-effect-guidebook-flash-reaction-effect=
    { $chance ->
        [1] Causa
        *[other] causam
    } um flash ofuscante
reagent-effect-guidebook-foam-area-reaction-effect=
    { $chance ->
        [1] Cria
        *[other] criam
    } grandes quantidades de espuma
reagent-effect-guidebook-smoke-area-reaction-effect=
    { $chance ->
        [1] Cria
        *[other] criam
    } grandes quantidades de fumaça
reagent-effect-guidebook-satiate-thirst=
    { $chance ->
        [1] Sacia
        *[other] saciam
    } { $relative ->
        [1] sede em média
        *[other] sede a {NATURALFIXED($relative, 3)}x a taxa média
    }
reagent-effect-guidebook-satiate-hunger=
    { $chance ->
        [1] Sacia
        *[other] saciam
    } { $relative ->
        [1] fome em média
        *[other] fome a {NATURALFIXED($relative, 3)}x a taxa média
    }
reagent-effect-guidebook-health-change=
    { $chance ->
        [1] { $healsordeals ->
                [heals] Cura
                [deals] Causa
                *[both] Modifica a saúde em
             }
        *[other] { $healsordeals ->
                    [heals] curam
                    [deals] causam
                    *[both] modificam a saúde em
                 }
    } { $changes }
reagent-effect-guidebook-even-health-change=
    { $chance ->
        [1] { $healsordeals ->
            [heals] Cura uniformemente
            [deals] Causa uniformemente
            *[both] Modifica uniformemente a saúde em
        }
        *[other] { $healsordeals ->
            [heals] curam uniformemente
            [deals] causam uniformemente
            *[both] modificam uniformemente a saúde em
        }
    } { $changes }


reagent-effect-guidebook-status-effect=
    { $type ->
        [add]   { $chance ->
                    [1] Causa
                    *[other] causam
                } {LOC($key)} por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)} com acumulação
        *[set]  { $chance ->
                    [1] Causa
                    *[other] causam
                } {LOC($key)} por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)} sem acumulação
        [remove]{ $chance ->
                    [1] Remove
                    *[other] removem
                } {NATURALFIXED($time, 3)} {MANY("segundo", $time)} de {LOC($key)}
    }

reagent-effect-guidebook-activate-artifact=
    { $chance ->
        [1] Tenta
        *[other] tentam
    } ativar um artefato
reagent-effect-guidebook-set-solution-temperature-effect=
    { $chance ->
        [1] Define
        *[other] definem
    } a temperatura da solução para exatamente {NATURALFIXED($temperature, 2)}K
reagent-effect-guidebook-adjust-solution-temperature-effect=
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } calor da solução até ela atingir { $deltasign ->
                [1] no máximo {NATURALFIXED($maxtemp, 2)}K
                *[-1] no mínimo {NATURALFIXED($mintemp, 2)}K
            }
reagent-effect-guidebook-adjust-reagent-reagent=
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {NATURALFIXED($amount, 2)}u de {$reagent} { $deltasign ->
        [1] à
        *[-1] da
    } solução
reagent-effect-guidebook-adjust-reagent-group=
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {NATURALFIXED($amount, 2)}u de reagentes no grupo {$group} { $deltasign ->
            [1] à
            *[-1] da
        } solução
reagent-effect-guidebook-adjust-temperature=
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {POWERJOULES($amount)} de calor { $deltasign ->
            [1] ao
            *[-1] do
        } corpo onde está
reagent-effect-guidebook-chem-cause-disease=
    { $chance ->
        [1] Causa
        *[other] causam
    } a doença { $disease }
reagent-effect-guidebook-chem-cause-random-disease=
    { $chance ->
        [1] Causa
        *[other] causam
    } as doenças { $diseases }
reagent-effect-guidebook-jittering=
    { $chance ->
        [1] Causa
        *[other] causam
    } tremores
reagent-effect-guidebook-chem-clean-bloodstream=
    { $chance ->
        [1] Limpa
        *[other] limpam
    } a corrente sanguínea de outros químicos
reagent-effect-guidebook-cure-disease=
    { $chance ->
        [1] Cura
        *[other] curam
    } doenças
reagent-effect-guidebook-cure-eye-damage=
    { $chance ->
        [1] { $deltasign ->
                [1] Causa
                *[-1] Cura
            }
        *[other]
            { $deltasign ->
                [1] causam
                *[-1] curam
            }
    } dano nos olhos
reagent-effect-guidebook-chem-vomit=
    { $chance ->
        [1] Causa
        *[other] causam
    } vômito
reagent-effect-guidebook-create-gas=
    { $chance ->
        [1] Cria
        *[other] criam
    } { $moles } { $moles ->
        [1] mol
        *[other] mols
    } de { $gas }
reagent-effect-guidebook-drunk=
    { $chance ->
        [1] Causa
        *[other] causam
    } embriaguez
reagent-effect-guidebook-electrocute=
    { $chance ->
        [1] Eletrocuta
        *[other] eletrocutam
    } o metabolizador por {NATURALFIXED($time, 3)} {MANY("segundo", $time)}
reagent-effect-guidebook-extinguish-reaction=
    { $chance ->
        [1] Extingue
        *[other] extinguem
    } fogo
reagent-effect-guidebook-flammable-reaction=
    { $chance ->
        [1] Aumenta
        *[other] aumentam
    } a inflamabilidade
reagent-effect-guidebook-ignite=
    { $chance ->
        [1] Incendeia
        *[other] incendeiam
    } o metabolizador
reagent-effect-guidebook-make-sentient=
    { $chance ->
        [1] Torna
        *[other] tornam
    } o metabolizador senciente
reagent-effect-guidebook-make-polymorph=
    { $chance ->
        [1] Polimorfa
        *[other] polimorfam
    } o metabolizador em um { $entityname }
reagent-effect-guidebook-revert-polymorph=
    { $chance ->
        [1] Reverte
        *[other] revertem
    } o metabolizador de um { $entityname }
reagent-effect-guidebook-modify-bleed-amount=
    { $chance ->
        [1] { $deltasign ->
                [1] Induz
                *[-1] Reduz
            }
        *[other] { $deltasign ->
                    [1] induzem
                    *[-1] reduzem
                 }
    } sangramento
reagent-effect-guidebook-modify-blood-level=
    { $chance ->
        [1] { $deltasign ->
                [1] Aumenta
                *[-1] Diminui
            }
        *[other] { $deltasign ->
                    [1] aumentam
                    *[-1] diminuem
                 }
    } o nível de sangue
reagent-effect-guidebook-paralyze=
    { $chance ->
        [1] Paralisa
        *[other] paralisam
    } o metabolizador por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)}
reagent-effect-guidebook-movespeed-modifier=
    { $chance ->
        [1] Modifica
        *[other] modificam
    } a velocidade de movimento em {NATURALFIXED($walkspeed, 3)}x por pelo menos {NATURALFIXED($time, 3)} {MANY("segundo", $time)}
reagent-effect-guidebook-reset-narcolepsy=
    { $chance ->
        [1] Adia temporariamente
        *[other] adiam temporariamente
    } a narcolepsia
reagent-effect-guidebook-wash-cream-pie-reaction=
    { $chance ->
        [1] Limpa
        *[other] limpam
    } a torta de creme do rosto
reagent-effect-guidebook-cure-zombie-infection=
    { $chance ->
        [1] Cura
        *[other] curam
    } uma infecção zumbi em andamento
reagent-effect-guidebook-cause-zombie-infection=
    { $chance ->
        [1] Transmite
        *[other] transmitem
    } a infecção zumbi a um indivíduo
reagent-effect-guidebook-innoculate-zombie-infection=
    { $chance ->
        [1] Cura
        *[other] curam
    } uma infecção zumbi em andamento e fornece imunidade a infecções futuras
reagent-effect-guidebook-reduce-rotting=
    { $chance ->
        [1] Regenera
        *[other] regeneram
    } {NATURALFIXED($time, 3)} {MANY("segundo", $time)} de apodrecimento
reagent-effect-guidebook-area-reaction=
    { $chance ->
        [1] Causa
        *[other] causam
    } uma reação de fumaça ou espuma por {NATURALFIXED($duration, 3)} {MANY("segundo", $duration)}
reagent-effect-guidebook-add-to-solution-reaction=
    { $chance ->
        [1] Causa
        *[other] causam
    } que químicos aplicados a um objeto sejam adicionados ao seu recipiente de solução interno
reagent-effect-guidebook-plant-attribute=
    { $chance ->
        [1] Ajusta
        *[other] ajustam
    } {$attribute} em [color={$colorName}]{$amount}[/color]
reagent-effect-guidebook-plant-cryoxadone=
    { $chance ->
        [1] Rejuvenesce
        *[other] rejuvenescem
    } a planta, dependendo da idade da planta e do tempo para crescer
reagent-effect-guidebook-plant-phalanximine=
    { $chance ->
        [1] Restaura
        *[other] restauram
    } a viabilidade de uma planta tornada não viável por uma mutação
reagent-effect-guidebook-plant-diethylamine=
    { $chance ->
        [1] Aumenta
        *[other] aumentam
    } a vida útil e/ou saúde base da planta com 10% de chance para cada
reagent-effect-guidebook-plant-robust-harvest=
    { $chance ->
        [1] Aumenta
        *[other] aumentam
    } a potência da planta em {$increase} até um máximo de {$limit}. Faz a planta perder suas sementes assim que a potência atinge {$seedlesstreshold}. Tentar adicionar potência acima de {$limit} pode causar redução no rendimento com 10% de chance
reagent-effect-guidebook-plant-seeds-add=
    { $chance ->
        [1] Restaura as
        *[other] restauram as
    } sementes da planta
reagent-effect-guidebook-plant-seeds-remove=
    { $chance ->
        [1] Remove as
        *[other] removem as
    } sementes da planta
reagent-effect-guidebook-add-to-chemicals=
    { $chance ->
        [1] { $deltasign ->
                [1] Adiciona
                *[-1] Remove
            }
        *[other]
            { $deltasign ->
                [1] adicionam
                *[-1] removem
            }
    } {NATURALFIXED($amount, 2)}u de {$reagent} { $deltasign ->
        [1] à
        *[-1] da
    } solução
