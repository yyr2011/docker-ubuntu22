FROM neo4j:5.17

# 可选：默认关闭认证（开发环境用）
ENV NEO4J_AUTH=none

# 数据目录（方便 volume 映射）
VOLUME ["/data", "/logs", "/import"]

EXPOSE 7474 7687