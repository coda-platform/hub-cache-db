FROM redis:6.2

ARG HUB_CACHE_DB_PASSWORD=${HUB_CACHE_DB_PASSWORD}

ENV REDIS_PASSWORD=${HUB_CACHE_DB_PASSWORD}
CMD ["sh", "-c", "exec redis-server --requirepass \"$REDIS_PASSWORD\""]