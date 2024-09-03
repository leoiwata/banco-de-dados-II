Create database Livraria;
use Livraria;
create TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    Email VARCHAR(100),
    data_de_criacao varchar(11),
    senha varchar(100)
);
CREATE TABLE Livros (
    LivroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100),
    Editora VARCHAR(100),
    AnoPublicacao INT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT NOT NULL
);
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pendente',
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);
CREATE TABLE ItensPedido (
    ItemID INT AUTO_INCREMENT PRIMARY KEY,
    PedidoID INT,
    LivroID INT,
    Quantidade INT NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID)
);
INSERT INTO Clientes (Nome, Endereco, Telefone, Email, data_de_criacao, senha) VALUES 
('Ana Souza', 'Rua A, 123', '1234-5678', 'ana.souza@email.com', '2024-09-01', 'senha123'),
('Carlos Silva', 'Rua B, 234', '2345-6789', 'carlos.silva@email.com', '2024-09-02', 'senha234'),
('Fernanda Lima', 'Rua C, 345', '3456-7890', 'fernanda.lima@email.com', '2024-09-03', 'senha345'),
('Gustavo Oliveira', 'Rua D, 456', '4567-8901', 'gustavo.oliveira@email.com', '2024-09-04', 'senha456'),
('Juliana Costa', 'Rua E, 567', '5678-9012', 'juliana.costa@email.com', '2024-09-05', 'senha567'),
('Lucas Pereira', 'Rua F, 678', '6789-0123', 'lucas.pereira@email.com', '2024-09-06', 'senha678'),
('Mariana Santos', 'Rua G, 789', '7890-1234', 'mariana.santos@email.com', '2024-09-07', 'senha789'),
('Pedro Alves', 'Rua H, 890', '8901-2345', 'pedro.alves@email.com', '2024-09-08', 'senha890'),
('Renata Martins', 'Rua I, 901', '9012-3456', 'renata.martins@email.com', '2024-09-09', 'senha901'),
('Roberto Lima', 'Rua J, 012', '0123-4567', 'roberto.lima@email.com', '2024-09-10', 'senha012'),
('Tatiane Ribeiro', 'Rua K, 123', '1234-5678', 'tatiane.ribeiro@email.com', '2024-09-11', 'senha1234'),
('Vinícius Almeida', 'Rua L, 234', '2345-6789', 'vinicius.almeida@email.com', '2024-09-12', 'senha2345'),
('Wagner Ferreira', 'Rua M, 345', '3456-7890', 'wagner.ferreira@email.com', '2024-09-13', 'senha3456'),
('Yasmin Oliveira', 'Rua N, 456', '4567-8901', 'yasmin.oliveira@email.com', '2024-09-14', 'senha4567'),
('Zé Carlos', 'Rua O, 567', '5678-9012', 'ze.carlos@email.com', '2024-09-15', 'senha5678');

INSERT INTO Livros (Titulo, Autor, Editora, AnoPublicacao, Preco, Estoque) VALUES 
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Martins Fontes', 1954, 120.00, 50),
('1984', 'George Orwell', 'Companhia das Letras', 1949, 45.00, 60),
('Dom Casmurro', 'Machado de Assis', 'Editora Globo', 1899, 35.00, 40),
('A Moreninha', 'Joaquim Manuel de Macedo', 'Saraiva', 1844, 25.00, 30),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Agir', 1943, 30.00, 70),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Record', 1967, 55.00, 35),
('O Hobbit', 'J.R.R. Tolkien', 'HarperCollins', 1937, 50.00, 45),
('A Culpa é das Estrelas', 'John Green', 'Intrínseca', 2012, 40.00, 50),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Rocco', 1997, 80.00, 60),
('A Menina que Roubava Livros', 'Markus Zusak', 'Zahar', 2005, 40.00, 55),
('O Código Da Vinci', 'Dan Brown', 'Editora Record', 2003, 60.00, 50),
('A Casa dos Espíritos', 'Isabel Allende', 'Bertrand Brasil', 1982, 50.00, 45),
('O Alquimista', 'Paulo Coelho', 'Rocco', 1988, 35.00, 70),
('O Diário de Anne Frank', 'Anne Frank', 'Record', 1947, 25.00, 30),
('A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', 1945, 30.00, 40);

INSERT INTO Pedidos (ClienteID, DataPedido, Status) VALUES 
(1, '2024-09-01', 'Pendente'),
(2, '2024-09-02', 'Concluído'),
(3, '2024-09-03', 'Cancelado'),
(4, '2024-09-04', 'Pendente'),
(5, '2024-09-05', 'Concluído'),
(6, '2024-09-06', 'Pendente'),
(7, '2024-09-07', 'Cancelado'),
(8, '2024-09-08', 'Pendente'),
(9, '2024-09-09', 'Concluído'),
(10, '2024-09-10', 'Pendente'),
(11, '2024-09-11', 'Cancelado'),
(12, '2024-09-12', 'Concluído'),
(13, '2024-09-13', 'Pendente'),
(14, '2024-09-14', 'Cancelado'),
(15, '2024-09-15', 'Concluído');

INSERT INTO ItensPedido (PedidoID, LivroID, Quantidade) VALUES 
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(2, 4, 3),
(3, 5, 2),
(3, 6, 1),
(4, 7, 1),
(4, 8, 2),
(5, 9, 3),
(5, 10, 1),
(6, 11, 2),
(6, 12, 1),
(7, 13, 1),
(7, 14, 2),
(8, 1, 3);


-- Listar os Usuarios cadastrados no Banco
select * from clientes
order by nome asc


