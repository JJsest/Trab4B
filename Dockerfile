# Usar a imagem oficial do Redis como base
FROM redis:latest

# Definir o diretório de trabalho dentro do container
WORKDIR /data

# Copiar arquivo de configuração personalizado para o container
COPY redis.conf /usr/local/etc/redis/redis.conf

# Expor a porta padrão do Redis
EXPOSE 6379

# Comando para iniciar o servidor Redis com o arquivo de configuração personalizado
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]
