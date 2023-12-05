sleep 60s
psql -h localhost -p 5432 -d postgres -U postgres -W <<EOF
-- Your SQL queries go here
CREATE ROLE user1 WITH LOGIN SUPERUSER PASSWORD '1234';
CREATE EXTENSION IF NOT EXISTS vector;
CREATE TABLE embeddingStore (id bigserial primary key, name text,embedding vector(512));
-- Additional queries...
EOF
