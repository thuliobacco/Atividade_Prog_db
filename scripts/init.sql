-- init.sql

-- Criar extensão para suportar UUIDs, se ainda não estiver ativada
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Criar tabela de usuários com UUID como chave primária
CREATE TABLE IF NOT EXISTS users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS curso (
  id SERIAL PRIMARY KEY,
  nome TEXT NOT NULL
);

ALTER TABLE aluno DROP CONSTRAINT IF EXISTS fk_curso; -- Remove a constraint se ela já existir

ALTER TABLE aluno
ADD COLUMN IF NOT EXISTS curso_id INTEGER,
ADD CONSTRAINT fk_curso FOREIGN KEY (curso_id) REFERENCES curso(id) ON DELETE SET NULL;

CREATE TABLE IF NOT EXISTS professor (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL
);