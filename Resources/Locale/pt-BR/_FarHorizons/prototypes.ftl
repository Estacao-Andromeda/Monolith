# ====================================================================
# Arquivo de Localização de Entidades
# ====================================================================

# From: _FarHorizons/Catalog/Fills/Crates/reactor_crates.yml

ent-CrateBohrumControlRod = caixa de barras de controle
    .desc = 2 barras de controle de bohrum para um reator nuclear.

ent-CrateCerenkiteFuelRod = caixa de barras de combustível
    .desc = 3 barras de combustível de cerenkite, para alimentar um reator nuclear.

ent-CrateSteelGasChannel = caixa de barras de canal de gás
    .desc = 4 barras de canal de gás de aço para um reator nuclear.

ent-CrateSteelHeatExhanger = caixa de barras de trocador de calor
    .desc = 4 barras de trocador de calor de aço para um reator nuclear.

# From: _FarHorizons/Entities/Objects/Devices/Circuitboards/computer.yml

ent-GasTurbineMonitorComputerCircuitboard = placa de computador de monitor de turbina a gás
    .desc = Uma placa de circuito de computador para um monitor de turbina a gás.

ent-NuclearReactorMonitorComputerCircuitboard = placa de computador de monitor de reator nuclear
    .desc = Uma placa de circuito de computador para um monitor de reator nuclear.

# From: _FarHorizons/Entities/Objects/Devices/Circuitboards/Machine/nuclear_machines.yml

ent-NuclearCentrifugeMachineCircuitboard = placa de máquina de centrífuga nuclear
    .desc = Uma placa de circuito de máquina para uma centrífuga nuclear.

ent-NuclearFabricatorMachineCircuitboard = placa de máquina de fabricador nuclear
    .desc = Uma placa de circuito de máquina para um fabricador nuclear. Usa uma estrutura de máquina 2x1.

# From: _FarHorizons/Entities/Objects/Devices/holoprojectors.yml

ent-RadiationBlockingProjector = projetor de barreira de radiação
    .desc = Pare a radiação mortal de uma delaminação ou derretimento, pelo menos por um pouco.

# From: _FarHorizons/Entities/Objects/Materials/ingots.yml

ent-IngotPlutonium = barra de plutônio
    .suffix = Cheia
    .desc = Lingotes de plutônio físsil puro. Um subproduto de reatores de fissão nuclear.

ent-IngotPlutonium1 = barra de plutônio
    .suffix = Única

# From: _FarHorizons/Entities/Structures/Holographic/projections.yml

ent-HolosignRadiationBlocking = barreira de radiação holográfica
    .desc = Uma barreira de luz dura que bloqueia luz e radiação, mas nada mais.

# From: _FarHorizons/Entities/Structures/Machines/Computers/computers.yml

ent-GasTurbineMonitor = monitor de turbina a gás
    .desc = Um dispositivo que monitora o estado de uma turbina a gás conectada.

ent-NuclearReactorMonitor = monitor de reator nuclear
    .desc = Um dispositivo que monitora o estado de um reator nuclear conectado.

# From: _FarHorizons/Entities/Structures/Machines/nuclear_centrifuge.yml

ent-NuclearCentrifuge = centrífuga de reprocessamento de combustível nuclear
    .desc = Uma máquina grande que pode ser usada para separar isótopos radioativos de combustível gasto. Não certificada para processar minério de urânio bruto.

# From: _FarHorizons/Entities/Structures/Machines/nuclear_fabricator.yml

ent-NuclearFabricator = fabricador nuclear
    .desc = Um fabricador certificado pelo ISFNC para fazer componentes certificados para uso em reatores nucleares. É uma carga de besteira.

# From: _FarHorizons/Entities/Structures/Power/Generation/FissionGenerator/nuclear_reactor.yml

# Entidade abstrata (referenciável por filhos)
ent-BaseNuclearReactor = reator nuclear
    .desc = Um vaso de reator nuclear, com slots para barras de combustível e outros componentes. Espera, um desses não explodiu uma vez?

ent-NuclearDebrisChunk = detritos nucleares
    .desc = Você não vê a grafite no chão. Você está em choque. Reporte ao médico.

ent-NuclearReactorEmpty = {ent-BaseNuclearReactor}
    .suffix = Vazio
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorEmptySalvage = {ent-BaseNuclearReactor}
    .suffix = Vazio, Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorMeltdown = {ent-BaseNuclearReactor}
    .suffix = Derretido
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorMelted = {ent-BaseNuclearReactor}
    .suffix = Derretido
    .desc = Um vaso de reator nuclear, há muito derretido. Ainda brilha com calor residual e radiação.

ent-NuclearReactorMeltedSalvage = {ent-BaseNuclearReactor}
    .suffix = Derretido, Salvamento
    .desc = Um vaso de reator nuclear, há muito derretido. Ainda brilha com calor residual e radiação.

ent-NuclearReactorNormal = {ent-BaseNuclearReactor}
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorNormalSalvage = {ent-BaseNuclearReactor}
    .suffix = Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorRandom = {ent-BaseNuclearReactor}
    .suffix = Aleatório
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorRandomSalvage = {ent-BaseNuclearReactor}
    .suffix = Aleatório, Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorSmall = reator nuclear pequeno
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorSmallMelted = {ent-BaseNuclearReactor}
    .suffix = Derretido
    .desc = Um vaso de reator nuclear, há muito derretido. Ainda brilha com calor residual e radiação.

ent-NuclearReactorSmallMeltedSalvage = {ent-BaseNuclearReactor}
    .suffix = Derretido, Salvamento
    .desc = Um vaso de reator nuclear, há muito derretido. Ainda brilha com calor residual e radiação.

ent-NuclearReactorSmallRandom = {ent-BaseNuclearReactor}
    .suffix = Aleatório
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorSmallRandomSalvage = {ent-BaseNuclearReactor}
    .suffix = Aleatório, Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorSmallSalvage = reator nuclear pequeno
    .suffix = Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

# From: _FarHorizons/Entities/Structures/Power/Generation/FissionGenerator/reactor_components.yml

ent-BananiumReactorFuelRod = barra de combustível de bananium
    .desc = Uma barra de honk para um reator nuclear.

ent-BaseReactorControlRod = barra de controle
    .desc = Um conjunto de barras de controle para um reator nuclear.

ent-BaseReactorFuelRod = barra de combustível
    .desc = Uma barra de combustível para um reator nuclear.

ent-BaseReactorGasChannel = barra de canal de gás
    .desc = Um canal de gás para um reator nuclear.

ent-BaseReactorHeatExchanger = barra de trocador de calor
    .desc = Um trocador de calor para um reator nuclear.

ent-BohrumReactorControlRod = barra de controle de bohrum

ent-BrassReactorControlRod = barra de controle de latão

ent-BrassReactorGasChannel = barra de canal de gás de latão

ent-BrassReactorHeatExchanger = barra de trocador de calor de latão

ent-CerenkiteReactorFuelRod = barra de combustível de cerenkite

ent-DiamondReactorControlRod = barra de controle de diamante

ent-DiamondReactorGasChannel = barra de canal de gás de diamante

ent-DiamondReactorHeatExchanger = barra de trocador de calor de diamante

ent-GlassReactorControlRod = barra de controle de vidro

ent-GlassReactorGasChannel = barra de canal de gás de vidro

ent-GlassReactorHeatExchanger = barra de trocador de calor de vidro

ent-GoldReactorControlRod = barra de controle de ouro

ent-GoldReactorGasChannel = barra de canal de gás de ouro

ent-GoldReactorHeatExchanger = barra de trocador de calor de ouro

ent-MeatReactorFuelRod = barra de combustível de carne
    .desc = Uma barra de combustível p- espera, está viva?

ent-PlasmaGlassReactorControlRod = barra de controle de vidro de plasma

ent-PlasmaGlassReactorGasChannel = barra de canal de gás de vidro de plasma

ent-PlasmaGlassReactorHeatExchanger = barra de trocador de calor de vidro de plasma

ent-PlasmaReactorFuelRod = barra de combustível de plasma

ent-PlasteelReactorControlRod = barra de controle de plasteel

ent-PlasteelReactorGasChannel = barra de canal de gás de plasteel

ent-PlasteelReactorHeatExchanger = barra de trocador de calor de plasteel

ent-PlutoniumReactorFuelRod = barra de combustível de plutônio

ent-SilverReactorControlRod = barra de controle de prata

ent-SilverReactorGasChannel = barra de canal de gás de prata

ent-SilverReactorHeatExchanger = barra de trocador de calor de prata

ent-SteelReactorControlRod = barra de controle de aço

ent-SteelReactorGasChannel = barra de canal de gás de aço

ent-SteelReactorHeatExchanger = barra de trocador de calor de aço

ent-UraniumGlassReactorFuelRod = barra de combustível de vidro de urânio

ent-UraniumReactorFuelRod = barra de combustível de urânio

# From: _FarHorizons/Entities/Structures/Power/Generation/FissionGenerator/turbine.yml

ent-Turbine = turbina a gás
    .desc = Uma turbina grande usada para gerar energia usando gás quente.

ent-TurbineSmall = turbina a gás pequena

# From: _FarHorizons/Entities/Structures/Power/Generation/FissionGenerator/turbineProjectile.yml

ent-TurbineBladeShrapnel = pá de turbina
