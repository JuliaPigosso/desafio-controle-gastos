-- Coloque seus scripts de inserção/atualização ou remoção de dados aqui
-- inserir usuario
INSERT INTO usuarios (nome,email,objetivo_financeiro)
VALUES('Walter & Patricia','walter.paty', 'aposentadoria');

SELECT * FROM usuarios;
--inserir conta e atrelar ao usuario
INSERT INTO contas (nome,instituicao_financeira,cor,usuarios_id)
VALUES('corrente','Banco Itau', 'Azul', 6);

SELECT * FROM contas;
-- inserir categoria
INSERT INTO categorias (nome, cor)
VALUES('Compras', 'Prata');

SELECT * FROM categorias;
--arrumar ou alterar categoria
update categorias SET nome = 'Vestuario', cor = 'Laranja' 
WHERE id = 4;

SELECT * FROM categorias;
--inserir transações
INSERT INTO transacoes (descricao,valor,data,contas_id,categorias_id)
VALUES('Cofrinho',-200,'01/06/2022',4,14);

SELECT * FROM transacoes;
-- alterar ou arrumar transações
update transacoes SET valor = 150 
WHERE id = 40;

SELECT * FROM transacoes;
--juntar a tabela de transações com a tabela de contas 
SELECT transacoes.* FROM transacoes
INNER JOIN contas on contas.id = transacoes.contas_id
INNER JOIN usuarios on usuarios.id = contas.usuarios_id
WHERE usuarios.id = 2;


