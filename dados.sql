-- Coloque seus scripts de inserção/atualização ou remoção de dados aqui
INSERT INTO usuarios (nome,email,objetivo_financeiro)
VALUES('Giovanni Previatti','Giovanni.Previatti', 'casar');

SELECT * FROM usuarios;

INSERT INTO contas (nome,instituicao_financeira,cor,usuarios_id)
VALUES('corrente','Banco Inter', 'Laranja', 2);

SELECT * FROM contas;

INSERT INTO categorias (nome)
VALUES('mercado');

update categorias SET cor = 'Vermelho', nome = 'Mercado' 
WHERE id = 1;

SELECT * FROM categorias;

INSERT INTO transacoes (descricao,valor,data,contas_id,categorias_id)
VALUES('chocolate',21.90,'03/11/2022',1,1);

SELECT * FROM transacoes;

SELECT transacoes.* FROM transacoes
INNER JOIN contas on contas.id = transacoes.contas_id
INNER JOIN usuarios on usuarios.id = contas.usuarios_id
WHERE usuarios.id = 2;
