-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 05/10/2026 às 13:38
-- Versão do servidor: 11.8.9-MariaDB-log
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u574500959_portalxt`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `link` varchar(500) NOT NULL,
  `ordem` int(11) NOT NULL DEFAULT 1,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `titulo`, `imagem`, `link`, `ordem`, `ativo`, `criado_em`) VALUES
(9, 'FALA MATEENSE', 'banner_6abe4b02743bb3.90527306.gif', 'https://www.instagram.com/falamateense/', 1, 1, '2026-10-01 11:58:58'),
(12, 'seja reporter', 'banner_6abea1285b90e3.65879605.jpg', 'https://wa.me/5527995199195?text=Ola%2C%20tenho%20uma%20noticia%0A', 1, 1, '2026-10-01 18:06:32');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `slug` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `slug`) VALUES
(1, 'Política', 'politica'),
(2, 'Brasil', 'brasil'),
(3, 'Mundo', 'mundo'),
(4, 'Esportes', 'esportes'),
(5, 'Tecnologia', 'tecnologia'),
(6, 'Economia', 'economia');

-- --------------------------------------------------------

--
-- Estrutura para tabela `midias_noticias`
--

CREATE TABLE `midias_noticias` (
  `id` int(11) NOT NULL,
  `noticia_id` int(11) NOT NULL,
  `arquivo` varchar(255) NOT NULL,
  `tipo` enum('imagem','video','arquivo') NOT NULL DEFAULT 'imagem',
  `mime` varchar(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `ordem` int(11) NOT NULL DEFAULT 1,
  `criado_em` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `midias_noticias`
--

INSERT INTO `midias_noticias` (`id`, `noticia_id`, `arquivo`, `tipo`, `mime`, `titulo`, `ordem`, `criado_em`) VALUES
(9, 13, 'midia_6abda9ebf03231.77302839.mov', 'video', 'video/quicktime', 'db9d2d9e-b57a-433d-af43-045fccdf9ac1.mov', 1, '2026-10-01 00:31:39'),
(10, 13, 'midia_6abdaa75c484e5.80182387.jpeg', 'imagem', 'image/jpeg', 'IMG_7969.jpeg', 2, '2026-10-01 00:33:57'),
(11, 14, 'midia_6abe43420b01a8.50297781.png', 'imagem', 'image/png', 'Colorful and Cute Kids Playground Logo.png', 1, '2026-10-01 11:25:54'),
(12, 15, 'midia_6abe43c866ca25.97526940.jpeg', 'imagem', 'image/jpeg', '1790776626-sao-mateus-instala-totens-de-seguranca-inteligente-em-escolas-da-rede-municipal.jpeg', 1, '2026-10-01 11:28:08'),
(13, 16, 'midia_6abea1e3ede6c4.81275460.png', 'imagem', 'image/png', 'Screenshot_1.png', 1, '2026-10-01 18:09:39'),
(14, 17, 'midia_6abfa7eff00687.95849454.jpeg', 'imagem', 'image/jpeg', 'WhatsApp Image 2026-10-02 at 09.44.42.jpeg', 1, '2026-10-02 12:47:43'),
(15, 17, 'midia_6abfa7eff04773.37268093.jpeg', 'imagem', 'image/jpeg', 'WhatsApp Image 2026-10-02 at 09.44.424.jpeg', 2, '2026-10-02 12:47:43'),
(16, 17, 'midia_6abfa7eff071d8.48280115.jpeg', 'imagem', 'image/jpeg', 'WhatsApp Image 2026-10-02 at 09.44.43.jpeg', 3, '2026-10-02 12:47:43'),
(17, 18, 'midia_6abffc6f835dd3.12377519.mp4', 'video', 'video/mp4', 'snapinsta-1790966818238.mp4', 1, '2026-10-02 18:48:15'),
(18, 18, 'midia_6abffc6f888ad5.79131294.png', 'imagem', 'image/png', 'Screenshot_1.png', 2, '2026-10-02 18:48:15'),
(19, 19, 'midia_6abffe1f19f087.12463339.mp4', 'video', 'video/mp4', 'Texto do seu parágrafo.mp4', 1, '2026-10-02 18:55:27'),
(21, 19, 'midia_6abffe8126a6b4.91109078.png', 'imagem', 'image/png', 'Screenshot_10.png', 2, '2026-10-02 18:57:05'),
(22, 20, 'midia_6abffeebdb9fc3.80713129.jpeg', 'imagem', 'image/jpeg', '1790864726-acao-da-forca-tatica-apreende-arma-municoes-e-drogas-durante-patrulhamento-no-bairro-vila-nova.jpeg', 1, '2026-10-02 18:58:51'),
(26, 22, 'midia_6ac007fab48057.56834651.jpg', 'imagem', 'image/jpeg', 'images (1).jpg', 1, '2026-10-02 19:37:30');

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `resumo` text DEFAULT NULL,
  `conteudo` longtext NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `status` enum('publicada','rascunho') DEFAULT 'publicada',
  `visualizacoes` int(11) DEFAULT 0,
  `criado_em` timestamp NULL DEFAULT current_timestamp(),
  `atualizado_em` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `resumo`, `conteudo`, `imagem`, `categoria_id`, `autor_id`, `status`, `visualizacoes`, `criado_em`, `atualizado_em`) VALUES
(13, 'PASSAGEIROS RECLAMAM DAS CONDIÇÕES DOS ONIBUS DA SÃO GABRIEL', 'PASSAGEIROS DE UM ÔNIBUS DA VIAÇÃO SÃO GABRIEL, EM SÃO MATEUS, NO ESPÍRITO SANTO, REGISTRARAM EM VÍDEO UMA RECLAMAÇÃO SOBRE AS CONDIÇÕES DO TRANSPORTE.\r\nNO VÍDEO, UMA DAS PASSAGEIRAS RELATA QUE ESTAVA EM OUTRO ÔNIBUS QUANDO OCORREU UM PROBLEMA NO VEÍCULO, OBRIGANDO OS PASSAGEIROS A DESEMBARCAREM E SEGUIREM A VIAGEM EM OUTRO ÔNIBUS.', 'PASSAGEIROS RECLAMAM DAS CONDIÇÕES DE ÔNIBUS DA SÃO GABRIEL EM SÃO MATEUS-ES \r\n\r\nPASSAGEIROS DE UM ÔNIBUS DA VIAÇÃO SÃO GABRIEL, EM SÃO MATEUS, NO ESPÍRITO SANTO, REGISTRARAM EM VÍDEO UMA RECLAMAÇÃO SOBRE AS CONDIÇÕES DO TRANSPORTE.\r\nNO VÍDEO, UMA DAS PASSAGEIRAS RELATA QUE ESTAVA EM OUTRO ÔNIBUS QUANDO OCORREU UM PROBLEMA NO VEÍCULO, OBRIGANDO OS PASSAGEIROS A DESEMBARCAREM E SEGUIREM A VIAGEM EM OUTRO ÔNIBUS.\r\nPORÉM, SEGUNDO O RELATO DA PASSAGEIRA, AO ENTRAR NO NOVO VEÍCULO, ELA SE DEPAROU COM OUTRO PROBLEMA: O SISTEMA DE AR-CONDICIONADO NÃO ESTAVA FUNCIONANDO.\r\nCOM O ÔNIBUS CHEIO E SEM CLIMATIZAÇÃO, A PASSAGEIRA AFIRMA QUE O CALOR DENTRO DO VEÍCULO ESTAVA MUITO FORTE, GERANDO DESCONFORTO ENTRE OS PASSAGEIROS.\r\nA SITUAÇÃO FOI REGISTRADA EM VÍDEO COMO FORMA DE MANIFESTAÇÃO E RECLAMAÇÃO SOBRE AS CONDIÇÕES OFERECIDAS AOS USUÁRIOS DO TRANSPORTE COLETIVO.', NULL, NULL, 4, 'publicada', 31, '2026-10-01 00:31:39', '2026-10-05 06:26:25'),
(14, 'Homem é encontrado sem vida dentro de residência na região sul de Guriri', 'Rogério Aparecido dos Santos foi encontrado morto por vizinhos na tarde desta quarta-feira (30), dentro do banheiro de uma residência, na região sul de Guriri, em São Mateus. A suspeita inicial é de que ele tenha sofrido um mal súbito.', 'Um homem identificado como Rogério Aparecido dos Santos foi encontrado sem vida na tarde desta quarta-feira (30), dentro de uma residência localizada na região sul de Guriri, em São Mateus.\r\n\r\nDe acordo com as primeiras informações, Rogério foi encontrado por vizinhos no banheiro do imóvel. Pessoas próximas relataram que ele tinha histórico de problemas cardíacos, levantando a possibilidade de que a morte tenha ocorrido após um mal súbito.\r\n\r\nAs equipes responsáveis pelo atendimento foram acionadas e estiveram no local para realizar os procedimentos necessários.\r\n\r\nO corpo deverá ser encaminhado ao Instituto Médico-Legal (IML), em Linhares, onde passará pelos procedimentos de perícia.\r\n\r\nA causa da morte ainda não foi confirmada e deverá ser determinada após a realização dos exames periciais.', NULL, NULL, 4, 'publicada', 20, '2026-10-01 11:25:54', '2026-10-05 03:10:32'),
(15, 'São Mateus instala totens de segurança inteligente em escolas da rede municipal', 'O município de São Mateus está implantando um novo sistema de monitoramento voltado à segurança nas unidades da rede municipal de ensino. Ao todo, oito Totens de Segurança Inteligente já foram instalados e estão passando pelos últimos ajustes técnicos antes de entrarem em operação.', 'De acordo com a proposta, São Mateus é o primeiro município do Espírito Santo a adotar esse tipo de equipamento em unidades escolares. A iniciativa faz parte das ações municipais voltadas à prevenção e busca reforçar a segurança de estudantes, professores, servidores, pais e demais pessoas que frequentam as escolas.\r\n\r\n\r\n\r\nEquipamentos terão monitoramento em tempo real\r\n\r\n\r\n\r\nOs totens contam com câmeras de alta resolução, visão panorâmica, sistema de comunicação em tempo real e iluminação de emergência. A estrutura permitirá ampliar o acompanhamento das áreas externas das unidades escolares.\r\n\r\n\r\n\r\nApós o início da operação, os equipamentos serão conectados à Central de Monitoramento do Município, possibilitando o acompanhamento das imagens e o acionamento das equipes responsáveis diante de situações que possam representar risco.\r\n\r\n\r\n\r\nA tecnologia também poderá auxiliar na identificação de ocorrências, fornecer informações para as equipes operacionais e contribuir com o trabalho das forças de segurança e de outros órgãos públicos.\r\n\r\n\r\n\r\nSistema também terá função preventiva\r\n\r\n\r\n\r\nAlém do monitoramento, os totens poderão ser utilizados para transmitir mensagens de orientação e comunicados em situações específicas. A proposta é utilizar a tecnologia não apenas para registrar ocorrências, mas também como ferramenta de prevenção e comunicação com a comunidade.\r\n\r\n\r\n\r\nA implantação envolve setores como segurança, educação, tecnologia e mobilidade urbana, além da atuação de órgãos parceiros.\r\n\r\n\r\n\r\nA Prefeitura também relaciona o projeto ao conceito de Cidade Inteligente, utilizando tecnologia e integração de dados para aprimorar serviços públicos e fortalecer ações de prevenção.\r\n\r\n\r\n\r\nCom os equipamentos já instalados, a expectativa é que, após a conclusão dos ajustes e o início da operação, o sistema contribua para ampliar a vigilância no entorno das escolas e proporcionar mais segurança à comunidade escolar.', NULL, NULL, 4, 'publicada', 20, '2026-10-01 11:28:08', '2026-10-05 02:00:18'),
(16, 'Bandidos trazem para Linhares moto roubada em São Mateus', 'A GCM de Linhares (ES) recuperou a moto em destaque, na manhã desta quinta-feira (1º), no bairro Palmital. O veículo havia sido r0ubado em São Mateus, na noite anterior, por dois indivíduos que estavam em outra moto.', 'A GCM de Linhares (ES) recuperou a moto em destaque, na manhã desta quinta-feira (1º), no bairro Palmital. O veículo havia sido r0ubado em São Mateus, na noite anterior, por dois indivíduos que estavam em outra moto.\r\n\r\nAgora a polícia investiga quem estava na condução, se havia passageiro e o horário que a moto foi estacionada onde foi localizada em Linhares.\r\n\r\nLigue 181 se puder ajudar.', NULL, NULL, 4, 'publicada', 37, '2026-10-01 18:09:39', '2026-10-05 01:03:48'),
(17, 'Escola de Rio Preto denuncia atos de vandalismo e pede ajuda da comunidade para identificar responsáveis', 'A EMEF Rio Preto, localizada no Bairro Rio Preto, informou que vem sendo alvo de atos de vandalismo desde a semana passada. Pedras, lajotas e pedaços de cimento estariam sendo arremessados contra a escola, inclusive para dentro do espaço utilizado pelos estudantes. Um Boletim de Ocorrência foi registrado e imagens de câmeras da região deverão ser solicitadas.', 'A EMEF Rio Preto informou que a unidade escolar vem sofrendo atos de vandalismo desde a semana passada. Segundo a Gestão Escolar, lajotas, pedras e pedaços de cimento estão sendo arremessados sobre o telhado do refeitório e também para dentro das dependências da escola.\r\n\r\nNa manhã desta sexta-feira (2), funcionários encontraram diversos fragmentos de pedras e cimento espalhados pelo ambiente. Conforme o relato da escola, os objetos aparentam ter sido lançados a partir da rua principal em direção à unidade.\r\n\r\nA escola passou recentemente por uma reforma e, segundo a Gestão Escolar, vem sendo mantida com cuidados para receber estudantes, professores, profissionais da educação e a comunidade do Bairro Rio Preto.\r\n\r\nDiante dos episódios, a direção informou que registrou um Boletim de Ocorrência nesta manhã. Também deverão ser solicitadas imagens das câmeras de segurança de moradores e estabelecimentos localizados nas proximidades, com o objetivo de auxiliar na identificação dos responsáveis.\r\n\r\nA Gestão Escolar também fez um apelo aos moradores. Pessoas que tenham presenciado alguma movimentação suspeita, visto alguém arremessando pedras, lajotas ou outros objetos contra a escola, ou que possuam informações que possam ajudar na investigação, são orientadas a procurar a direção da unidade.\r\n\r\nA escola destacou ainda a importância da participação da comunidade na preservação do espaço, ressaltando que os atos, além de provocarem danos ao patrimônio, podem representar riscos à segurança dos estudantes e demais pessoas que frequentam o local.', NULL, NULL, 4, 'publicada', 22, '2026-10-02 12:47:43', '2026-10-03 19:27:36'),
(18, 'FURTO É REGISTRADO EM ESTABELECIMENTO NA ILHA DAS MOTOS, EM GURIRI-ES', 'UM ESTABELECIMENTO CONHECIDO COMO ILHA DAS MOTOS, EM GURIRI, FOI ALVO DE FURTO.\r\n\r\nO CRIME FOI REGISTRADO POR CÂMERAS DE SEGURANÇA DO LOCAL.', 'FURTO É REGISTRADO EM ESTABELECIMENTO NA ILHA DAS MOTOS, EM GURIRI-ES\r\n\r\nUM ESTABELECIMENTO CONHECIDO COMO ILHA DAS MOTOS, EM GURIRI, FOI ALVO DE FURTO.\r\n\r\nO CRIME FOI REGISTRADO POR CÂMERAS DE SEGURANÇA DO LOCAL.\r\n\r\n📹 NAS IMAGENS, É POSSÍVEL ACOMPANHAR A MOVIMENTAÇÃO DO SUSPEITO DENTRO DO ESTABELECIMENTO.\r\n\r\nSEGUNDO AS INFORMAÇÕES DIVULGADAS, FORAM LEVADOS DOIS CAPACETES, UM FONE DE OUVIDO E OUTROS PERTENCES.\r\n\r\nAS IMAGENS DE SEGURANÇA PODERÃO AUXILIAR NA IDENTIFICAÇÃO DO RESPONSÁVEL. O CASO DEVE SER APURADO PELAS AUTORIDADES.\r\n\r\n⚠️ QUEM TIVER QUALQUER INFORMAÇÃO QUE POSSA AJUDAR NA IDENTIFICAÇÃO DO SUSPEITO OU NA RECUPERAÇÃO DOS OBJETOS DEVE PROCURAR AS AUTORIDADES E REPASSAR AS INFORMAÇÕES DE FORMA SEGURA', NULL, NULL, 4, 'publicada', 8, '2026-10-02 18:48:15', '2026-10-03 19:27:38'),
(19, 'Polícia Federal foram vistos no comitê do candidato a deputado estadual Daniel do Açaí.', 'Até o momento, não há informações oficiais sobre o motivo da presença dos agentes no local, nem sobre eventual operação ou investigação relacionada ao candidato.', 'Na tarde desta sexta-feira, agentes da Polícia Federal foram vistos no comitê do candidato a deputado estadual Daniel do Açaí.\r\n\r\nAté o momento, não há informações oficiais sobre o motivo da presença dos agentes no local, nem sobre eventual operação ou investigação relacionada ao candidato.\r\n\r\nA equipe do Sama News busca informações para esclarecer o que está acontecendo e aguarda um posicionamento oficial das autoridades e da assessoria do candidato.\r\n\r\nMais informações serão divulgadas assim que houver confirmação dos fatos.', NULL, NULL, 4, 'publicada', 14, '2026-10-02 18:55:27', '2026-10-05 11:17:46'),
(20, 'Ação da Força Tática apreende arma, munições e drogas durante patrulhamento no bairro Vila Nova', 'Segundo informações da ocorrência, os policiais receberam denúncias de que um indivíduo estaria, com frequência, ostentando uma arma de fogo em via pública durante a prática de tráfico de drogas. As informações indicavam ainda que ele estaria na região conhecida como Vala do Vila Nova.', 'Uma ação de patrulhamento tático resultou na apreensão de drogas, uma arma de fogo, munições e materiais utilizados no preparo de entorpecentes, na tarde desta quarta-feira (30), no bairro Vila Nova.\r\n\r\n\r\n\r\nSegundo informações da ocorrência, os policiais receberam denúncias de que um indivíduo estaria, com frequência, ostentando uma arma de fogo em via pública durante a prática de tráfico de drogas. As informações indicavam ainda que ele estaria na região conhecida como Vala do Vila Nova.\r\n\r\n\r\n\r\nDurante o patrulhamento, os militares realizaram uma incursão a pé pelos becos de acesso à localidade e localizaram um suspeito dentro de um imóvel desabitado. Conforme registrado na ocorrência, os policiais perceberam um forte odor de maconha e visualizaram o indivíduo fazendo uso da substância.\r\n\r\n\r\n\r\nDurante a abordagem, uma pequena quantidade de maconha teria sido encontrada em posse do suspeito. Na sequência, foram realizadas buscas no local, onde os agentes localizaram diversos materiais relacionados ao tráfico de drogas.\r\n\r\n\r\n\r\nAo todo, foram apreendidos 75 pinos, 29 comprimidos de ecstasy, uma bucha de maconha, nove munições calibre .38, um revólver calibre .32, três balanças de precisão e um pacote contendo dezenas de pinos vazios.\r\n\r\n\r\n\r\nO material apreendido e o suspeito foram encaminhados para os procedimentos cabíveis junto à autoridade policial.', NULL, NULL, 4, 'publicada', 6, '2026-10-02 18:58:51', '2026-10-03 19:27:41'),
(22, 'Ônibus terão transporte gratuito durante as eleições de 2026', 'Medida busca facilitar o deslocamento dos eleitores aos locais de votação durante o primeiro e eventual segundo turno', 'Medida busca facilitar o deslocamento dos eleitores aos locais de votação durante o primeiro e eventual segundo turno\r\n\r\nOs eleitores poderão contar com transporte público gratuito durante os dias de votação das Eleições 2026. A medida tem como objetivo facilitar o deslocamento da população até os locais de votação e garantir o acesso ao processo eleitoral.\r\n\r\nA gratuidade será aplicada nos dias de votação, incluindo o primeiro turno, marcado para 4 de outubro, e, caso seja realizado, o segundo turno, previsto para 25 de outubro.\r\n\r\nA medida abrange o transporte público coletivo, seguindo as regras estabelecidas para cada sistema de transporte. Ônibus urbanos, além de outros meios de transporte coletivo que estejam incluídos na regulamentação local, poderão operar sem cobrança de tarifa durante o período determinado.\r\n\r\nA Justiça Eleitoral também estabelece regras para o transporte de eleitores. O objetivo é evitar que candidatos, partidos ou grupos políticos utilizem veículos particulares ou fretados para transportar eleitores de forma irregular.\r\n\r\nA orientação é que os eleitores consultem, antes do dia da votação, as informações divulgadas pela prefeitura, pelo governo estadual e pelas empresas responsáveis pelo transporte público para verificar horários, linhas e condições de funcionamento.\r\n\r\nCom a gratuidade, a expectativa é facilitar o acesso dos eleitores aos locais de votação e reduzir uma das possíveis dificuldades para o comparecimento às urnas.', NULL, NULL, 4, 'publicada', 10, '2026-10-02 19:37:30', '2026-10-05 11:17:37');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `criado_em` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `criado_em`) VALUES
(1, 'Cezar', 'admin@gmail.com', '$2y$10$j8ZW686dYjATyFWc9IyDEOfw5iDSFrEq.2UfWQkXzpm92ErQXFh.K', '2026-09-29 12:19:18'),
(2, 'Pitágoras Papelaria', 'admin2@gmail.com', '$2y$10$80G3my0.hRJqzm7S6FVQceYQPI65mYYo/e8htdcc2eI2brf0jvZu6', '2026-09-29 12:19:38'),
(3, 'fala mateense', 'csmotivacao@gmail.com', '$2y$10$yJ.Fe8XNvAb6a.83d//KK.K7C51pdo1rbT0Hrc8kNZQHtorROx.pS', '2026-09-30 13:06:44'),
(4, 'admin', 'admin666@gmail.com', '$2y$10$yviL9kMs3e36PwOLMIsPNOsSuKbNWEUl6gOhj/x9u/vVT02yDJAjq', '2026-10-01 00:28:08');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_banners_ativo` (`ativo`,`ordem`);

--
-- Índices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Índices de tabela `midias_noticias`
--
ALTER TABLE `midias_noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticia_id` (`noticia_id`),
  ADD KEY `ordem` (`ordem`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `autor_id` (`autor_id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `midias_noticias`
--
ALTER TABLE `midias_noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `midias_noticias`
--
ALTER TABLE `midias_noticias`
  ADD CONSTRAINT `midias_noticias_ibfk_1` FOREIGN KEY (`noticia_id`) REFERENCES `noticias` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `noticias_ibfk_2` FOREIGN KEY (`autor_id`) REFERENCES `usuarios` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
