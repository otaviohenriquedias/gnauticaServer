
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `captador` (
  `id_captador` int NOT NULL,
  `nome_captador` varchar(50) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `ativo` tinyint DEFAULT NULL,
  `empresa` varchar(20) NOT NULL,
  `categoria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE `clientes` (
  `id_clientes` int NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `data_cadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `contato` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `Sexo_id_Sexo` int NOT NULL,
  `resp_atend` int NOT NULL,
  `heat` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


CREATE TABLE `combustivel` (
  `id_combustivel` int NOT NULL,
  `combustivel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `combustivel` (`id_combustivel`, `combustivel`) VALUES
(0, 'Gasolina'),
(1, 'Diesel');


CREATE TABLE `email` (
  `idEmail` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `embarcacao` (
  `id_embarcacao` int NOT NULL,
  `horas` int DEFAULT NULL,
  `potencia` int DEFAULT NULL,
  `quant_motor` int DEFAULT NULL,
  `modelo_motor` varchar(45) DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `descricao` mediumtext,
  `horaLancamento` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `vendido` tinyint DEFAULT NULL,
  `Fabricantes_id_fabricantes` int NOT NULL,
  `Tipo_id_tipo` int NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `Clientes_id_clientes` int NOT NULL,
  `Captador_id_captador` int NOT NULL,
  `Combustivel_id_combustivel` int NOT NULL,
  `offmarket` tinyint DEFAULT NULL,
  `tamanho` float NOT NULL,
  `valor` double(20,2) NOT NULL,
  `sendEmail` tinyint NOT NULL,
  `propulsor` int DEFAULT NULL,
  `marina_Marina` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE `estados` (
  `id_estados` int NOT NULL,
  `sigla` varchar(45) DEFAULT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `estados` (`id_estados`, `sigla`, `descricao`) VALUES
(1, 'AC', 'Acre'),
(2, 'AL', 'Alagoas'),
(3, 'AP', 'Amapá'),
(4, 'AM', 'Amazonas'),
(5, 'BA', 'Bahia'),
(6, 'CE', 'Ceará'),
(7, 'DF', 'Distrito Federal'),
(8, 'ES', 'Espírito Santo'),
(9, 'GO', 'Goiás'),
(10, 'MA', 'Maranhão'),
(11, 'MT', 'Mato Grosso'),
(12, 'MS', 'Mato Grosso do Sul'),
(13, 'MG', 'Minas Gerais'),
(14, 'PA', 'Pará'),
(15, 'PB', 'Paraíba'),
(16, 'PR', 'Paraná'),
(17, 'PE', 'Pernambuco'),
(18, 'PI', 'Piauí'),
(19, 'RJ', 'Rio de Janeiro'),
(20, 'RN', 'Rio Grande do Norte'),
(21, 'RS', 'Rio Grande do Sul'),
(22, 'RO', 'Rondônia'),
(23, 'RR', 'Roraima'),
(24, 'SC', 'Santa Catarina'),
(25, 'SP', 'São Paulo'),
(26, 'SE', 'Sergipe'),
(27, 'TO', 'Tocantins');



CREATE TABLE `fabricantes` (
  `id_fabricantes` int NOT NULL,
  `fabricante` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



INSERT INTO `fabricantes` (`id_fabricantes`, `fabricante`) VALUES
(1, 'CIMITARRA YACHTS '),
(2, 'SESSA MARINE'),
(3, 'SCHAEFER YACHTS'),
(4, 'INTERMARINE '),
(5, 'REAL POWER BOATS'),
(6, 'FIBRAFORT '),
(7, 'PRESTIGE '),
(8, 'SEDNA YACHTS'),
(9, 'AZIMUT YACHTS'),
(10, 'CABRASMAR YACHTS'),
(11, 'VENTURA MARINE'),
(12, 'BENETEAU YACHTS'),
(13, 'ROYAL MARINER'),
(14, 'SEA RAY'),
(15, 'FERRETTI YACHTS'),
(16, 'NHD BOATS'),
(17, 'NX BOATS'),
(18, 'TRITON YACHTS'),
(19, 'RUNNER NÁUTICA'),
(20, 'COLUNNA YACHTS'),
(21, 'OKEAN YACHTS'),
(22, 'MCP YACHTS'),
(23, 'RIOSTAR YACHTS'),
(24, 'FALCON YACHTS'),
(25, 'FS YACHTS'),
(26, 'SOLARA LANCHAS'),
(27, 'ARMATTI YACHTS'),
(28, 'FLEXBOAT'),
(29, 'CORAL LANCHAS'),
(30, 'MASTER BOAT'),
(31, 'FISHING'),
(32, 'FAIRLINE YACHTS'),
(33, 'AZIMUT/INTERMARINE'),
(34, 'PRINCESS YACTHS'),
(35, 'ARMADA YACHTS'),
(36, 'ESTALEIRO MAGNUM'),
(37, 'CRANCHI YACHTS'),
(38, 'EVOLVE BOATS'),
(39, 'ESTALEIRO BAYLINER'),
(42, 'BLUJOI CATAMARANS'),
(43, 'TESTE TESTE '),
(44, 'CABRASMAR'),
(45, 'BRUNSWICK BOAT GROUP'),
(46, 'INFINITY'),
(47, 'INFINITY YACHTS'),
(48, 'MURANO YACHTS'),
(49, 'WELLCRAFT'),
(50, 'ARTHMARINE'),
(51, 'JEANNEAU '),
(52, 'OCEANIC YACHTS'),
(53, 'YACXO'),
(54, 'VICTORY YACHTS'),
(55, 'MESTRA BOATS'),
(56, 'COBRA');



CREATE TABLE `marina` (
  `id_marina` int NOT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `Estados_id_estados` int NOT NULL,
  `nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `marina` (`id_marina`, `cidade`, `contato`, `Estados_id_estados`, `nome`) VALUES
(1, 'ANGRA DOS REIS', '55 (24) 34213-999', 19, 'IATE CLUBE DE SANTOS'),
(2, 'JURERÊ', '55 (48) 32660-825', 24, 'MARINA BLUE FOX'),
(3, 'FLORIANÓPOLIS', '55 (48) 32257-799', 24, 'IATE CLUBE DE SANTA '),
(4, 'RIO DE JANEIRO', '55 (21) 25552-200', 19, 'MARINA DA GLÓRIA'),
(5, 'ANGRA DOS REIS', '55 (24) 33652-640', 19, 'SHOPPING PIRATAS'),
(6, 'ANGRA DOS REIS', '55 (24) 33632-114', 19, 'BR MARINAS BRACUHY'),
(7, 'ANGRA DOS REIS ', '55 (24) 34211-924', 19, 'BR MARINAS RIBEIRA'),
(8, 'FLORIANÓPOLIS', '55 (48) 93285-1524', 24, 'MARINA TERRA FIRME'),
(9, 'ANGRA DOS REIS ', '55 (24) 33692-208', 19, 'MARINA SEA PARKING'),
(10, 'ANGRA DOS REIS', '55 (24) 34214-090', 19, 'BR MARINAS VEROLME'),
(11, 'BALNEÁRIO CAMBORIÚ', '55 (47) 93367-0452', 24, 'IATE CLUBE CAMBORIÚ'),
(12, 'ANGRA DOS REIS', '55 (24) 33773-094', 19, 'MARINA COSTABELLA'),
(13, 'ANGRA DOS REIS', '55 (24) 33690-431', 19, 'MARINA PORTO FRADE'),
(14, 'BALNEÁRIO CAMBORIÚ', '55 (47) 93361-1420', 24, 'MARINA TEDESCO'),
(15, 'BOIÇUCANGA ', '55 (12) 38653-239', 25, 'MARINA PORTO DAS ILH'),
(16, 'SÃO SEBASTIÃO', '55 (12) 38620-678', 25, 'NÁUTICA PONTAL LTDA'),
(17, 'ANGRA DOS REIS', '55 (24) 33692-052', 19, 'MARINA CACOLACO'),
(18, 'GUARUJÁ', '55 (13) 33051-584', 25, 'MARINA PORTO DO SOL'),
(19, 'PARATY', '55 (24) 33721-313', 19, 'MARINA PORTO IMPERIA'),
(20, 'GUARUJÁ ', '55 (13) 33484-000', 25, 'IATE CLUBE DE SANTOS'),
(21, 'ANGRA DOS REIS', '55 (24) 33770-160', 19, 'MARBELLA'),
(22, 'PARATY', '55 (24) 99847-1080', 19, 'MARINA PIER 46');


CREATE TABLE `marinheiro` (
  `id_marinheiro` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE `procuras` (
  `id_procuras` int NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `horas` int DEFAULT NULL,
  `potencia` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `ativo` tinyint DEFAULT NULL,
  `data_procura` datetime DEFAULT CURRENT_TIMESTAMP,
  `Clientes_id_clientes` int NOT NULL,
  `Usuario_id_usuario` int NOT NULL,
  `tamanho` varchar(20) DEFAULT NULL,
  `p_fabricante` int DEFAULT NULL,
  `p_combustivel` int DEFAULT NULL,
  `p_tipo` int DEFAULT NULL,
  `quant_motores` int DEFAULT NULL,
  `valor` varchar(100) NOT NULL,
  `propulsor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



CREATE TABLE `propulsor` (
  `id_propulsor` int NOT NULL,
  `modelopropulsor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



INSERT INTO `propulsor` (`id_propulsor`, `modelopropulsor`) VALUES
(1, 'Pé de galinha'),
(2, 'Rabeta IPS'),
(3, 'Rabeta comum'),
(4, 'Motor de popa');


CREATE TABLE `sexo` (
  `id_Sexo` int NOT NULL,
  `sexo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


INSERT INTO `sexo` (`id_Sexo`, `sexo`) VALUES
(1, 'Masculino'),
(2, 'Feminino');


CREATE TABLE `tb_historico` (
  `id_historico` int NOT NULL,
  `id_usuario` int NOT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `historico` varchar(1500) NOT NULL,
  `ocorrencia` varchar(100) NOT NULL,
  `id_cliente` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `tipo` (
  `id_tipo` int NOT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



INSERT INTO `tipo` (`id_tipo`, `tipo`) VALUES
(1, 'HT'),
(2, 'Fly'),
(3, 'Capota');


CREATE TABLE `tipousuario` (
  `id_tipo_usuario` int NOT NULL,
  `tipo_tp` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



INSERT INTO `tipousuario` (`id_tipo_usuario`, `tipo_tp`) VALUES
(1, 'Administrador'),
(2, 'Usuário');



CREATE TABLE `token` (
  `id_token` int NOT NULL,
  `token` varchar(800) NOT NULL,
  `id_seller` int NOT NULL,
  `client_secret` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `senha` varchar(80) DEFAULT NULL,
  `TipoUsuario_id_tipo_usuario` int NOT NULL,
  `reg_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `captador`
--
ALTER TABLE `captador`
  ADD PRIMARY KEY (`id_captador`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_clientes`),
  ADD KEY `fk_Clientes_Sexo1_idx` (`Sexo_id_Sexo`),
  ADD KEY `FK_Resp` (`resp_atend`);

--
-- Índices de tabela `combustivel`
--
ALTER TABLE `combustivel`
  ADD PRIMARY KEY (`id_combustivel`);

--
-- Índices de tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`idEmail`);

--
-- Índices de tabela `embarcacao`
--
ALTER TABLE `embarcacao`
  ADD PRIMARY KEY (`id_embarcacao`),
  ADD KEY `fk_Embarcacao_Fabricantes1_idx` (`Fabricantes_id_fabricantes`),
  ADD KEY `fk_Embarcacao_Tipo1_idx` (`Tipo_id_tipo`),
  ADD KEY `fk_Embarcacao_Clientes1_idx` (`Clientes_id_clientes`),
  ADD KEY `fk_Embarcacao_Captador1_idx` (`Captador_id_captador`),
  ADD KEY `fk_Embarcacao_Combustivel1_idx` (`Combustivel_id_combustivel`),
  ADD KEY `id_fk_propulsor` (`propulsor`);

--
-- Índices de tabela `embmarinas`
--
ALTER TABLE `embmarinas`
  ADD PRIMARY KEY (`id_emb_marinas`),
  ADD KEY `fk_EmbMarinas_Marina1_idx` (`Marina_id_marina`),
  ADD KEY `fk_EmbMarinas_Tipo1_idx` (`Tipo_id_tipo`),
  ADD KEY `fk_EmbMarinas_Fabricantes1_idx` (`Fabricantes_id_fabricantes`);

--
-- Índices de tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estados`);

--
-- Índices de tabela `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id_fabricantes`);

--
-- Índices de tabela `marina`
--
ALTER TABLE `marina`
  ADD PRIMARY KEY (`id_marina`),
  ADD KEY `fk_Marina_Estados1_idx` (`Estados_id_estados`);

--
-- Índices de tabela `marinheiro`
--
ALTER TABLE `marinheiro`
  ADD PRIMARY KEY (`id_marinheiro`);

--
-- Índices de tabela `procuras`
--
ALTER TABLE `procuras`
  ADD PRIMARY KEY (`id_procuras`),
  ADD KEY `fk_Procuras_Clientes1_idx` (`Clientes_id_clientes`),
  ADD KEY `fk_Procuras_Usuario1_idx` (`Usuario_id_usuario`);

--
-- Índices de tabela `propulsor`
--
ALTER TABLE `propulsor`
  ADD PRIMARY KEY (`id_propulsor`);

--
-- Índices de tabela `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_Sexo`);

--
-- Índices de tabela `tb_historico`
--
ALTER TABLE `tb_historico`
  ADD PRIMARY KEY (`id_historico`);

--
-- Índices de tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Índices de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Índices de tabela `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id_token`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_Usuario_TipoUsuario_idx` (`TipoUsuario_id_tipo_usuario`);
--
-- Restrições para tabelas `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `fk_Clientes_Sexo1` FOREIGN KEY (`Sexo_id_Sexo`) REFERENCES `sexo` (`id_Sexo`);

--
-- Restrições para tabelas `embarcacao`
--
ALTER TABLE `embarcacao`
  ADD CONSTRAINT `fk_Embarcacao_Captador1` FOREIGN KEY (`Captador_id_captador`) REFERENCES `captador` (`id_captador`),
  ADD CONSTRAINT `fk_Embarcacao_Clientes1` FOREIGN KEY (`Clientes_id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `fk_Embarcacao_Combustivel1` FOREIGN KEY (`Combustivel_id_combustivel`) REFERENCES `combustivel` (`id_combustivel`),
  ADD CONSTRAINT `fk_Embarcacao_Fabricantes1` FOREIGN KEY (`Fabricantes_id_fabricantes`) REFERENCES `fabricantes` (`id_fabricantes`),
  ADD CONSTRAINT `fk_Embarcacao_Tipo1` FOREIGN KEY (`Tipo_id_tipo`) REFERENCES `tipo` (`id_tipo`),
  ADD CONSTRAINT `id_fk_propulsor` FOREIGN KEY (`propulsor`) REFERENCES `propulsor` (`id_propulsor`);

--
-- Restrições para tabelas `embmarinas`
--
ALTER TABLE `embmarinas`
  ADD CONSTRAINT `fk_EmbMarinas_Fabricantes1` FOREIGN KEY (`Fabricantes_id_fabricantes`) REFERENCES `fabricantes` (`id_fabricantes`),
  ADD CONSTRAINT `fk_EmbMarinas_Marina1` FOREIGN KEY (`Marina_id_marina`) REFERENCES `marina` (`id_marina`),
  ADD CONSTRAINT `fk_EmbMarinas_Tipo1` FOREIGN KEY (`Tipo_id_tipo`) REFERENCES `tipo` (`id_tipo`);

--
-- Restrições para tabelas `marina`
--
ALTER TABLE `marina`
  ADD CONSTRAINT `fk_Marina_Estados1` FOREIGN KEY (`Estados_id_estados`) REFERENCES `estados` (`id_estados`);

--
-- Restrições para tabelas `procuras`
--
ALTER TABLE `procuras`
  ADD CONSTRAINT `fk_Procuras_Clientes1` FOREIGN KEY (`Clientes_id_clientes`) REFERENCES `clientes` (`id_clientes`),
  ADD CONSTRAINT `fk_Procuras_Usuario1` FOREIGN KEY (`Usuario_id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Restrições para tabelas `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Usuario_TipoUsuario` FOREIGN KEY (`TipoUsuario_id_tipo_usuario`) REFERENCES `tipousuario` (`id_tipo_usuario`);
COMMIT;

