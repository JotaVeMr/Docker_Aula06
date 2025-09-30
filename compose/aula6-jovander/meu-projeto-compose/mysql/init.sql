-- mysql/init.sql

-- Cria o banco de dados se ele não existir
CREATE DATABASE IF NOT EXISTS clientesdb;

-- Usa o banco de dados
USE clientesdb;

-- Cria a tabela de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Cidade VARCHAR(100),
    Telefone VARCHAR(20)
);

-- Insere alguns dados de exemplo
INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone) VALUES
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Ana Silva', 'Rua das Flores, 123', 'São Paulo', '(11) 98765-4321'),
('Bruno Costa', 'Av. Principal, 456', 'Barretos', '(17) 91234-5678'),
('Carla Dias', 'Praça Central, 789', 'Ribeirão Preto', '(16) 99999-8888');