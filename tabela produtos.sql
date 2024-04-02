CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preço DECIMAL(10, 2),
    estoque INT,
    perecível BOOLEAN,
    marca VARCHAR(50),
    nacionalidade VARCHAR(50)
);

INSERT INTO Produtos (id_produto, nome, preço, estoque, perecível, marca, nacionalidade) VALUES
(1, 'nescau', 9.50, 100, true, 'nestle', 'Suica'),
(2, 'toddy', 8.75, 50, true, 'pepsico', 'Brasil'),
(3, 'chocolate', 4.99, 75, true, 'nestle', 'Suica'),
(4, 'ninho', 40.50, 30, false, 'nestle', 'Brasil'),
(5, 'cafe', 19.99, 200, false, 'pilao', 'Brasil');

SELECT COUNT(*) AS total_Produtos
FROM Produtos;

SELECT AVG(preço) AS preço_médio
FROM Produtos;

SELECT perecível, AVG(preço) AS preço_médio
FROM Produtos
GROUP BY perecível;

SELECT nome, AVG(preço) AS preço_médio
FROM Produtos
GROUP BY nome;

SELECT AVG(preço) AS preço_médio, SUM(estoque) AS total_estoque
FROM Produtos;

SELECT nome, marca, estoque
FROM Produtos
ORDER BY preço DESC
LIMIT 1;

SELECT *
FROM Produtos
WHERE preço > (SELECT AVG(preço) FROM Produtos);

SELECT nacionalidade, COUNT(*) AS quantidade
FROM Produtos
GROUP BY nacionalidade;