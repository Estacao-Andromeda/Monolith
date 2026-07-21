
health-scale-display=
    { $deltasign ->
        [-1] { $kind } dano em [color=green]x{ $amount }[/color]
         [0] { $kind } dano em x{ $amount }
         [1] { $kind } dano em [color=red]x{ $amount }[/color]
        *[other] { $kind } dano em x{ $amount }
    }
reagent-effect-guidebook-health-scale=
    { $chance ->
        [1] Multiplica { $changes } existentes
       *[other] Tem { $chance }% de chance de multiplicar { $changes } existentes
    }
reagent-effect-guidebook-claws-growth=
    { $chance ->
        [1] Faz crescer
        *[other] fazem crescer
    } garras em { $amount }x a velocidade durante o metabolismo
reagent-effect-guidebook-claws-growth-suppression=
    { $chance ->
        [1] Suprime
        *[other] suprimem
    } o crescimento de garras.
