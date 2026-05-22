FROM mcr.microsoft.com/playwright/mcp

# Переопределяем ENTRYPOINT полностью
# $PORT выставляет Railway автоматически
ENTRYPOINT ["sh", "-c", "node /app/cli.js --headless --browser chromium --no-sandbox --host 0.0.0.0 --port $PORT"]
