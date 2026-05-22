FROM mcr.microsoft.com/playwright/mcp

# Переопределяем ENTRYPOINT чтобы прокинуть $PORT от Railway
ENTRYPOINT ["sh", "-c", "node /app/cli.js --headless --browser chromium --no-sandbox --host 0.0.0.0 --port ${PORT:-8931}"]
