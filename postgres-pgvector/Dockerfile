FROM postgres:15

RUN apt update && \
    apt install -y postgresql-15-pgvector && \
    rm -rf /var/lib/apt/lists/*

# 数据目录
VOLUME ["/var/lib/postgresql/data"]

EXPOSE 5432