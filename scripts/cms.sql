-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 16, 2019 at 05:58 AM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) UNSIGNED NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resumen` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci,
  `publicado_por` int(2) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `hora_creacion` time DEFAULT NULL,
  `id_categoria` int(2) DEFAULT NULL,
  `tipo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portada` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articulos`
--

INSERT INTO `articulos` (`id`, `titulo`, `resumen`, `contenido`, `publicado_por`, `fecha_creacion`, `hora_creacion`, `id_categoria`, `tipo`, `slug`, `portada`) VALUES
(1, 'Las ventajas de usar Nodejs', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi. ', 1, '2018-11-25', '07:48:26', 3, 'p', 'titulo', 'Laravel_Desde_Cero.jpg'),
(2, 'Las ventajas de usar Nodejs parte 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi. ', 1, '2018-11-25', '07:48:26', 3, 'p', 'titulo 2', 'Laravel_Desde_Cero.jpg'),
(3, 'Laravel 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '09:51:44', 1, 'p', 'Titulo 2', 'svg-points@2x.png'),
(4, 'Laravel 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '09:52:30', 2, 'p', 'Titulo 3', 'Laravel_Desde_Cero.jpg'),
(5, 'Laravel 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '09:53:44', 4, 'p', 'Titulo 5', 'Laravel_Desde_Cero.jpg'),
(6, 'Laravel desde cero', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:42:37', 3, 'p', 'Titulo 6', 'Laravel_Desde_Cero.jpg'),
(7, 'Laravel 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:42:46', 3, 'p', 'Titulo 7', 'Laravel_Desde_Cero.jpg'),
(8, 'Laravel 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:45:51', 3, 'p', 'Titulo 8', 'Laravel_Desde_Cero.jpg'),
(9, 'Laravel 9', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:47:52', 3, 'p', 'Titulo 9', 'Laravel_Desde_Cero.jpg'),
(10, 'Laravel 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:48:11', 3, 'p', 'Titulo 10', 'Laravel_Desde_Cero.jpg'),
(11, 'Laravel 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:48:17', 3, 'p', 'Titulo 11', 'Laravel_Desde_Cero.jpg'),
(12, 'Laravel 512', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:52:06', 3, 'p', 'Titulo 12', 'Laravel_Desde_Cero.jpg'),
(13, 'Laravel 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:52:37', 3, 'p', 'Titulo 13', 'Laravel_Desde_Cero.jpg'),
(14, 'Laravel 14', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '10:59:54', 3, 'p', 'Titulo 14', 'Laravel_Desde_Cero.jpg'),
(15, 'Laravel 15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '11:08:28', 3, 'p', 'Titulo 15', 'svg-points.png'),
(16, 'Laravel 16', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '11:09:36', 3, 'p', 'Titulo 16', 'svg-points.png'),
(17, 'Nuevo post', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce gravida efficitur imperdiet. Quisque ', 'Donec eget auctor lacus. In risus nunc, varius scelerisque libero in, mollis interdum libero. Nam non arcu cursus, blandit est at, rutrum massa. Quisque lectus dolor, laoreet ac tortor id, blandit ultricies purus. Maecenas malesuada, nisl id rutrum interdum, arcu nulla porttitor lectus, quis tincidunt orci sem eget mi.', 1, '2019-07-15', '11:17:57', 1, 'p', 'Nuevo-post', 'svg-points@2x.png');

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) UNSIGNED NOT NULL,
  `categoria` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Backend'),
(2, 'FrontEnd'),
(3, 'Inteligencia Artificial'),
(4, 'Movil');

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) NOT NULL,
  `comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `id_usuario`, `id_articulo`) VALUES
(1, 'Excelente el artículo.', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `rol` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'admin'),
(2, 'usuario');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apodo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rol` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apodo`, `password`, `email`, `id_rol`) VALUES
(1, 'Jose Ignacio', 'Nacho', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm@hotmail.es', 1),
(2, 'Jose Ignacio 2', 'Nacho 2', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm2@hotmail.es', 2),
(3, 'sd', 'sd', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm3@hotmail.es', 1),
(4, 'rerr', 'rerr', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm4@hotmail.es', 2),
(5, 'rerr', 'rerr', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm5@hotmail.es', 2),
(6, 'Nacho6', 'Nacho6', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm6@hotmail.es', 2),
(7, 'Nacho 3', 'Nach', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm7@hotmail.es', 2),
(8, 'Nacho 4', 'Nach4', 'e10adc3949ba59abbe56e057f20f883e', 'joseignaciorm8@hotmail.es', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
