FROM mcr.microsoft.com/playwright/mcp

ENV PLAYWRIGHT_MCP_HEADLESS=true
ENV PLAYWRIGHT_MCP_NO_SANDBOX=true

EXPOSE 8931

CMD ["node", "/app/cli.js", "--headless", "--browser", "chromium", "--no-sandbox", "--port", "8931", "--host", "0.0.0.0"]
