-- Criação da tabela de produtos
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INTEGER NOT NULL
);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Inserindo produtos
INSERT INTO produtos (nome, preco, estoque) VALUES
('Dom Casmurro', 29.90, 10),
('O Pequeno Príncipe', 19.90, 15),
('1984', 34.50, 8);

-- Inserindo pedidos
INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-04-10'),
(2, 1, '2025-04-09'),
(3, 3, '2025-04-08');
