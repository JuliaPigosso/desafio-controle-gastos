-- Coloque seus scripts de criação aqui
CREATE TABLE IF NOT EXISTS usuarios (
   id INTEGER PRIMARY KEY AUTOINCREMENT,
   nome TEXT NOT NULL,
   email TEXT NOT NULL,
   objetivo_financeiro TEXT
);

CREATE TABLE IF NOT EXISTS contas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    instituicao_financeira TEXT NOT NULL,
    cor TEXT NOT NULL,
    usuarios_id INTEGER NOT NULL,
    FOREIGN KEY (usuarios_id) REFERENCES usuarios (id)
);

CREATE TABLE IF NOT EXISTS categorias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cor TEXT
);

CREATE TABLE IF NOT EXISTS transacoes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT NOT NULL,
    valor REAL NOT NULL,
    data TEXT NOT NULL,
    contas_id INTEGER NOT NULL,
    categorias_id INTEGER NOT NULL,
    FOREIGN KEY (contas_id) REFERENCES contas (id),
    FOREIGN KEY (categorias_id) REFERENCES categorias (id)
);
