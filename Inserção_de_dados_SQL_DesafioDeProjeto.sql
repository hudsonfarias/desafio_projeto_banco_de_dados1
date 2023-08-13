-- Inserção de dados na tabela Clients
insert into clients (Fname, Minit, Lname, CPF, Address) 
values
    ('Maria', 'M', 'Silva', '12346789', 'Rua Silva de Prata 29, Carangola - Cidade das Flores'),
    ('Matheus', 'O', 'Pimentel', '987654321', 'Rua Alameda 289, Centro - Cidade das Flores'),
    ('Ricardo', 'F', 'Silva', '45678913', 'Avenida Alameda Vinha 1009, Centro - Cidade das Flores'),
    ('Julia', 'S', 'França', '789123456', 'Rua Lareijras 861, Centro - Cidade das Flores'),
    ('Roberta', 'G', 'Assis', '98745631', 'Avenida Koller 19, Centro - Cidade das Flores'),
    ('Isabela', 'M', 'Cruz', '654789123', 'Rua Alameda das Flores 28, Centro - Cidade das Flores'),
    ('Paulo', 'A', 'Oliveira', '98765432101', 'Rua das Flores, 123, São Paulo - SP'),
    ('Ana', 'M', 'Souza', '65498732165', 'Avenida Central, 456, Rio de Janeiro - RJ');

-- Inserção de dados na tabela Product
insert into product (Pname, classification_kids, category, avaliação, size) values
    ('Fone de ouvido', false, 'Eletrônico', 4, null),
    ('Barbie Elsa', true, 'Brinquedos', 3, null),
    ('Body Carters', true, 'Vestimenta', 5, null),
    ('Microfone Vedo - Youtuber', false, 'Eletrônico', 4, null),
    ('Sofá retrátil', false, 'Móveis', 3, '3x57x80'),
    ('Farinha de arroz', false, 'Alimentos', 2, null),
    ('Fire Stick Amazon', false, 'Eletrônico', 3, null),
    ('Bola de Futebol', true, 'Esporte', 4.5, 'Padrão');

-- Inserção de dados na tabela Supplier
insert into supplier (SocialName, CNPJ, contact) values 
    ('Almeida e filhos', '123456789123456', '21985474'),
    ('Eletrônicos Silva', '854519649143457', '21985484'),
    ('Eletrônicos Valma', '934567893934695', '21975474'),
    ('Brinquedos Diversos', '745289613542782', '21987654');

-- Inserção de dados na tabela Seller
insert into seller (SocialName, AbstName, CNPJ, CPF, location, contact) values 
    ('Tech Eletronics', null, '123456789456321', null, 'Rio de Janeiro', '219946287'),
    ('Botique Durgas', null, null, '123456783', 'Rio de Janeiro', '219567895'),
    ('Kids World', null, '456789123654485', null, 'São Paulo', '1198657484'),
    ('Esportes Ltda', null, '789654123654789', null, 'São Paulo', '1199857484');

-- Inserção de dados na tabela Orders
insert into orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) values 
    (1, default, 'compra via aplicativo', null, 1),
    (2, default, 'compra via aplicativo', 50, 0),
    (3, 'Confirmado', null, null, 1),
    (4, default, 'compra via web site', 150, 0),
    (5, default, 'compra via aplicativo', 70, 1),
    (6, 'Cancelado', null, null, 0),
    (7, 'Confirmado', null, null, 0),
    (8, default, 'compra via web site', 120, 1);

-- Inserção de dados na tabela ProductOrder
insert into productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
    (5, 1, 2, null),
    (6, 2, 1, null),
    (7, 3, 1, null),
    (1, 4, 3, null),
    (2, 5, 1, null),
    (4, 6, 2, null),
    (3, 7, 1, null),
    (7, 8, 2, null);

-- Inserção de dados na tabela ProductStorage
insert into productStorage (storageLocation, quantity, idProduct) values 
    ('Rio de Janeiro', 1000, 1),
    ('Rio de Janeiro', 500, 2),
    ('São Paulo', 10, 3),
    ('São Paulo', 100, 4),
    ('São Paulo', 10, 5),
    ('Brasília', 60, 6),
    ('Rio de Janeiro', 30, 7),
    ('São Paulo', 25, 8);

-- Inserção de dados na tabela StorageLocation
insert into storageLocation (idLproduct, idLstorage, location) values
    (1, 1, 'RJ'),
    (2, 2, 'SP'),
    (3, 3, 'GO'),
    (4, 4, 'RJ'),
    (5, 5, 'SP'),
    (6, 6, 'DF'),
    (7, 7, 'RJ'),
    (8, 8, 'SP');

-- Inserção de dados na tabela ProductSupplier
insert into productSupplier (idPsSupplier, idPsProduct, quantity) values
    (1, 1, 500),
    (1, 2, 400),
    (2, 4, 633),
    (3, 3, 5),
    (2, 5, 10),
    (4, 6, 150),
    (4, 7, 100),
    (1, 8, 200);

-- Inserção de dados na tabela Payments
insert into payments (idclient, typePayment, limitAvailable) values
    (1, 'Cartão', 500),
    (2, 'Boleto', 300),
    (3, 'Cartão', 800), 
    (4, 'Dois cartões', 1500),
    (5, 'Boleto', 100),
    (6, 'Cartão', 50),
    (7, 'Cartão', 80),
    (8, 'Boleto', 70);

-- Inserção de dados na tabela Deliveries
insert into deliveries (idOrder, deliveryStatus, trackingCode) values
    (1, 'Pendente', 'TRK123'),
    (2, 'Em trânsito', 'TRK456'),
    (3, 'Entregue', 'TRK789'),
    (4, 'Pendente', 'TRK101'),
    (5, 'Em trânsito', 'TRK102'),
    (6, 'Pendente', 'TRK103'),
    (7, 'Pendente', 'TRK104'),
    (8, 'Em trânsito', 'TRK105');
