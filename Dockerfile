FROM mcr.microsoft.com/playwright/mcp

ENTRYPOINT ["sh", "-c", "node /app/cli.js --headless --browser chromium --no-sandbox --host 0.0.0.0 --port $PORT --allowed-hosts '*' --isolated"]
