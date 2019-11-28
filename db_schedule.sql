--
-- Database: `db_schedule`
--

CREATE DATABASE db_schedule COLLATE utf8_general_ci CHARACTER SET utf8

--
-- Estrutura da tabela `tb_person`
--

CREATE TABLE `tb_person` (
  `cd_person` int(11) NOT NULL,
  `nm_person` varchar(100) NOT NULL,
  `nr_phone` varchar(11) NOT NULL,
  `ds_email` varchar(255) NOT NULL,
  `nm_circulo_social` varchar(15) DEFAULT NULL,
  `dt_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tb_person`
--

INSERT INTO `tb_person` (`cd_person`, `nm_person`, `nr_phone`, `ds_email`, `nm_circulo_social`, `dt_register`) VALUES
(19, 'Ana Abacaxi', '1399898987', 'anabaxi@mail.com', 'Indefinido', '2019-11-28 16:35:14'),
(22, 'JoÃ£o Paulo Moreira Santos', '1335077867', 'joaojpmoreira25@gmail.com', 'Pessoal', '2019-11-28 17:32:38'),
(24, 'Fylipe', '1335077867', 'fylipe@gmail.com', 'Profissional', '2019-11-28 17:56:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_person`
--
ALTER TABLE `tb_person`
  ADD PRIMARY KEY (`cd_person`),
  ADD UNIQUE KEY `ds_email` (`ds_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_person`
--
ALTER TABLE `tb_person`
  MODIFY `cd_person` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;