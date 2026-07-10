# ====================================================================
# Arquivo de Localização de Entidades
# ====================================================================

# From: _FarHorizons/Catalog/Fills/Crates/reactor_crates.yml

ent-CrateBohrumControlRod = caixote de barras de controle
    .desc = 2 barras de controle de bohrio para um reator nuclear.

ent-CrateCerenkiteFuelRod = caixote de barras de combustível
    .desc = 3 barras de combustível de cerenquita, para abastecer um reator nuclear.

ent-CrateSteelGasChannel = caixote de barras de canal de gás
    .desc = 4 barras de canal de gás de aço para um reator nuclear.

ent-CrateSteelHeatExhanger = caixote de barras de trocador de calor
    .desc = 4 barras de trocador de calor de aço para um reator nuclear.

# From: _FarHorizons/Entities/Objects/Devices/Circuitboards/computer.yml

ent-GasTurbineMonitorComputerCircuitboard = placa de computador de monitor de turbina a gás
    .desc = Uma placa de circuito impresso de computador para um monitor de turbina a gás.

ent-NuclearReactorMonitorComputerCircuitboard = placa de computador de monitor de reator nuclear
    .desc = Uma placa de circuito impresso de computador para um monitor de reator nuclear.

# From: _FarHorizons/Entities/Objects/Devices/Circuitboards/Machine/nuclear_machines.yml

ent-NuclearCentrifugeMachineCircuitboard = placa de máquina de centrifugadora nuclear
    .desc = Uma placa de circuito impresso de máquina para uma centrifugadora nuclear.

ent-NuclearFabricatorMachineCircuitboard = placa de máquina de fabricadora nuclear
    .desc = Uma placa de circuito impresso de máquina para uma fabricadora nuclear. Usa uma chassi de máquina 2x1.

# From: _FarHorizons/Entities/Objects/Devices/holoprojectors.yml

ent-RadiationBlockingProjector = projetor de barreira de radiação
    .desc = Pare a radiação letal de uma delaminação ou derretimento, pelo menos por um pouco.

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

ent-NuclearCentrifuge = centrifugadora de reprocessamento de combustível nuclear
    .desc = Uma máquina grande que pode ser usada para separar isótopos radioativos de combustível gasto. Não certificada para processar minério de urânio bruto.

# From: _FarHorizons/Entities/Structures/Machines/nuclear_fabricator.yml

ent-NuclearFabricator = fabricadora nuclear
    .desc = Uma fabricadora certificada pelo ISFNC para fazer componentes certificados para uso em reatores nucleares. É tudo bobagem.

# From: _FarHorizons/Entities/Structures/Power/Generation/FissionGenerator/nuclear_reactor.yml

# Entidade abstrata (referenciável por filhos)
ent-BaseNuclearReactor = reator nuclear
    .desc = Um vaso de reator nuclear, com slots para barras de combustível e outros componentes. Espere, um desses não explodiu uma vez?

ent-NuclearDebrisChunk = destroços nucleares
    .desc = Você não vê o grafite no chão. Você está em choque. Relate ao médico.

ent-NuclearReactorEmpty = {ent-BaseNuclearReactor}
    .suffix = Vazio
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorEmptySalvage = {ent-BaseNuclearReactor}
    .suffix = Vazio, Salvamento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorMeltdown = {ent-BaseNuclearReactor}
    .suffix = Derretimento
    .desc = {ent-BaseNuclearReactor.desc}

ent-NuclearReactorMelted = {ent-BaseNuclearReactor}
    .suffix = Derretido
    .desc = Um vaso de reator nuclear, derretido há muito tempo. Ainda brilha com calor residual e radiação.

ent-NuclearReactorMeltedSalvage = {ent-BaseNuclearReactor}
    .suffix = Derretido, Salvamento
    .desc = Um vaso de reator nuclear, derretido há muito tempo. Ainda brilha com calor residual e radiação.

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
    .desc = Um vaso de reator nuclear, derretido há muito tempo. Ainda brilha com calor residual e radiação.

ent-NuclearReactorSmallMeltedSalvage = {ent-BaseNuclearReactor}
    .suffix = Derretido, Salvamento
    .desc = Um vaso de reator nuclear, derretido há muito tempo. Ainda brilha com calor residual e radiação.

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

ent-BananiumReactorFuelRod = barra de combustível de banânio
    .desc = Uma buzina de barra para um reator nuclear.

ent-BaseReactorControlRod = barra de controle
    .desc = Um conjunto de barras de controle para um reator nuclear.

ent-BaseReactorFuelRod = barra de combustível
    .desc = Uma barra de combustível para um reator nuclear.

ent-BaseReactorGasChannel = barra de canal de gás
    .desc = Um canal de gás para um reator nuclear.

ent-BaseReactorHeatExchanger = barra de trocador de calor
    .desc = Um trocador de calor para um reator nuclear.

ent-BohrumReactorControlRod = barra de controle de bohrio

ent-BrassReactorControlRod = barra de controle de latão

ent-BrassReactorGasChannel = barra de canal de gás de latão

ent-BrassReactorHeatExchanger = barra de trocador de calor de latão

ent-CerenkiteReactorFuelRod = barra de combustível de cerenquita

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
    .desc = Uma barra de combustível c- espere, ela está viva?

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
