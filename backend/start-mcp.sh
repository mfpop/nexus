#!/bin/bash

echo "Starting MCP Servers..."

# Start filesystem server
echo "Starting Filesystem MCP Server..."
npx @modelcontextprotocol/server-filesystem &

# Start memory server
echo "Starting Memory MCP Server..."
mkdir -p mcp-memory
npx @modelcontextprotocol/server-memory &

# Start browser server
echo "Starting Browser MCP Server..."
npx puppeteer-mcp-server &

# Start GitHub server
echo "Starting GitHub MCP Server..."
npx github-mcp-custom &

# Start PostgreSQL server
echo "Starting PostgreSQL MCP Server..."
npx @henkey/postgres-mcp-server &

# Start Figma server
echo "Starting Figma MCP Server..."
npx claude-talk-to-figma-mcp &

# Start Web Search server
echo "Starting Web Search MCP Server..."
npx tavily-mcp &

# Start Desktop Commander server
echo "Starting Desktop Commander MCP Server..."
npx @wonderwhy-er/desktop-commander &

echo "MCP Servers started in background"
echo "Use 'jobs' to see running servers"
echo "Use 'kill %1 %2 %3 %4 %5 %6 %7 %8' to stop all servers" 