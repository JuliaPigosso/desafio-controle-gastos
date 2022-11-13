-- Coloque suas consultas aqui

-- Essa é consulta da tabela
select usuarios.*, contas.usuarios_id
from usuarios 
LEFT JOIN contas 
    on contas.usuarios_id = usuarios.id