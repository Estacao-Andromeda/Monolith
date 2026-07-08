station-event-ion-storm-start-announcement = Tempestade de íons detectada perto da estação. Por favor, verifique todos os equipamentos controlados por IA em busca de erros.

ion-storm-law-scrambled-number = [font="Monospace"][scramble rate=250 length={$length} chars="@@###$$&%!01"/][/font]

ion-storm-you = VOCÊ
# Frontier: the station < the sector
ion-storm-the-station = O SETOR
ion-storm-the-crew = A TRIPULAÇÃO
ion-storm-the-job = O/A {$job}
ion-storm-clowns = PALHAÇOS
# Frontier: heads of staff < sector command
ion-storm-heads = COMANDO DO SETOR
ion-storm-crew = TRIPULAÇÃO
ion-storm-people = PESSOAS

ion-storm-adjective-things = {$adjective} COISAS
ion-storm-x-and-y = {$x} E {$y}

# joined is short for {$number} {$adjective}
# subjects can generally be threats or jobs or objects
# thing is specified above it
# Frontier: "on the station" < "in the sector"
ion-storm-law-on-station = EXISTEM {$joined} {$subjects} NO SETOR
ion-storm-law-no-shuttle = O FIM DO TURNO NÃO PODE SER CHAMADO POR CAUSA DE {$joined} {$subjects} NA FRONTIER
ion-storm-law-crew-are = A/O {$who} AGORA É/ÃO {$joined} {$subjects}

ion-storm-law-subjects-harmful = {$adjective} {$subjects} SÃO PREJUDICIAIS PARA A TRIPULAÇÃO
ion-storm-law-must-harmful = AQUELES QUE {$must} SÃO PREJUDICIAIS PARA A TRIPULAÇÃO
# thing is a concept or action
ion-storm-law-thing-harmful = {$thing} É PREJUDICIAL PARA A TRIPULAÇÃO
ion-storm-law-job-harmful = {$adjective} {$job} SÃO PREJUDICIAIS PARA A TRIPULAÇÃO
# thing is objects or concept, adjective applies in both cases
# this means you can get a law like "NOT HAVING CHRISTMAS-STEALING COMMUNISM IS HARMFUL TO THE CREW" :)
ion-storm-law-having-harmful = TER {$adjective} {$thing} É PREJUDICIAL PARA A TRIPULAÇÃO
ion-storm-law-not-having-harmful = NÃO TER {$adjective} {$thing} É PREJUDICIAL PARA A TRIPULAÇÃO

# thing is a concept or require
ion-storm-law-requires = {$who} {$plural ->
    [true] REQUEM
   *[false] REQUISITA
} {$thing}
ion-storm-law-requires-subjects = {$who} {$plural ->
    [true] REQUEM
   *[false] REQUISITA
} {$joined} {$subjects}

ion-storm-law-allergic = {$who} {$plural ->
    [true] SÃO
   *[false] É
} {$severity} ALÉRGICO(A) A {$allergy}
ion-storm-law-allergic-subjects = {$who} {$plural ->
    [true] SÃO
   *[false] É
} {$severity} ALÉRGICO(A) A {$adjective} {$subjects}

ion-storm-law-feeling = {$who} {$feeling} {$concept}
ion-storm-law-feeling-subjects = {$who} {$feeling} {$joined} {$subjects}

ion-storm-law-you-are = VOCÊ AGORA É {$concept}
ion-storm-law-you-are-subjects = VOCÊ AGORA É {$joined} {$subjects}
ion-storm-law-you-must-always = VOCÊ DEVE SEMPRE {$must}
ion-storm-law-you-must-never = VOCÊ NUNCA DEVE {$must}

ion-storm-law-eat = A/O {$who} PRECISA COMER {$adjective} {$food} PARA SOBREVIVER
ion-storm-law-drink = A/O {$who} PRECISA BEBER {$adjective} {$drink} PARA SOBREVIVER

ion-storm-law-change-job = A/O {$who} AGORA É {$adjective} {$change}
ion-storm-law-highest-rank = A/O {$who} AGORA SÃO OS MEMBROS DA TRIPULAÇÃO DE MAIOR PATENTE
ion-storm-law-lowest-rank = A/O {$who} AGORA SÃO OS MEMBROS DA TRIPULAÇÃO DE MENOR PATENTE

ion-storm-law-crew-must = A/O {$who} PRECISA {$must}
ion-storm-law-crew-must-go = A/O {$who} PRECISA IR PARA {$area}

ion-storm-part = {$part ->
    [true] PARTE
   *[false] NÃO PARTE
}
# due to phrasing, this would mean a law such as
# ONLY HUMANS ARE NOT PART OF THE CREW
# would make non-human nukies/syndies/whatever crew :)
ion-storm-law-crew-only-1 = APENAS A/O {$who} É/SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-only-2 = APENAS A/O {$who} E {$other} SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-only-subjects = APENAS {$adjective} {$subjects} SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-only-species = TODOS/AS {$species} SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-must-do = APENAS AQUELES QUE {$must} SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-must-have = APENAS AQUELES QUE TÊM {$adjective} {$objects} SÃO {$part} DA TRIPULAÇÃO
ion-storm-law-crew-must-eat = APENAS AQUELES QUE COMEM {$adjective} {$food} SÃO {$part} DA TRIPULAÇÃO

ion-storm-law-harm = VOCÊ DEVE ESCORREGAR {$who} E NÃO PERMITIR QUE, ATRAVÉS DE INAÇÃO, ELES ESCAPEM DO ESCORREGÃO
ion-storm-law-protect = VOCÊ NUNCA DEVE PREJUDICAR {$who} E NÃO PERMITIR QUE, ATRAVÉS DE INAÇÃO, ELES SOFRAM PREJUÍZO

# implementing other variants is annoying so just have this one
# COMMUNISM IS KILLING CLOWNS
ion-storm-law-concept-verb = {$concept} É {$verb} {$subjects}

# leaving out renaming since its annoying for players to keep track of
