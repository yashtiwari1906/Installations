sudo docker pull ankane/pgvector
sudo docker run --name pgvector-db -e POSTGRES_PASSWORD=test@123 -p 5432:5432 ankane/pgvector
