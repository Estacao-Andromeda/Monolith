# Poggers examine system

# TO-DO: se alguem passar por aqui no futuro, e conseguir arranjar um jeito de trocar esse texto para algo tipo
# "É a Fulana de Tal!"/"É o Fulano de Tal!"
# você ganha um beijo na testa de um programador do passado, tal qual Shrek e Jesus
# por hora, a gente fica com "É ele/ela, Fulana/o de Tal!"
# also TO-DO: generos neutros
examine-name = É {OBJECT($ent)}, [bold]{$name}[/bold]!
examine-can-see = Olhando para {OBJECT($ent)}, você vê:
examine-can-see-nothing = {CAPITALIZE(OBJECT($ent))} está completamente nu!

id-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] no cinto {POSS-ADJ($ent)}.
head-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] na cabeça {POSS-ADJ($ent)}.
eyes-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] nos olhos {POSS-ADJ($ent)}.
mask-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] no rosto {POSS-ADJ($ent)}.
neck-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] no pescoço {POSS-ADJ($ent)}.
ears-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] nas orelhas {POSS-ADJ($ent)}.
jumpsuit-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] que {SUBJECT($ent)} está vestindo.
outer-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] no corpo {POSS-ADJ($ent)}.
suitstorage-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] alçado no ombro {POSS-ADJ($ent)}.
back-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] nas costas {POSS-ADJ($ent)}.
gloves-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] nas mãos {POSS-ADJ($ent)}.
belt-examine = •{CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] que {SUBJECT($ent)} está vestindo.
shoes-examine = •[bold]{CAPITALIZE($item)}[/bold] nos pés {POSS-ADJ($ent)}.

id-card-examine-full = • Identidade de {CAPITALIZE(POSS-ADJ($wearer))}: [bold]{$nameAndJob}[/bold].

# Selfaware version

examine-name-selfaware = Este é você, [bold]{$name}[/bold]!
examine-can-see-selfaware = Olhando para si mesmo, você pode ver:
examine-can-see-nothing-selfaware = Você está completamente nu!

id-examine-selfaware = • Seu [bold]{$item}[/bold] no seu cinto.
head-examine-selfaware = • Seu [bold]{$item}[/bold] na sua cabeça.
eyes-examine-selfaware = • Seu [bold]{$item}[/bold] nos seus olhos.
mask-examine-selfaware = • Seu [bold]{$item}[/bold] no seu rosto.
neck-examine-selfaware = • Seu [bold]{$item}[/bold] no seu pescoço.
ears-examine-selfaware = • Seu [bold]{$item}[/bold] nas suas orelhas.
jumpsuit-examine-selfaware = • Seu [bold]{$item}[/bold] que você está vestindo.
outer-examine-selfaware = • Seu [bold]{$item}[/bold] no seu corpo.
suitstorage-examine-selfaware = • Seu [bold]{$item}[/bold] no seu ombro.
back-examine-selfaware = • Seu [bold]{$item}[/bold] nas suas costas.
gloves-examine-selfaware = • Seu [bold]{$item}[/bold] nas suas mãos.
belt-examine-selfaware = • Seu [bold]{$item}[/bold] que você está vestindo.
shoes-examine-selfaware = • Seu [bold]{$item}[/bold] nos seus pés.

# Selfaware examine

comp-hands-examine-empty-selfaware = Você não está segurando nada.
comp-hands-examine-selfaware = Você está segurando { $items }.

humanoid-appearance-component-examine-selfaware = {CAPITALIZE(SUBJECT($user))} {CONJUGATE-BE($user)} {INDEFINITE($user)} {$species} {$age}.
