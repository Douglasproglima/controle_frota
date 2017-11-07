-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 07-Nov-2017 às 01:34
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `controle_frota`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `abastecimento`
--

CREATE TABLE `abastecimento` (
  `id` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL,
  `id_fornecedor` int(11) NOT NULL,
  `data` date NOT NULL,
  `combustivel` varchar(45) NOT NULL,
  `quantidade` double NOT NULL,
  `unidade` varchar(15) NOT NULL,
  `preco_unitario` double NOT NULL,
  `total` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `abastecimento`
--

INSERT INTO `abastecimento` (`id`, `id_veiculo`, `id_fornecedor`, `data`, `combustivel`, `quantidade`, `unidade`, `preco_unitario`, `total`) VALUES
(1, 3, 3, '2014-07-29', 'Gasolina', 10, 'lts', 2.399, 23.99);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `razao_social` varchar(70) DEFAULT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  `inscricao_estadual` varchar(30) DEFAULT NULL,
  `inscricao_municipal` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cep` char(11) DEFAULT NULL,
  `ddd_telefone` char(3) DEFAULT NULL,
  `telefone` char(10) DEFAULT NULL,
  `ramal_telefone` char(5) DEFAULT NULL,
  `ddd_fax` char(3) DEFAULT NULL,
  `fax` char(10) DEFAULT NULL,
  `ramal_fax` char(5) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `observacoes` text,
  `fornecedorcol` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `inscricao_estadual`, `inscricao_municipal`, `endereco`, `cidade`, `estado`, `cep`, `ddd_telefone`, `telefone`, `ramal_telefone`, `ddd_fax`, `fax`, `ramal_fax`, `email`, `contato`, `observacoes`, `fornecedorcol`) VALUES
(5, 'Arcos Dourados M2 S.A.', 'McDonnald''s', '20.734.444/0001-68', '1234567', '', 'Avenida das Américas 500, Bloco 3, Sl 204-208', 'Rio de Janeiro', 'MA', '35680-440', '037', '32123265', '2120', '', '', '', 'ronald@mcdonnald.com', 'Ronald McDOnnald', 'Ja foi bom', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `principal` int(11) DEFAULT '0',
  `logradouro` varchar(70) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `pais` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `razao_social` varchar(70) DEFAULT NULL,
  `nome_fantasia` varchar(100) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  `inscricao_estadual` varchar(30) DEFAULT NULL,
  `inscricao_municipal` varchar(30) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  `cep` char(11) DEFAULT NULL,
  `ddd_telefone` char(3) DEFAULT NULL,
  `telefone` char(10) DEFAULT NULL,
  `ramal_telefone` char(5) DEFAULT NULL,
  `ddd_fax` char(3) DEFAULT NULL,
  `fax` char(10) DEFAULT NULL,
  `ramal_fax` char(5) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `observacoes` text,
  `fornecedorcol` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `razao_social`, `nome_fantasia`, `cnpj`, `inscricao_estadual`, `inscricao_municipal`, `endereco`, `cidade`, `estado`, `cep`, `ddd_telefone`, `telefone`, `ramal_telefone`, `ddd_fax`, `fax`, `ramal_fax`, `email`, `contato`, `observacoes`, `fornecedorcol`) VALUES
(3, 'Forza Restaurantes Ltda.', 'Restaurantes Bob''s', '86.561.757/0001-70', '7897878', '76841411478', 'Avenida das Américas 500, Bloco 3, Sl 204-208', 'Rio de Janeiro', 'RJ', '20703-456', '021', '7778-8856', '', '', '', '', 'bobs@forza.com', 'Mitchel', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motorista`
--

CREATE TABLE `motorista` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `motorista`
--

INSERT INTO `motorista` (`id`, `nome`, `documento`, `categoria`) VALUES
(1, 'Franscisco Fernades', '451245', 'Categoria A/E'),
(4, 'Manoel Neuer', '45789-965', 'Categoria A/C'),
(5, 'Lionel Bandeira', '454545459', 'Categoria A'),
(6, 'Antonio Vesper', '4354798452', 'Categoria C'),
(7, 'Pedro Almeida', '996658', 'Categoria D'),
(8, 'João da Silva', '99665588', 'Categoria E'),
(9, 'Inácio Souza', '5698753', 'Categoria D');

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `nome` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`id`, `nome`) VALUES
(5, 'Clínica Médica'),
(8, 'Diretoria'),
(1, 'Distribuição'),
(4, 'Encalhe'),
(6, 'Executivo'),
(10, 'Fotografia'),
(9, 'Jornalismo'),
(7, 'Marketing'),
(11, 'Restaurante'),
(3, 'Transporte e Logística'),
(2, 'Venda Avulsa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(100) NOT NULL,
  `data_ultimo_login` datetime DEFAULT NULL,
  `admin` int(10) UNSIGNED ZEROFILL NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `senha`, `data_ultimo_login`, `admin`) VALUES
(2, 'root', 'root@gmail.com', 'TJ+uzVkgDl0/eCG+rtrbGzqn5ZejG2EOekv3gn4+A+R7ncKUkxDi/yWx5PeEMd0rnWtrLjvse2tB1/+PLR6PHQ==', '2017-11-06 21:02:11', 0000000001);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `ano` int(11) NOT NULL,
  `placa` varchar(15) NOT NULL,
  `id_motorista` int(11) DEFAULT NULL,
  `id_setor` int(11) DEFAULT NULL,
  `km` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `marca`, `modelo`, `ano`, `placa`, `id_motorista`, `id_setor`, `km`) VALUES
(3, 'FIAT', 'UNO', 2011, 'ABC-1263', 1, 11, 0),
(4, 'FIAT', 'FIORINO', 1996, 'AZS-4562', 0, 8, 0),
(5, 'IVECO', 'IVC-900', 2002, 'TRF-5425', 4, 9, 0),
(6, 'VOLKSWAGEN', 'KOMBI', 2003, 'HGF-8965', 6, 5, 0),
(7, 'Abarath', 'PALIO', 2009, 'HJG-7563', 9, NULL, 0),
(9, 'Fiat', '500 Essenc', 2009, 'ABC-8888', 8, NULL, 0),
(10, 'Ferrari', 'F-50', 2009, 'LOK-5869', 7, 2, 0),
(11, 'FIAL', 'Palio Weekend', 2009, 'ASD-7896', 0, 7, 14256);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abastecimento`
--
ALTER TABLE `abastecimento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj_UNIQUE` (`cnpj`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cnpj_UNIQUE` (`cnpj`);

--
-- Indexes for table `motorista`
--
ALTER TABLE `motorista`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome_UNIQUE` (`nome`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abastecimento`
--
ALTER TABLE `abastecimento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `motorista`
--
ALTER TABLE `motorista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
