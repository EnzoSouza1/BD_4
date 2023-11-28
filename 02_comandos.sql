--- COMANDOS PARA A CONSULTA 1 ---
SELECT
    M.nome,
    MAX(E.fabricante) AS fabricante,
    SUM(E.quantidade) AS quantidade_total,
    F.cidade
FROM
    ESTOQUE E
JOIN
    MEDICAMENTO_FARMACIA MF ON E.FARMACIA_id_farmacia = MF.FARMACIA_id_farmacia
JOIN
    MEDICAMENTO M ON MF.MEDICAMENTO_id_medicamento = M.id_medicamento
JOIN
    FARMACIA F ON MF.FARMACIA_id_farmacia = F.id_farmacia
WHERE
    M.nome IN ('HIDROCLOROTIAZIDA', 'Amoxicilina', 'Ivermectina', 'Durateston', 'LORATAMED', 'Escitalopram', 'Neo Soro', 'Alenia', 'Quetiapina', 'Avamys', 'Clonazepam', 'Xigduo', 'Aerolin', 'Pregabalina', 'Losartan')
    AND F.cidade = 'Barretos-SP' 
GROUP BY
    M.nome, F.cidade
ORDER BY
    M.nome, F.cidade;

--- COMANDOS PARA A CONSULTA 2 ---
SELECT
    id_cliente,
    nome,
    telefone1,
    nr_de_compras
FROM (
    SELECT
        C.id_cliente,
        C.nome,
        C.telefone1,
        C.nr_de_compras,
        RANK() OVER (ORDER BY nr_de_compras DESC) AS rank_cliente
    FROM
        CLIENTE C
    WHERE
        C.estado = 'São Paulo' 
) ranked_clients
WHERE
    rank_cliente = 1;

--- COMANDOS PARA A CONSULTA 3 ---

SELECT
    P.id_pedido AS id_compra,
    C.nome AS cliente,
    P.valor_total,
    P.data_pedido AS data_hora
FROM
    PEDIDO P
JOIN
    CLIENTE C ON P.CLIENTE_id_cliente = C.id_cliente
WHERE
    P.data_pedido >= '2023-11-14 00:00:00' AND P.data_pedido < '2023-11-16 00:00:00';
    
    
    --- COMANDOS PARA A CONSULTA 5 ---
    
    SELECT E.codigo, E.nome, E.fabricante, E.quantidade, E.lote, E.vencimento
FROM Estoque E
JOIN Medicamento M ON E.nome = M.nome
JOIN Farmacia F ON E.FARMACIA_id_farmacia = F.id_farmacia
WHERE M.nome = 'Durateston' AND F.id_farmacia = 1738
ORDER BY E.lote;


    --- COMANDOS PARA A CONSULTA 6 ---

SELECT DISTINCT E.codigo, M.nome, E.fabricante, SUM(IP.qtd_item) AS qtd_vendas
FROM Medicamento M
JOIN item_pedido IP ON M.id_medicamento = IP.MEDICAMENTO_id_medicamento
JOIN pedido P ON IP.PEDIDO_id_pedido = P.id_pedido
JOIN Cliente C ON P.CLIENTE_id_cliente = C.id_cliente
JOIN Estoque E ON M.nome = E.nome
WHERE C.cidade = 'Barretos-SP'
GROUP BY E.codigo, M.nome, E.fabricante
ORDER BY qtd_vendas DESC
LIMIT 10;


	--- COMANDOS PARA A CONSULTA 7 ---

SELECT
    M.nome AS produto,
    E.fabricante,
    F.nome AS farmacia,
    F.cidade,
    SUM(IP.qtd_item) AS qtd_vendas
FROM
    Medicamento M
JOIN item_pedido IP ON M.id_medicamento = IP.MEDICAMENTO_id_medicamento
JOIN pedido P ON IP.PEDIDO_id_pedido = P.id_pedido
JOIN Farmacia F ON P.CLIENTE_id_cliente = F.id_farmacia
JOIN Estoque E ON M.nome = E.nome
WHERE
    P.data_pedido >= CURDATE() - INTERVAL 30 DAY
    AND F.estado = 'São Paulo'
    AND M.nome = 'Amoxicilina'
GROUP BY
    M.nome, E.fabricante, F.nome, F.cidade
ORDER BY
    qtd_vendas DESC
LIMIT 10;

	--- COMANDOS PARA A CONSULTA 8 ---
    
SELECT
    F.nome AS farmacia,
    F.cnpj,
    F.email,
    F.telefone1
FROM
    Farmacia F
JOIN Estoque E ON F.id_farmacia = E.FARMACIA_id_farmacia
JOIN item_pedido IP ON E.codigo = IP.MEDICAMENTO_id_medicamento
JOIN pedido P ON IP.PEDIDO_id_pedido = P.id_pedido
JOIN Medicamento M ON IP.MEDICAMENTO_id_medicamento = M.id_medicamento
WHERE
    P.data_pedido >= CURDATE() - INTERVAL 30 DAY
    AND M.nome = 'HIDROCLOROTIAZIDA'
GROUP BY
    F.nome, F.cnpj, F.email, F.telefone1
ORDER BY
    SUM(IP.qtd_item) ASC
LIMIT 3;

	--- COMANDOS PARA A CONSULTA 9 ---
    
    
    --- COMANDOS PARA CRIAÇÃO E EXEMPLO DE USO DA VIEW ---
    
    CREATE VIEW vw_DadosCombinados AS
SELECT
    E.codigo,
    F.nome AS nome_farmacia,
    M.nome AS nome_medicamento,
    IP.qtd_item,
    P.data_pedido
FROM
    Estoque E
JOIN Farmacia F ON E.FARMACIA_id_farmacia = F.id_farmacia
JOIN item_pedido IP ON E.codigo = IP.MEDICAMENTO_id_medicamento
JOIN pedido P ON IP.PEDIDO_id_pedido = P.id_pedido
JOIN Medicamento M ON IP.MEDICAMENTO_id_medicamento = M.id_medicamento;


-- Consulta usando a view 
SELECT
    nome_farmacia,
    nome_medicamento,
    qtd_item,
    data_pedido
FROM
    vw_DadosCombinados
WHERE
    nome_medicamento = 'HIDROCLOROTIAZIDA'
    AND data_pedido >= CURDATE() - INTERVAL 30 DAY;


--- COMANDOS PARA CRIAÇÃO E EXEMPLO DE USO DA FUNÇÃO ---

CREATE FUNCTION CalcularTotalComprasCliente(cliente_id INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);

    SELECT
        SUM(valor_total)
    INTO
        total
    FROM
        pedido
    WHERE
        CLIENTE_id_cliente = cliente_id;

    -- Atualizar ou inserir o valor na tabela total_compras
    INSERT INTO total_compras (cliente_id, total)
    VALUES (cliente_id, total)
    ON DUPLICATE KEY UPDATE total = total;

    RETURN total;
END //

DELIMITER ;

-- Uso da função 
SELECT
    id_cliente,
    nome,
    CalcularTotalComprasCliente(id_cliente) AS total_compras
FROM
    Cliente;
    
    
    --- COMANDOS PARA CRIAÇÃO E EXEMPLO DE USO DA STORED PROCEDURE ---
    
    DELIMITER //

CREATE PROCEDURE AtualizarEstoqueMedicamento(
    IN nome VARCHAR(255),
    IN nova_quantidade INT
)
BEGIN
    -- Atualizar o estoque do medicamento em todas as farmácias
    UPDATE Estoque
    SET quantidade = nova_quantidade
    WHERE nome = nome_medicamento;
END //

DELIMITER ;