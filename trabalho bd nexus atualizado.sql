
CREATE DATABASE nexus_db;
USE nexus_db;


CREATE TABLE categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id)
);

CREATE TABLE cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf_cnpj VARCHAR(20),
    endereco VARCHAR(100)
);

CREATE TABLE transportadora (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data DATETIME,
    id_cliente INT,
    id_transportadora INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id),
    FOREIGN KEY (id_transportadora) REFERENCES transportadora(id)
);

CREATE TABLE item_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_produto) REFERENCES produto(id)
);


INSERT INTO categoria (nome)
VALUES ('Processador'), ('Memória'), ('Placa de Vídeo');

INSERT INTO produto (nome, preco, estoque, id_categoria)
VALUES 
('Ryzen 5 5600X', 1200.00, 10, 1),
('Memória DDR4 16GB', 300.00, 20, 2);


INSERT INTO cliente (nome, cpf_cnpj, endereco)
VALUES 
('João Silva', '12345678900', 'Rua das Flores, 123'),
('Empresa XYZ', '11222333000199', 'Av. Paulista, 1500');

INSERT INTO transportadora (nome)
VALUES 
('Correios'),
('Transportadora Rápida');

INSERT INTO pedido (data, id_cliente, id_transportadora)
VALUES 
(NOW(), 1, 1);

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario)
VALUES 
(1, 1, 1, 1200.00),
(1, 2, 2, 300.00);


SELECT * FROM cliente;
USE nexus_db;

-- Inserindo mais categorias primeiro
INSERT INTO categoria (id, nome) VALUES (4, 'Armazenamento');
INSERT INTO categoria (id, nome) VALUES (5, 'Monitores');
INSERT INTO categoria (id, nome) VALUES (6, 'Periféricos');

-- INSERTS UM POR UM (Estoque Eletrônicos)
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i3 12100F', 599.00, 15, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 12400F', 899.00, 22, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i7 13700K', 2399.00, 8, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i9 14900K', 3899.00, 5, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5600G', 849.00, 30, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 7 5700X', 1199.00, 14, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 7 7800X3D', 2699.00, 10, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 9 7950X', 3499.00, 4, 1);

INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 8GB DDR4 3200MHz', 179.00, 50, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 8GB DDR4 3200MHz', 185.00, 45, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM XPG 16GB DDR4 3200MHz', 299.00, 40, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 16GB DDR4 3600MHz', 359.00, 25, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 16GB DDR5 5600MHz', 429.00, 20, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 32GB DDR5 6000MHz', 849.00, 12, 2);

INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo GTX 1650 4GB', 799.00, 18, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 3050 8GB', 1349.00, 15, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4060 8GB', 2199.00, 25, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4070 12GB', 4299.00, 7, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4090 24GB', 12999.00, 2, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RX 6600 8GB', 1399.00, 14, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RX 7600 8GB', 1899.00, 11, 3);

INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 500GB M.2', 249.00, 60, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 1TB M.2', 419.00, 80, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Crucial 2TB M.2', 799.00, 30, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('HD Externo Seagate 1TB USB', 329.00, 22, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('HD Interno Toshiba 2TB SATA', 439.00, 15, 4);

INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor LG 21.5 Polegadas 75Hz', 549.00, 20, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor AOC Hero 24 144Hz', 949.00, 35, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Asus TUF 27 165Hz', 1699.00, 12, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Samsung Odyssey G9 49', 7599.00, 3, 5);

INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Redragon Cobra RGB', 119.00, 100, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G203', 139.00, 85, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico Kumara Switch Blue', 229.00, 50, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset HyperX Cloud Stinger 2', 199.00, 40, 6);

-- Simulando reposições e variações de estoque para volume (Lotes adicionais)
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 12400F (Lote B)', 889.00, 15, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5600X (Lote B)', 1150.00, 20, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 8GB DDR4 (Lote B)', 180.00, 60, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM XPG 16GB DDR4 (Lote B)', 295.00, 35, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4060 8GB (Lote B)', 2150.00, 10, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 1TB M.2 (Lote B)', 409.00, 45, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor AOC Hero 24 144Hz (Lote B)', 929.00, 15, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G203 (Lote B)', 135.00, 40, 6);

USE nexus_db;


INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES 
('Processador Intel Core i3 12100F (Lote C)', 585.00, 40, 1),
('Processador Intel Core i5 12400F (Lote C)', 879.00, 35, 1),
('Processador Intel Core i7 13700K (Lote C)', 2350.00, 12, 1),
('Processador Intel Core i9 14900K (Lote C)', 3799.00, 6, 1),
('Processador AMD Ryzen 5 5600G (Lote C)', 829.00, 55, 1),
('Processador AMD Ryzen 7 5700X (Lote C)', 1149.00, 20, 1),
('Processador AMD Ryzen 7 7800X3D (Lote C)', 2650.00, 15, 1),
('Processador AMD Ryzen 9 7950X (Lote C)', 3450.00, 8, 1),
('Memória RAM Corsair 8GB DDR4 3200MHz (Lote C)', 175.00, 90, 2),
('Memória RAM Kingston 8GB DDR4 3200MHz (Lote C)', 179.00, 85, 2),
('Memória RAM XPG 16GB DDR4 3200MHz (Lote C)', 289.00, 70, 2),
('Memória RAM Corsair 16GB DDR4 3600MHz (Lote C)', 349.00, 40, 2),
('Memória RAM Kingston 16GB DDR5 5600MHz (Lote C)', 415.00, 30, 2),
('Memória RAM Corsair 32GB DDR5 6000MHz (Lote C)', 829.00, 18, 2);


INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES 
('Placa de Vídeo GTX 1650 4GB (Lote D)', 780.00, 25, 3),
('Placa de Vídeo RTX 3050 8GB (Lote D)', 1320.00, 22, 3),
('Placa de Vídeo RTX 4060 8GB (Lote D)', 2149.00, 30, 3),
('Placa de Vídeo RTX 4070 12GB (Lote D)', 4199.00, 10, 3),
('Placa de Vídeo RTX 4090 24GB (Lote D)', 12850.00, 3, 3),
('Placa de Vídeo RX 6600 8GB (Lote D)', 1369.00, 19, 3),
('Placa de Vídeo RX 7600 8GB (Lote D)', 1849.00, 16, 3),
('SSD Kingston NV2 500GB M.2 (Lote D)', 239.00, 110, 4),
('SSD Kingston NV2 1TB M.2 (Lote D)', 399.00, 140, 4),
('SSD Crucial 2TB M.2 (Lote D)', 779.00, 50, 4),
('HD Externo Seagate 1TB USB (Lote D)', 319.00, 45, 4),
('HD Interno Toshiba 2TB SATA (Lote D)', 425.00, 28, 4);


INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES 
('Monitor LG 21.5 Polegadas 75Hz (Lote E)', 529.00, 33, 5),
('Monitor AOC Hero 24 144Hz (Lote E)', 919.00, 42, 5),
('Monitor Asus TUF 27 165Hz (Lote E)', 1649.00, 18, 5),
('Monitor Samsung Odyssey G9 49 (Lote E)', 7450.00, 5, 5),
('Mouse Redragon Cobra RGB (Lote E)', 115.00, 150, 6),
('Mouse Logitech G203 (Lote E)', 129.00, 120, 6),
('Teclado Mecânico Kumara Switch Blue (Lote E)', 219.00, 75, 6),
('Headset HyperX Cloud Stinger 2 (Lote E)', 189.00, 65, 6);


INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES 
('Processador Intel Core i7 13700K (Lote F)', 2390.00, 15, 1),
('Processador AMD Ryzen 7 7800X3D (Lote F)', 2680.00, 11, 1),
('Memória RAM Corsair 16GB DDR4 (Lote F)', 355.00, 60, 2),
('Memória RAM Corsair 32GB DDR5 (Lote F)', 840.00, 25, 2),
('Placa de Vídeo RTX 4070 12GB (Lote F)', 4250.00, 12, 3),
('Placa de Vídeo RTX 4060 8GB (Lote F)', 2180.00, 35, 3),
('SSD Kingston NV2 1TB M.2 (Lote F)', 415.00, 95, 4),
('Monitor Asus TUF 27 165Hz (Lote F)', 1680.00, 22, 5);


INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES 
('Mouse Redragon Cobra RGB (Lote G)', 110.00, 200, 6),
('Mouse Logitech G203 (Lote G)', 125.00, 180, 6),
('Teclado Mecânico Kumara Switch Blue (Lote G)', 210.00, 90, 6),
('Headset HyperX Cloud Stinger 2 (Lote G)', 185.00, 110, 6),
('SSD Kingston NV2 500GB M.2 (Lote G)', 235.00, 170, 4),
('Memória RAM Kingston 8GB DDR4 (Lote G)', 170.00, 140, 2);

USE nexus_db;
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo ASUS TUF RTX 4060 Ti', 2799.00, 12, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo Gigabyte RX 7600 XT', 2299.00, 15, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo MSI Ventus RTX 3060', 1699.00, 18, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5500', 649.00, 40, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 13400', 1299.00, 25, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM XPG Spectrix 8GB DDR4', 219.00, 60, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Team Group 16GB DDR4', 279.00, 50, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD WD Green 480GB SATA', 199.00, 80, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Sandisk Plus 1TB SATA', 389.00, 45, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Samsung T350 24 Polegadas', 699.00, 20, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Razer Deathadder Essential', 149.00, 90, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G403 Hero', 249.00, 40, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico Razer Cynosa V2', 329.00, 30, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico HyperX Alloy Core', 299.00, 35, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset Razer Kraken X Lite', 259.00, 55, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset JBL Quantum 100', 169.00, 70, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mousepad Gamer Redragon Orion RGB', 99.00, 100, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Caixa de Som Logitech Z120', 89.00, 120, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5600G (Lote D)', 819.00, 30, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 12400F (Lote D)', 869.00, 25, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 8GB DDR4 (Lote D)', 169.00, 70, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 16GB DDR5 (Lote D)', 399.00, 40, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4060 8GB (Lote D)', 2100.00, 20, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 1TB M.2 (Lote D)', 389.00, 65, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor LG 21.5 Polegadas (Lote D)', 519.00, 28, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G203 (Lote D)', 119.00, 80, 6);
USE nexus_db;
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo Gigabyte RTX 4070 Ti Gaming O0C', 5499.00, 8, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo ASUS ROG Strix RTX 4080 Super', 8999.00, 4, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo AMD Radeon RX 7700 XT Phantom', 3199.00, 14, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 14600K K-Series', 1999.00, 20, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 7600X AM5', 1549.00, 18, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston Fury Renegade 16GB DDR5', 549.00, 35, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair Dominator Platinum 32GB', 1299.00, 15, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD WD Black SN850X 1TB NVMe M.2', 699.00, 40, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Samsung 990 Pro 2TB NVMe M.2', 1399.00, 25, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Gamer ASUS ROG Swift 32 240Hz', 4599.00, 6, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Razer Viper V2 Pro Wireless', 899.00, 25, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G Pro X Superlight 2', 949.00, 30, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico Razer BlackWidow V4 Pro', 1499.00, 15, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico Corsair K100 RGB Cherry', 1699.00, 10, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset HyperX Cloud Alpha Wireless', 1199.00, 22, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset SteelSeries Arctis Nova 7', 1399.00, 18, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Microfone HyperX QuadCast S RGB', 899.00, 40, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Webcam Logitech StreamCam Full HD 60FPS', 649.00, 50, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 7 5700X3D (Lote E)', 1349.00, 28, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i7 14700K (Lote E)', 2899.00, 12, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM XPG Gammix D35 8GB DDR4 (Lote E)', 189.00, 95, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Team Group T-Force 32GB (Lote E)', 799.00, 20, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo MSI GeForce RTX 4060 Ventus', 2249.00, 32, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Crucial P3 1TB NVMe M.2 (Lote E)', 429.00, 75, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor BenQ ZOWIE XL2546K 24.5 240Hz', 3299.00, 11, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Razer Basilisk V3 Ergonomic', 399.00, 65, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo AMD Radeon RX 6500 XT', 999.00, 24, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i3 13100F Raptor Lake', 699.00, 35, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 3 4100 AM4', 429.00, 50, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Rise Mode 8GB DDR4 2400MHz', 129.00, 120, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston A400 240GB SATA III 2.5', 149.00, 200, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Rise Mode 480GB SATA III 2.5', 219.00, 150, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Multi 19 Polegadas HD Office', 399.00, 45, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Multilaser Office USB Sem Fio', 39.00, 300, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Multilaser Basic Padrão ABNT2', 45.00, 250, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo Gigabyte RTX 4070 Ti (Lote F)', 5399.00, 5, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo ASUS ROG Strix RTX 4080 (Lote F)', 8850.00, 3, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 14600K (Lote F)', 1950.00, 15, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 7600X (Lote F)', 1499.00, 12, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston Fury 16GB (Lote F)', 529.00, 40, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD WD Black SN850X 1TB (Lote F)', 679.00, 30, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Gamer ASUS ROG Swift 32 (Lote F)', 4499.00, 4, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Razer Viper V2 Pro (Lote F)', 869.00, 20, 6);
USE nexus_db;
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Roteador ASUS ROG Rapture GT6 Wi-Fi 6 Mesh', 2499.00, 15, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Roteador TP-Link Archer AX55 Wi-Fi 6', 589.00, 45, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Captura Elgato Game Capture 4K60 Pro', 1999.00, 10, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Stream Deck Elgato MK2 15 Teclas LCD', 1199.00, 25, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Som Externa Creative Sound BlasterX G6', 1099.00, 12, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5600X (Lote G)', 1120.00, 30, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 13400F (Lote G)', 1250.00, 22, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair Vengeance 8GB DDR4 (Lote G)', 165.00, 80, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston Fury 16GB DDR4 (Lote G)', 285.00, 65, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo MSI RTX 3060 Ventus (Lote G)', 1650.00, 15, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo Gigabyte RX 7600 (Lote G)', 1820.00, 18, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 500GB M.2 (Lote G)', 229.00, 90, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Crucial P3 2TB M.2 (Lote G)', 750.00, 25, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor LG UltraGear 27 IPS 240Hz (Lote H)', 2199.00, 14, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor AOC Hero 24 144Hz (Lote H)', 899.00, 40, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor Samsung Odyssey G5 34 Curvo (Lote H)', 2999.00, 8, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Monitor ASUS TUF 27 165Hz (Lote H)', 1620.00, 16, 5);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Razer Deathadder Essential (Lote I)', 139.00, 110, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Mouse Logitech G203 Lightsync (Lote I)', 125.00, 95, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico Redragon Kumara (Lote I)', 209.00, 55, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Teclado Mecânico HyperX Alloy Core (Lote I)', 285.00, 40, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset Razer Kraken X Lite (Lote I)', 245.00, 60, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Headset JBL Quantum 100 (Lote I)', 159.00, 85, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 7 7800X3D (Lote J)', 2620.00, 12, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i9 14900K (Lote J)', 3750.00, 5, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 32GB DDR5 (Lote J)', 819.00, 20, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4070 Super 12GB (Lote J)', 4499.00, 10, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4090 24GB (Lote J)', 12699.00, 2, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Samsung 990 Pro 2TB (Lote J)', 1350.00, 18, 4);
USE nexus_db;
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Fonte Corsair RM750e 750W 80 Plus Gold Modular', 699.00, 30, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Fonte MSI MAG A650BN 650W 80 Plus Bronze', 329.00, 55, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Fonte XPG Core Reactor 850W 80 Plus Gold Modular', 749.00, 25, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Fonte EVGA 600W W1 80 Plus White', 289.00, 40, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Filtro de Linha iClamper Energia 5 Tomadas', 99.00, 150, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Gabinete Gamer Pichau Apus Black Mid-Tower', 199.00, 60, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Gabinete Lian Li O11 Dynamic EVO Black', 1199.00, 12, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Water Cooler Deepcool LE500 LED 240mm', 329.00, 35, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Water Cooler Corsair iCUE H100i RGB 240mm', 799.00, 15, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Cooler para Processador Deepcool AK400', 169.00, 80, 6);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i3 12100F (Lote K)', 579.00, 45, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i5 12400F (Lote K)', 859.00, 38, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador Intel Core i7 13700K (Lote K)', 2299.00, 14, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 5 5600G (Lote K)', 799.00, 50, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Processador AMD Ryzen 7 5700X (Lote K)', 1120.00, 22, 1);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Corsair 8GB DDR4 3200MHz (Lote L)', 160.00, 100, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 8GB DDR4 3200MHz (Lote L)', 169.00, 90, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM XPG 16GB DDR4 3200MHz (Lote L)', 279.00, 75, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Memória RAM Kingston 16GB DDR5 5600MHz (Lote L)', 389.00, 45, 2);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo GTX 1650 4GB (Lote M)', 750.00, 20, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 3050 8GB (Lote M)', 1299.00, 18, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RTX 4060 8GB (Lote M)', 2080.00, 28, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('Placa de Vídeo RX 6600 8GB (Lote M)', 1320.00, 15, 3);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 500GB M.2 (Lote N)', 219.00, 130, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Kingston NV2 1TB M.2 (Lote N)', 379.00, 160, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('SSD Crucial 2TB M.2 (Lote N)', 739.00, 45, 4);
INSERT INTO produto (nome, preco, estoque, id_categoria) VALUES ('HD Interno Toshiba 2TB SATA (Lote N)', 410.00, 30, 4);

USE nexus_db;

SELECT 
    p.id AS 'Código do Pedido',
    p.data AS 'Data da Compra',
    c.nome AS 'Nome do Cliente',
    c.cpf_cnpj AS 'Documento',
    t.nome AS 'Transportadora'
FROM 
    pedido p, 
    cliente c, 
    transportadora t
WHERE 
    p.id_cliente = c.id              
    AND p.id_transportadora = t.id;  


SELECT 
    p.id AS 'Nº Pedido',
    pr.nome AS 'Produto Cadastrado',
    ip.quantidade AS 'Qtd Comprada',
    ip.preco_unitario AS 'Preço Cobrado na Época'
FROM 
    pedido p, 
    item_pedido ip, 
    produto pr
WHERE 
    p.id = ip.id_pedido             
    AND ip.id_produto = pr.id        
    AND pr.nome LIKE '%(Lote M)%';   


SELECT 
    c.nome AS 'Cliente',
    p.id AS 'Pedido',
    pr.nome AS 'Produto Comprado',
    ip.quantidade AS 'Quantidade'
FROM 
    cliente c, 
    pedido p, 
    item_pedido ip, 
    produto pr
WHERE 
    c.id = p.id_cliente           
    AND p.id = ip.id_pedido     
    AND ip.id_produto = pr.id      
    AND c.id = 1;                   


SELECT 
    p.id AS 'Código Pedido',
    cat.nome AS 'Categoria',
    pr.nome AS 'Produto',
    ip.quantidade AS 'Qtd',
    ip.preco_unitario AS 'Preço Unitário'
FROM 
    pedido p, 
    item_pedido ip, 
    produto pr, 
    categoria cat
WHERE 
    p.id = ip.id_pedido            
    AND ip.id_produto = pr.id      
    AND pr.id_categoria = cat.id    
    AND cat.nome = 'Processador';   


SELECT 
    id AS 'Código do Produto',
    nome AS 'Descrição',
    preco AS 'Preço Atual',
    estoque AS 'Qtd em Estoque'
FROM 
    produto
WHERE 
    preco > 1000.00 
    AND estoque < 25;