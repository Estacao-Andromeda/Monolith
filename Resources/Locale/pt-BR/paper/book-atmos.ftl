book-text-atmos-distro = A rede de distribuição, ou "distro" para abreviar, é a linha de vida da estação. É responsável por transportar ar da atmosfera por toda a estação.

        Os canos relevantes são frequentemente pintados de Azul Sutil Marcante, mas uma maneira infalível de identificá-los é usar um scanner de bandeja para rastrear quais canos estão conectados aos ventiladores ativos na estação.

        A mistura de gás padrão da rede de distribuição é 20 graus celsius, 78% nitrogênio, 22% oxigênio. Você pode verificar isso usando um analisador de gás em um cano de distro ou qualquer ventilador conectado a ele. Circunstâncias especiais podem exigir misturas especiais.

        Quando se trata de decidir sobre uma pressão de distro, há algumas coisas a considerar. Ventiladores ativos vão regular a pressão da estação, então desde que tudo esteja funcionando adequadamente, não existe algo como pressão de distro muito alta.

        Uma pressão de distro mais alta permitirá que a rede de distro atue como um buffer entre os mineradores de gás e ventiladores, fornecendo uma quantidade significativa de ar extra que pode ser usado para re-pressurizar a estação após um expurgamento para o espaço.

        Uma pressão de distro mais baixa vai reduzir a quantidade de gás perdido no evento de o distro ser expurgado para o espaço, uma maneira rápida de lidar com contaminação de distro. Também pode ajudar a desacelerar ou evitar sobre-pressurização da estação no evento de problemas de ventilação.

        Pressões comuns de distro estão na faixa de 300-375 kPa, mas outras pressões podem ser usadas com conhecimento dos riscos e benefícios.

        A pressão da rede é determinada pela última bomba bombear para ela. Para prevenir gargalos, todas as outras bombas entre os mineradores e a última bomba devem ser ajustadas para sua taxa máxima, e quaisquer dispositivos desnecessários devem ser removidos.

        Você pode validar a pressão de distro com um analisador de gás, mas mantenha em mente que alta demanda devido a coisas como expurgamentos pode fazer o distro ficar abaixo da pressão alvo definida por longos períodos. Então, se você ver uma queda na pressão, não entre em pânico - pode ser temporário.

book-text-atmos-waste = A rede de resíduos é o sistema principal responsável por manter o ar na estação livre de contaminantes.

        Você pode identificar os canos relevantes por sua cor Vermelho Opaco Agradável ou usando um scanner de bandeja para rastrear quais canos estão conectados aos purificadores na estação.

        A rede de resíduos é usada para transportar gases residuais para serem filtrados ou expurgados para o espaço. É ideal manter a pressão em 0 kPa, mas às vezes pode estar em uma pressão não-zero baixa enquanto em uso.

        Técnicos têm a opção de filtrar ou expurgar os gases residuais. Enquanto expurgar é mais rápido, filtrar permite que os gases sejam reutilizados para reciclagem ou venda.

        A rede de resíduos também pode ser usada para diagnosticar problemas atmosféricos na estação. Níveis altos de um gás residual podem sugerir um grande vazamento, enquanto a presença de gases não residuais pode indicar um problema de configuração de purificador ou conexão física. Se os gases estiverem em alta temperatura, pode indicar um incêndio.

book-text-atmos-alarms = Alarmes de ar estão localizados por toda a estação para permitir gerenciamento e monitoramento da atmosfera local.

            A interface de alarme de ar fornece aos técnicos uma lista de sensores conectados, suas leituras, e a capacidade de ajustar limites. Estes limites são usados para determinar a condição de alarme do alarme de ar. Técnicos também podem usar a interface para definir pressões alvo para ventiladores e configurar as velocidades de operação e gases alvo para purificadores.

            Enquanto a interface permite ajuste fino dos dispositivos sob controle do alarme de ar, há também vários modos disponíveis para configuração rápida do alarme. Estes modos são automaticamente alternados quando o estado de alarme muda:
            - Filtragem: O modo padrão
            - Filtragem (larga): Um modo de filtragem que modifica a operação dos purificadores para purificar uma área mais larga
            - Preenchimento: Desabilita purificadores e define ventiladores para sua pressão máxima
            - Pânico: Desabilita ventiladores e define purificadores para sifão

            Um multitool ou configurador de rede pode ser usado para conectar dispositivos a alarmes de ar.

book-text-atmos-vents =
    Abaixo está um guia rápido de referência para vários dispositivos atmosféricos:

                Ventiladores Passivos:
                Estes ventiladores não requerem energia, permitem que gases fluam livremente tanto para dentro quanto para fora da rede de canos a qual estão conectados.

                Ventiladores Ativos:
                Estes são os ventiladores mais comuns na estação. Eles têm uma bomba interna, e requerem energia. Por padrão, só vão bombear gases para fora dos canos, e só até 101 kpa. No entanto, podem ser reconfigurados usando um alarme de ar. Também vão bloquear se o quarto estiver sob 1 kpa, para prevenir bombear gases para o espaço.

                Purificadores de Ar:
                Estes dispositivos permitem que gases sejam removidos do ambiente e colocados na rede de canos conectada. Podem ser configurados para selecionar gases específicos quando conectados a um alarme de ar.

                Injetores de Ar:
                Injetores são similares a ventiladores ativos, mas não têm bomba interna e não requerem energia. Não podem ser configurados, mas podem continuar a bombear gases em pressões muito mais altas.
