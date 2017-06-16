-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Giu 16, 2017 alle 11:33
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kds_ogs`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `clienti`
--

CREATE TABLE `clienti` (
  `id` int(11) NOT NULL,
  `nome` mediumtext NOT NULL,
  `cognome` mediumtext NOT NULL,
  `cellulare` text NOT NULL,
  `data_nascita` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `clienti`
--

INSERT INTO `clienti` (`id`, `nome`, `cognome`, `cellulare`, `data_nascita`) VALUES
(1, 'Bendetta', 'Ercoli', '', '05/07/2000'),
(2, 'Luca', 'Scutigliani', '3911889989', '14/09/2000'),
(3, 'Giacomo', 'Rossi', '3384103076', '18/03/2001'),
(10, 'Pippo', 'Pip', '1122334455', '01/01/1970'),
(11, 'niccolo', 'boccolini', '1122334455', '00/00/0000');

-- --------------------------------------------------------

--
-- Struttura della tabella `disp_uffici`
--

CREATE TABLE `disp_uffici` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `postazioni` int(11) NOT NULL,
  `disponibile` int(11) NOT NULL,
  `data_inizio_prenotazione` text NOT NULL,
  `data_fine_prenotazione` text NOT NULL,
  `prezzoMezzoGiorno` double NOT NULL,
  `prezzoGiorno` double NOT NULL,
  `prezzoMese` double NOT NULL,
  `cliente` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `disp_uffici`
--

INSERT INTO `disp_uffici` (`id`, `nome`, `postazioni`, `disponibile`, `data_inizio_prenotazione`, `data_fine_prenotazione`, `prezzoMezzoGiorno`, `prezzoGiorno`, `prezzoMese`, `cliente`) VALUES
(1, '{Beginend} (algol)', 1, 1, '00/00/0000', '00/00/0000', 15, 25, 280, ''),
(2, '{forEach} (c#)', 1, 1, '00/00/0000', '00/00/0000', 15, 25, 280, ''),
(3, '{ifElse} (c#)', 2, 1, '00/00/0000', '00/00/0000', 20, 35, 400, ''),
(4, '{performuntil} (cobol)', 2, 1, '00/00/0000', '00/00/0000', 20, 35, 400, ''),
(5, '{SwitchCase} (c#)', 3, 1, '00/00/0000', '00/00/0000', 27, 45, 500, ''),
(6, '{unlessend} (ruby)', 3, 1, '00/00/0000', '00/00/0000', 27, 45, 500, ''),
(7, '{DoWhile} (c#)', 8, 1, '00/00/0000', '00/00/0000', 30, 50, 7, ''),
(8, 'Sala Corsi', 35, 1, '00/00/0000', '00/00/0000', 70, 120, 8, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `pren_future`
--

CREATE TABLE `pren_future` (
  `id_prenotazione` int(11) NOT NULL,
  `stanza_prenotata` int(11) NOT NULL,
  `data_iniziale` mediumtext NOT NULL,
  `data_finale` mediumtext NOT NULL,
  `nome` longtext NOT NULL,
  `cognome` mediumtext NOT NULL,
  `email` longtext NOT NULL,
  `cellulare` mediumtext NOT NULL,
  `accettata` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `clienti`
--
ALTER TABLE `clienti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `disp_uffici`
--
ALTER TABLE `disp_uffici`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `pren_future`
--
ALTER TABLE `pren_future`
  ADD PRIMARY KEY (`id_prenotazione`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `clienti`
--
ALTER TABLE `clienti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT per la tabella `disp_uffici`
--
ALTER TABLE `disp_uffici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT per la tabella `pren_future`
--
ALTER TABLE `pren_future`
  MODIFY `id_prenotazione` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
