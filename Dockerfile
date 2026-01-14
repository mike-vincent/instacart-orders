FROM python:3.12-slim

LABEL org.opencontainers.image.title="instacart-order-history-download"
LABEL org.opencontainers.image.description="A command-line tool to download your Instacart order history"
LABEL org.opencontainers.image.authors="Mike Vincent <michael.thomas.vincent@gmail.com>"
LABEL org.opencontainers.image.url="https://github.com/mike-vincent/instacart-order-history-download"
LABEL org.opencontainers.image.source="https://github.com/mike-vincent/instacart-order-history-download"
LABEL org.opencontainers.image.licenses="GPL-3.0-only"
LABEL org.opencontainers.image.version="1.0.0"

WORKDIR /app

COPY instacart_order_history_download.py .

ENTRYPOINT ["python3", "instacart_order_history_download.py"]
