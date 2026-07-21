command-list-langs-desc = Lista as línguas que sua entidade atual pode falar neste momento.
command-list-langs-help = Uso: {$command}

command-saylang-desc = Envie uma mensagem numa língua específica. Para escolher uma língua, você pode usar o nome da língua ou sua posição na lista de línguas.
command-saylang-help = Uso: {$command} <id da língua> <mensagem>. Exemplo: {$command} TauCetiBasic "Olá Mundo!". Exemplo: {$command} 1 "Olá Mundo!"

command-language-select-desc = Selecione a língua atualmente falada de sua entidade. Você pode usar o nome da língua ou sua posição na lista de línguas.
command-language-select-help = Uso: {$command} <id da língua>. Exemplo: {$command} 1. Exemplo: {$command} TauCetiBasic

command-language-spoken = Falado:
command-language-understood = Entendido:
command-language-current-entry = {$id}. {$language} - {$name} (atual)
command-language-entry = {$id}. {$language} - {$name}

command-language-invalid-number = O número da língua deve estar entre 0 e {$total}. Alternativamente, use o nome da língua.
command-language-invalid-language = A língua {$id} não existe ou você não pode falá-la.

# Toolshed

command-description-language-add = Adiciona uma nova língua à entidade canalizada. Os dois últimos argumentos indicam se deve ser falada/entendida. Exemplo: 'self language:add "Canilunzt" true true'
command-description-language-rm = Remove uma língua da entidade canalizada. Funciona de forma similar ao language:add. Exemplo: 'self language:rm "TauCetiBasic" true true'.
command-description-language-lsspoken = Lista todas as línguas que a entidade pode falar. Exemplo: 'self language:lsspoken'
command-description-language-lsunderstood = Lista todas as línguas que a entidade pode entender. Exemplo: 'self language:lsunderstood'

command-description-translator-addlang = Adiciona uma nova língua alvo à entidade tradutor canalizada. Veja language:add para detalhes.
command-description-translator-rmlang = Remove uma língua alvo da entidade tradutor canalizada. Veja language:rm para detalhes.
command-description-translator-addrequired = Adiciona uma nova língua requerida à entidade tradutor canalizada. Exemplo: 'ent 1234 translator:addrequired "TauCetiBasic"'
command-description-translator-rmrequired = Remove uma língua requerida da entidade tradutor canalizada. Exemplo: 'ent 1234 translator:rmrequired "TauCetiBasic"'
command-description-translator-lsspoken = Lista todas as línguas faladas para a entidade tradutor canalizada. Exemplo: 'ent 1234 translator:lsspoken'
command-description-translator-lsunderstood = Lista todas as línguas entendidas para a entidade tradutor canalizada. Exemplo: 'ent 1234 translator:lsunderstood'
command-description-translator-lsrequired = Lista todas as línguas requeridas para a entidade tradutor canalizada. Exemplo: 'ent 1234 translator:lsrequired'

command-language-error-this-will-not-work = Isso não funcionará.
command-language-error-not-a-translator = A entidade {$entity} não é um tradutor.
