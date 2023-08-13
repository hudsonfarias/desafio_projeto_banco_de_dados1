-- Recuperações simples com SELECT Statement:
-- Recuperar todos os produtos
SELECT * FROM product;

-- Filtros com WHERE Statement:
-- Recuperar todos os produtos da categoria "Eletrônico"
SELECT * FROM product 
WHERE category = 'Eletrônico';

-- Crie expressões para gerar atributos derivados:
-- Recuperar os nomes completos dos clientes (concatenando nome e sobrenome)
SELECT CONCAT(Fname, ' ', Lname) AS NomeCompleto 
FROM clients;

-- Defina ordenações dos dados com ORDER BY:
-- Recuperar os produtos em ordem decrescente de avaliação
SELECT * FROM product 
ORDER BY avaliação DESC;

-- Condições de filtros aos grupos – HAVING Statement:
-- Recuperar os fornecedores que têm pelo menos 500 produtos em estoque
SELECT s.idSupplier IdFornecedor, s.SocialName RazãoSocial, COUNT(ps.idPsProduct) AS TotalProdutos
FROM supplier s
INNER JOIN productSupplier ps ON s.idSupplier = ps.idPsSupplier
GROUP BY s.idSupplier, s.SocialName
HAVING TotalProdutos >= 2;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados:
-- Recuperar informações de pedidos, produtos e clientes em um único resultado
SELECT o.idOrder IdPedido, o.orderStatus StatusPedido, p.Pname NomeProduto, concat(c.Fname, ' ',c.Lname) NomeCompleto
FROM orders o
INNER JOIN productOrder po ON o.idOrder = po.idPOorder
INNER JOIN product p ON po.idPOproduct = p.idProduct
INNER JOIN clients c ON o.idOrderClient = c.idClient;

-- Recuperar os status de entrega e a quantidade de entregas em cada status:
SELECT deliveryStatus AS StatusEntrega , COUNT(*) AS TotalEntregas
FROM deliveries
GROUP BY deliveryStatus
HAVING TotalEntregas > 1;

-- Recuperar informações de pedidos, produtos, clientes e entregas em um único resultado
SELECT o.idOrder IdPedido, o.orderStatus StatusPedido, p.Pname NomeProduto, 
concat(c.Fname, ' ', c.Lname) NomeCompleto, d.deliveryStatus StatusEntrega
FROM orders o
INNER JOIN productOrder po ON o.idOrder = po.idPOorder
INNER JOIN product p ON po.idPOproduct = p.idProduct
INNER JOIN clients c ON o.idOrderClient = c.idClient
LEFT JOIN deliveries d ON o.idOrder = d.idOrder;

