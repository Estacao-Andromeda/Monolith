# Poggers examine system

# TO-DO: se alguem passar por aqui no futuro, e conseguir arranjar um jeito de trocar esse texto para algo tipo
# "É a Fulana de Tal!"/"É o Fulano de Tal!"
# você ganha um beijo na testa de um programador do passado, tal qual Shrek e Jesus
# por hora, a gente fica com "É ele/ela, Fulana/o de Tal!"
# also TO-DO: generos neutros
examine-name = É {OBJECT($ent)}, [bold]{$name}[/bold]!
examine-can-see = Olhando para {OBJECT($ent)}, você vê:
examine-can-see-nothing = Que {OBJECT($ent)} está completamente nu!

id-examine = • [bold]{CAPITALIZE($item)}[/bold] no cinto {POSS-ADJ($ent)}.
head-examine = • [bold]{CAPITALIZE($item)}[/bold] na cabeça {POSS-ADJ($ent)}.
eyes-examine = • [bold]{CAPITALIZE($item)}[/bold] nos olhos {POSS-ADJ($ent)}.
mask-examine = • [bold]{CAPITALIZE($item)}[/bold] no rosto {POSS-ADJ($ent)}.
neck-examine = • [bold]{CAPITALIZE($item)}[/bold] no pescoço {POSS-ADJ($ent)}.
ears-examine = • [bold]{CAPITALIZE($item)}[/bold] nas orelhas {POSS-ADJ($ent)}.
jumpsuit-examine = • {CAPITALIZE(INDEFINITE($item))} [bold]{$item}[/bold] que {SUBJECT($ent)} está vestindo.
outer-examine = • [bold]{CAPITALIZE($item)}[/bold] no corpo {POSS-ADJ($ent)}.
suitstorage-examine = • [bold]{CAPITALIZE($item)}[/bold] alçado no ombro {POSS-ADJ($ent)}.
back-examine = • [bold]{CAPITALIZE($item)}[/bold] nas costas {POSS-ADJ($ent)}.
gloves-examine = • [bold]{CAPITALIZE($item)}[/bold] nas mãos {POSS-ADJ($ent)}.
belt-examine = • [bold]{CAPITALIZE($item)}[/bold] que {SUBJECT($ent)} está vestindo.
shoes-examine = • [bold]{CAPITALIZE($item)}[/bold] nos pés {POSS-ADJ($ent)}.

id-card-examine-full = • Identidade de {CAPITALIZE(POSS-ADJ($wearer))}: [bold]{$nameAndJob}[/bold].

# Selfaware version

examine-name-selfaware = Este é você, [bold]{$name}[/bold]!
examine-can-see-selfaware = Olhando para si, você vê:
examine-can-see-nothing-selfaware = Que você está completamente nu!

id-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] no seu cinto.
head-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] na sua cabeça.
eyes-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] nos seus olhos.
mask-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] no seu rosto.
neck-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] no seu pescoço.
ears-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] nas suas orelhas.
jumpsuit-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] que você está vestindo.
outer-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] no seu corpo.
suitstorage-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] alçado no seu ombro.
back-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] nas suas costas.
gloves-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] nas suas mãos.
belt-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] que você está vestindo.
shoes-examine-selfaware = • [bold]{CAPITALIZE($item)}[/bold] nos seus pés.

# Selfaware examine

comp-hands-examine-empty-selfaware = Você não está segurando nada.
comp-hands-examine-selfaware = Você está segurando { $items }.

humanoid-appearance-component-examine-selfaware = {CAPITALIZE(SUBJECT($user))} {CONJUGATE-BE($user)} {INDEFINITE($user)} {$species} {$age}.
