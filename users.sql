-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/09/2024 às 22:23
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `celke`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `passwordconfirm` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `passwordconfirm`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'João Silva', 'joao.silva@example.com', NULL, '$2y$12$FzGm5WZ8VYp6QNLmYtFwUOqDkC3U1H3ZyWFGmBOS57WOl/3hZzK1G', '$2y$12$Um7s55F3Q7NexEZTzMy0G.4U5e0a.Ih2W4Gv8vYIlQ2Qd8GQpgDke', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(2, 'Maria Oliveira', 'maria.oliveira@example.com', NULL, '$2y$12$E9Asd0gD6D3G2dD9k9qWCOhRve8sIcFzPjWw2gZtItjW5D9uYJ1Ve', '$2y$12$F8r2b6sF9gD3C1iV1c2KO5y1OFTDNTq0Ol4tK2G/gz2f1Wi1hUlqi', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(3, 'Carlos Pereira', 'carlos.pereira@example.com', NULL, '$2y$12$Grk5W2I8X3PeiG9a1mCZiu5e5Kp8DgtTO2NtbQm/ZcY0RQrQ98eDe', '$2y$12$H6D5S5U2pExZf0G6pS/NB6.rF4Y/QVAcAl/DY6fC60D0JcM4PtWFG', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(4, 'Ana Costa', 'ana.costa@example.com', NULL, '$2y$12$Ld1s1zW2KcC8b3iH2VmYzO1yJ0s7PzV6K8eX.Ol7GEUR7Nhp9anV2', '$2y$12$Qr6YwiYH5XbO7cBsoQiknO29ADfsfdrb9QxWmeB7K7f1Az1a0HRB.', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(5, 'Pedro Santos', 'pedro.santos@example.com', NULL, '$2y$12$5eFJ3hKpOUv7tguGe/XhiORePqMP6t9Qr/OAnq9T/Dz2zye9L0Q8u', '$2y$12$Fk4FG53e55pNUV5tq2wCmOuV8KfFgD3smT2RNgFj0KmcI8dm3PPE2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(6, 'Mariana Lima', 'mariana.lima@example.com', NULL, '$2y$12$C5ZgO7Fd5vPfB4R7W.7SaeQ0hZjqMCb4zAfmpD9Tb1xkNmY7U16D2', '$2y$12$G4K7I7D0qPZG69UK/0g.HOe3BHo4t7t75nECmYb1ff.4MWaUrpr02', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(7, 'Bruno Martins', 'bruno.martins@example.com', NULL, '$2y$12$9JgQO0KdD31cR7t6xE6dme4hAA9UdNrmbAYCV0.bxQ3pSvNIZ9pAC', '$2y$12$IdzJwD0jSOGUHPc/PSUB5OdAkMEKVmB1I74z.b4Q3RSqB/yAuTg7m', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(8, 'Isabela Fernandes', 'isabela.fernandes@example.com', NULL, '$2y$12$T0.XZVYLB1Uj8kD0V4/SdOQz2Qx5yFkBbU5Go/r7GJhMTbsJKrSSe', '$2y$12$7Flj7L8l3ZK/FfCrV1cVWeT3hFWgTpF7EUzR2BbF7zWxEs1PthXjC', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(9, 'Gustavo Souza', 'gustavo.souza@example.com', NULL, '$2y$12$Jc7C1kRXYuiTt2SQ1f8z6uY6THd3D50HR5W0SwQ1mLpKYZ6z9eSO6', '$2y$12$E0KkzZch6eI/BJ5pWUPffO/3fXjPQM3ZVxAk3TtYFVgmGB3pZbOGy', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(10, 'Camila Rocha', 'camila.rocha@example.com', NULL, '$2y$12$Hk1.HW5a5bY69.zpV83dMeA0S8zq.TvNcfQxJ5/x1c.nN30MxK7C6', '$2y$12$T1wr9az0V4UXFghbHcu0S.1v5o4pFQG41sWkjUmG87E.SCK/kbZfi', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(11, 'Felipe Moreira', 'felipe.moreira@example.com', NULL, '$2y$12$Omy9i/PYcRrEr3dxWzOg9.aQvE0RzwhrD8M2QJj5gFXSjUkj9fZgK', '$2y$12$F5v0qV.gzH9OQV8.F8fsU6WhA7CjUlwTTUfyY.D7JZ4NnPAj2xBaO', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(12, 'Thiago Ribeiro', 'thiago.ribeiro@example.com', NULL, '$2y$12$1jUg2DL6W8g0WAhRTPugSuJMLBgWd9Qq4S4U8YQVwbZwae2p5BKO6', '$2y$12$S8.fhHwa1ElBzVw.nMWj7OKgZ0jXyKFCpbtyO3b3d38Hcx/UZVcvq', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(13, 'Juliana Cardoso', 'juliana.cardoso@example.com', NULL, '$2y$12$D5ozYOBbFDrf/aW.aDiZROk/VuVm7.PP0/vHKTGDSZ4N3Wjz6cL/a', '$2y$12$K9r7ZpaO0A/Ncf7tD7/LjO8rG1h4t7t75nECmYb1ff.4MWaUrpr02', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(14, 'Eduardo Teixeira', 'eduardo.teixeira@example.com', NULL, '$2y$12$8iZ6Z9gL5M8l5bb8A1r3Gub3FvZ.KQv3gK7ZQQ0O5.H6F0cyB0pxG', '$2y$12$e2sChRdu7DwJ0X7uQxEEkOk9iH41VzSmp0C4tVEW7NfHgd24DbeWm', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(15, 'Gabriela Lima', 'gabriela.lima@example.com', NULL, '$2y$12$eXqe4FiWQ8GRtRRd9A8n2e/nwQAc3wtD6PgfH4yRpjEReRukXyBe6', '$2y$12$5KqPLO.ED6HQx/nFpl3ClOZ7.cVgN9OUYgCuyTydTCe1Y9UwDZ9XG', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(16, 'Patrícia Nunes', 'patricia.nunes@example.com', NULL, '$2y$12$GJ/1YcGXiP7OZkFR2so07OBwrNGRqgi3KvVs5FcAt72p5khMS42y2', '$2y$12$GtJbMHi8heIFtM7cBzllJu3AV1Guv7LezT9wPEF02oDIOt/xC0t8W', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(17, 'Lucas Figueiredo', 'lucas.figueiredo@example.com', NULL, '$2y$12$Ij0ONGeFDSkz6PzQH6LxAOinXedKKvKDtq3zfxLR0xE8uRGI0QGzW', '$2y$12$S5nH4g3UUPj4Z43TOdtgOeVs8/JJqQf7LDB28Z6WE3jPaMDP3kB66', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(18, 'Renata Almeida', 'renata.almeida@example.com', NULL, '$2y$12$zjHJH6hU/DvB48k8uHD7UO0RL8FUy8VPsbyZXbMY9KauTkzSHyJhS', '$2y$12$1evHi9.0bnxCRRV1RFNz/qAOUmj4QkT/2Hn8sONC1wLO3GNdTZ6Fe', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(19, 'Leonardo Pires', 'leonardo.pires@example.com', NULL, '$2y$12$WVeU7SIXF4j6vU01NlcmYuy41Wv0H6Gtylx1OCMHeD3OrWZ03JIZK', '$2y$12$gShkmVVGzexDpxF1YdkqF.e8o1IV8s5Yh2Fthnt6D/.HrRMfnL3qK', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(20, 'Lívia Mendes', 'livia.mendes@example.com', NULL, '$2y$12$PntD1ZK7HjqgI1B91/Z8huCjU7OgB7Edk9Z6rHzD8xFIeZZ5gjRUm', '$2y$12$ET5Czsv9tWObAzOFlT6wGOI2UnjlM3A4C62cX3W2aApNeO5G69RG2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(21, 'Sérgio Gomes', 'sergio.gomes@example.com', NULL, '$2y$12$k5gQk0HoOh0hHIqRoO0D/Oekn5hi6N8peHnl7xD1GT5TFjHcOEz5W', '$2y$12$2Io8JzKP4V.ZY9G5VjQb.eMAb0AxkgtbX0D6QMEuOHYYD05Ux4ORq', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(22, 'Jéssica Andrade', 'jessica.andrade@example.com', NULL, '$2y$12$G3RO5a1z0mMZWCSnHH0j9uBi7GQ1.lH5H0qXYKzLoL1/ElJ9PHke6', '$2y$12$7mEqkCP8k80hSO8zKXY2N1F3q9eZnp6gHdRABz1/yB16Zb1T5Qri2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(23, 'Tiago Barreto', 'tiago.barreto@example.com', NULL, '$2y$12$S1X.CnC5zX5eJ4X5k4kz5.L1OMvkv6nOfrZ2zHsHbqPqt9ZBX/7fO', '$2y$12$Rh.kuFF.OQbDh9sByOByxOgBoKvHc40qkVkhM3AhiM3Lkud3G5cXO', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(24, 'Nathalia Cruz', 'nathalia.cruz@example.com', NULL, '$2y$12$B5HDrz7nFMBgTxAaq6SHu.27p5Ajc7.Lf2yG8ObTIu6FVXUEsGFMe', '$2y$12$yIQ8Y.8LT/s2jQJ4G8D4b.YLDox95ET47D4F0I/SLG/J7yt16U0iS', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(25, 'Marcos Vinicius', 'marcos.vinicius@example.com', NULL, '$2y$12$y9d.vRC9aGF3ZcA1jZrGzOH3T5ZxvZc9N0Th1cI/9qVd8gtmYJHcG', '$2y$12$J4S.q9eSo1.9H.77BiK3cexNOEzKi9RbdE0AVcuJ9X1xmh8rbN7QO', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(26, 'Fernanda Simões', 'fernanda.simoes@example.com', NULL, '$2y$12$6iBWoJuM0Dl5B3Eyzv8Pku/dG1BgzDk2G/J.R8ZKPcKGe0V3yWfxi', '$2y$12$F7SQ2D1Hk1.M4TQ4YqR5yeHKvFk8Fg.pv2EoXlf2MvO0phHT.bV2S', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(27, 'Vinícius Almeida', 'vinicius.almeida@example.com', NULL, '$2y$12$9UDiJxB6JCUyBbwEkQX9dOZPSfey8H2qWS4KXe5Ejw2sVY4X3czQO', '$2y$12$J6pF3F17xOCu3Ae9Q1eZwXH7jC0TKf1OSIbYw7cIc14ZmV.DiXZLG', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(28, 'Tatiane Martins', 'tatiane.martins@example.com', NULL, '$2y$12$PKM.wCC9Bi.4CKC7PY89C.9SyHt9QbYjTZqsmW.IYOPKDahtzQsyu', '$2y$12$HrCMir7Yx7BqqnFP73sAsCVMdR.UWloDOnjWZ1bF3eAcmioPtM25S.', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(29, 'Guilherme Pacheco', 'guilherme.pacheco@example.com', NULL, '$2y$12$1WLT9M0hFBZZ1HR4GxGSOepTYe/3UwUtZP8FbBfyNU4v3hVqLWP.O', '$2y$12$bsCSk2mMfBgp1wKElB/P5.bcrgDtyeFaR1E2tUIW3U3GgB.lCIiVK', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(30, 'Aline Mendes', 'aline.mendes@example.com', NULL, '$2y$12$K.8bGcvAKRMtG7EOg3yAqOobR0kd/ULtI7pm9R0GEl13G.hc9J9da', '$2y$12$EqmVp8b8fs5.LB7ZjUpbsV2N46OUC3jqPMW9u9gJovAAh.PxHqL7K', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(31, 'Julio César', 'julio.cesar@example.com', NULL, '$2y$12$8mI1G.Gd4yehi1F0I7bF6.KTsmrVWx7N8AsWn5CfFlZZz8Q1mxdOe', '$2y$12$D9FqB1cR.Xmf68DWhOaTH.euQkTw1HJcfEk6D/xQhKeMnPKGsmIlS', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(32, 'Michele Dias', 'michele.dias@example.com', NULL, '$2y$12$QQKOfJuE4CBcZ2yo0cWBl.KdP2IXw.r3YCMg8fex8cuLds36V7P8W', '$2y$12$RUL0AGm6YXLW6IP39R6jDeNUkUj6P5OnzSTy/qX5nnHiYq2xW8Q92', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(33, 'Adriano Rocha', 'adriano.rocha@example.com', NULL, '$2y$12$R9tFQ.zV5fr/NEH2dWTC6enHM8eQKyb0GA0HfHx8Alu57yF1ltj5S', '$2y$12$N4kRTExhGpTgbXYeB1o2IuK/FS3X6GPmH/p.z2K0Qdp0wZlIH9oUm', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(34, 'Tatiane Costa', 'tatiane.costa@example.com', NULL, '$2y$12$k9thKpWi8wFlu72cMe5KkO2aFw/zC79UEc9C3kFujSN7sksF7LvTi', '$2y$12$0.cJxe0BdD4evB2DNf42Q2hgy4SE4.9cVpGyCK4fn1fJ2n3PGk08W', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(35, 'Rafael Pinto', 'rafael.pinto@example.com', NULL, '$2y$12$Eqh/rNvl4Y4D8eZkuE/l7OvM0M83B5aZHz29E1xVwF5swqQfF1HhG', '$2y$12$3Kc8MrwDPC1RThDeGBF32O/1EOzO3KPOEp7hsDQdTRrTXxlMwAq5m', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(36, 'Nicolas Silva', 'nicolas.silva@example.com', NULL, '$2y$12$Gm6m7uU9Er5UWeRPojPh/.dYZ8nD6PglTgudZpA7JTu2N7h0N9Rie', '$2y$12$E09UM.6A7Q5i9g2.3/oKuF8rKP8hHcQxGAYyOUbFjZCy5N6c43Mn2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(37, 'Juliana Rocha', 'juliana.rocha@example.com', NULL, '$2y$12$RzD4i2eRphW/61Sb.yL4meUoPb7g7GfOf/waUPAl4esDP5NGm07Jm', '$2y$12$S4OD.PV1HjD4pd0drG0O4OiDL.oH0UtGum7FffPuxV5gvK2D4hMFW', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(38, 'Marcelo Mello', 'marcelo.mello@example.com', NULL, '$2y$12$DZn7LGZ6G1pK6uEs9MiyFq5Z.0kd9ZqTyB9H63FhiuLhYh/cTVIVe', '$2y$12$QlURgMztcdKjYPFh.gVOImx7GCki47f7EaTPYgD4Kc6kh5wdAiE7O', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(39, 'Rosa Teixeira', 'rosa.teixeira@example.com', NULL, '$2y$12$HqgTf67/Oku4gdU9az7BBOw3vypPUMXeF3M8uN7AD1IPkY0U69UkS', '$2y$12$e7AuePThCy1TBH9tnUybG.M41PKS4jU8g0oH4DtKlWUKO3qRoR4FS', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(40, 'Fernando Sousa', 'fernando.sousa@example.com', NULL, '$2y$12$GFJUbErccA0tgggD4OMEDOGEJgrgLRBRmZ//mgJHw6A/CXQq4zF1S', '$2y$12$R6kVRO2c.n.D.s.fj8NV.4pmfHtEYBYF/TBbsqHkPKZKnqMxkZpq2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(41, 'Simone da Silva', 'simone.silva@example.com', NULL, '$2y$12$9.7TxGm6L0Hpk7E/3UM18OsuSniF/BxlLz4WVeP/klT9pW4k3V4g6', '$2y$12$E9pIzHiF8.o.HBL2FuC3wWIcAiI1KAF.j9SuQR69L3A19VZ60p9/q', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(42, 'Paula Mendes', 'paula.mendes@example.com', NULL, '$2y$12$0pb7Ch4G3ZT9kvVnhNLS8eU2Pxbbxg1paDg6fUkeW2se1JTAZgqSC', '$2y$12$5aq.aFzL8.svlTDFh44GhOsJ/GXMbblMV12r6PGyFkfauHj7HdujK', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(43, 'Rafael Ferreira', 'rafael.ferreira@example.com', NULL, '$2y$12$cf8l4wr3Q7V2x8/FOw/2yO1qZxRbg.oVDrD9I3FzCwDbb2VSFz8jW', '$2y$12$TO5wH..fIEf0ByKlL5Kt.OsAEk.3CTiS4Gg1h1GJS3h4Lcu8J6ah6', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(44, 'Bruno Oliveira', 'bruno.oliveira@example.com', NULL, '$2y$12$Egh9tA2L/TffxLZDbEy9qeTk4WBoF/Rt3pNPFZ/Pob5.a/pUtcz3a', '$2y$12$QThE8Z0/jAHmdt3jpZgd6ujPMoN3Dka2Edd7/m9U1RXB57Jlc68wa.', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(45, 'Gustavo Costa', 'gustavo.costa@example.com', NULL, '$2y$12$h7D67UOHxn9Q3D/VMY7YVuaQKkS2BFJ4Gr6rL8Gha9FS1UtTn4tNu', '$2y$12$PDTwOtUQ3BhC2lmYptIFG.3m3.Vk5B.Jxbs33wZT19HcHHKt9W07G', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(46, 'Carlos Eduardo', 'carlos.eduardo@example.com', NULL, '$2y$12$K4ezd5yE99kWmwo3gqB3Kej5n4rZw.PT6i0L2K45KeWkp84gUmpoK', '$2y$12$6F5iybBxx5fXgPV6CZFY8ekgT1lvv95y53cg0ffo.WdsUPWxHUN7m', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(47, 'Leonardo Silva', 'leonardo.silva@example.com', NULL, '$2y$12$8U/1wN4FF3ysTeMWccwn4OhWWU1oK6y2yFh9lf1qdo9YlkHcsBch6', '$2y$12$g8lM3g2R/JIBTAAlVSdYhOfg2XglqQm5qO7MSBr7Is7g2L3gTLZ1a2', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(48, 'Lívia Ribeiro', 'livia.ribeiro@example.com', NULL, '$2y$12$GR3AwfOMZ9PcYpbMW8rJguhRFtWq4QwZ4WEg0GL1rOToHHX33kWg.', '$2y$12$KdxFF2TiXJ8WvqHRWS0/Uez5HqZ0fHX7dCmOaX6W7.Nt4R8jH8tPe', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(49, 'Roberto Gomes', 'roberto.gomes@example.com', NULL, '$2y$12$D/7zQAL4Z76hI12kk5ed6uHSNvhFS9oL4fWJ9MOjHdNqR/J0lH1ji', '$2y$12$frIup1Dq4GbE1V1Mggrq3eAx6t94Ww/X8DC.5zPwx2TX9o7lDye46', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03'),
(50, 'Sofia Andrade', 'sofia.andrade@example.com', NULL, '$2y$12$Ek4iGqD4puZJwJ10OxBwmuzJeoXci8mA0kdO5H5Gu6dsZk6.EFvD6', '$2y$12$0YHcrDD8dF2CkjNwZcmwl.4hHuiy.e8S2XnMQ8fUSM81wLmdad/0G', NULL, '2024-09-28 20:14:03', '2024-09-28 20:14:03');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
