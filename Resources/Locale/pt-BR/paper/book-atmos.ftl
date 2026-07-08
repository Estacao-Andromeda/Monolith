book-text-atmos-distro = A rede de distribuição, ou "distro" para encurtar, é a linha de vida da estação. É responsável por transportar ar da atmosfera por toda a estação.

        Os tubos relevantes costumam ser pintados de Azul Sutil Pop, mas uma maneira infalível de identificá-los é usar um scanner de bandeja para rastrear quais tubos estão conectados aos ventiladores ativos na estação.

        A mistura padrão de gás da rede de distribuição é 20 graus Celsius, 78% nitrogênio, 22% oxigênio. Você pode verificar isso usando um analisador de gás em um tubo de distro ou em qualquer ventilador conectado a ele. Circunstâncias especiais podem exigir misturas especiais.

        Quando se trata de decidir sobre uma pressão de distro, há algumas coisas a considerar. Ventiladores ativos regularão a pressão da estação, então, contanto que tudo esteja funcionando corretamente, não existe pressão de distro muito alta.

        Uma pressão de distro mais alta permitirá que a rede de distro atue como um buffer entre os mineradores de gás e os ventiladores, fornecendo uma quantidade significativa de ar extra que pode ser usada para repressurizar a estação após um vazamento para o espaço.

        Uma pressão de distro mais baixa reduzirá a quantidade de gás perdido no caso de o distro ser exposto ao espaço, uma maneira rápida de lidar com a contaminação do distro. Também pode ajudar a desacelerar ou evitar a sobrepressurização da estação em caso de problemas com os ventiladores.

        Pressões comuns de distro estão na faixa de 300-375 kPa, mas outras pressões podem ser usadas com conhecimento dos riscos e benefícios.

        A pressão da rede é determinada pela última bomba bombeando para ela. Para evitar gargalos, todas as outras bombas entre os mineradores e a última bomba devem ser definidas em sua taxa máxima, e quaisquer dispositivos desnecessários devem ser removidos.

        Você pode validar a pressão do distro com um analisador de gás, mas tenha em mente que alta demanda devido a coisas como vazamentos pode causar o distro a ficar abaixo da pressão alvo definida por longos períodos. Então, se você ver uma queda na pressão, não entre em pânico - pode ser temporário.

book-text-atmos-waste = A rede de resíduos é o sistema principal responsável por manter o ar da estação livre de contaminantes.

        Você pode identificar os tubos relevantes pela cor Vermelho Opaco Agradável ou usando um scanner de bandeja para rastrear quais tubos estão conectados aos purificadores da estação.

        A rede de resíduos é usada para transportar gases residuais para serem filtrados ou expostos ao espaço. É ideal manter a pressão em 0 kPa, mas às vezes pode estar em uma baixa pressão não zero durante o uso.

        Os técnicos têm a opção de filtrar ou expor os gases residuais ao espaço. Embora expor ao espaço seja mais rápido, a filtragem permite que os gases sejam reutilizados para reciclagem ou venda.

        A rede de resíduos também pode ser usada para diagnosticar problemas atmosféricos na estação. Níveis altos de um gás residual podem sugerir um grande vazamento, enquanto a presença de gases não residuais pode indicar um problema de configuração de purificador ou conexão física. Se os gases estiverem em alta temperatura, pode indicar um incêndio.

book-text-atmos-alarms = Alarmes de ar estão localizados em toda a estação para permitir gerenciamento e monitoramento da atmosfera local.

            A interface do alarme de ar fornece aos técnicos uma lista de sensores conectados, suas leituras e a capacidade de ajustar limites. Esses limites são usados para determinar a condição de alarme do alarme de ar. Os técnicos também podem usar a interface para definir pressões alvo para ventiladores e configurar as velocidades de operação e gases alvo para purificadores.

            Embora a interface permita ajuste fino dos dispositivos sob controle do alarme de ar, também há vários modos disponíveis para configuração rápida do alarme. Esses modos são automaticamente alternados quando o estado do alarme muda:
            - Filtragem: O modo padrão
            - Filtragem (ampla): Um modo de filtragem que modifica a operação dos purificadores para purificar uma área mais ampla
            - Preencher: Desabilita purificadores e define ventiladores em sua pressão máxima
            - Pânico: Desabilita ventiladores e define purificadores para sifão

            Uma multitool ou configurador de rede pode ser usado para vincular dispositivos aos alarmes de ar.

book-text-atmos-vents =
    Abaixo está um guia rápido de referência para vários dispositivos atmosféricos:

                Ventiladores Passivos:
                Estes ventiladores não requerem energia, permitem que os gases fluam livremente para dentro e para fora da rede de tubos a que estão conectados.

                Ventiladores Ativos:
                Estes são os ventiladores mais comuns na estação. Eles possuem uma bomba interna e requerem energia. Por padrão, só bombeiam gás para fora dos tubos, e apenas até 101 kpa. No entanto, podem ser reconfigurados usando um alarme de ar. Eles também bloquearão se o quarto estiver abaixo de 1 kpa, para evitar bombear gás para o espaço.

                Purificadores de Ar:
                Estes dispositivos permitem que os gases sejam removidos do ambiente e colocados na rede de tubos conectada. Podem ser configurados para selecionar gases específicos quando conectados a um alarme de ar.

                Injetores de Ar:
                Injetores são semelhantes a ventiladores ativos, mas não possuem bomba interna e não requerem energia. Não podem ser configurados, mas podem continuar bombeando gases em pressões muito mais altas.
