# Nexus Backend

A robust Django backend with GraphQL API and PostgreSQL database.

## Project Structure

```
backend/
├── venv/                 # Virtual environment
├── core/                 # Django project settings
│   ├── settings.py      # Main settings
│   ├── urls.py          # URL configuration
│   └── wsgi.py          # WSGI configuration
├── api/                  # API app
│   ├── schema.py        # GraphQL schema
│   ├── models.py        # Django models
│   └── views.py         # API views
├── manage.py            # Django management script
├── requirements.txt     # Python dependencies
├── env.example          # Environment variables example
└── README.md           # This file
```

## Setup

1. **Activate virtual environment:**
   ```bash
   source venv/bin/activate
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Set up environment variables:**
   ```bash
   cp env.example .env
   # Edit .env with your configuration
   ```

4. **Set up PostgreSQL:**
   - Database: `nexus_db`
   - User: `nexus_user`
   - Password: `nexus_password`
   - Host: `localhost:5432`

5. **Run migrations:**
   ```bash
   python manage.py makemigrations
   python manage.py migrate
   ```

6. **Create superuser:**
   ```bash
   python manage.py createsuperuser
   ```

7. **Run development server:**
   ```bash
   python manage.py runserver
   ```

## API Endpoints

- **Admin Interface:** http://localhost:8000/admin/
- **GraphQL Interface:** http://localhost:8000/graphql/

## GraphQL Examples

### Query all users:
```graphql
query {
  users {
    id
    username
    email
    firstName
    lastName
  }
}
```

### Query specific user:
```graphql
query {
  user(id: "1") {
    id
    username
    email
    firstName
    lastName
  }
}
```

### Create user:
```graphql
mutation {
  createUser(
    username: "testuser"
    email: "test@example.com"
    password: "password123"
  ) {
    user {
      id
      username
      email
    }
  }
}
```

## Development

- **Virtual Environment:** Always activate `venv` before development
- **Environment Variables:** Use `.env` file for configuration
- **Database:** PostgreSQL with proper user permissions
- **GraphQL:** Interactive interface available at `/graphql/`

## MCP Servers

This project includes free and open-source MCP servers for enhanced Claude LLM integration:

### **Installed MCP Servers:**

1. **Filesystem MCP** (`@modelcontextprotocol/server-filesystem`)
   - ✅ **Free & Open Source**
   - **Purpose:** File operations, code reading/writing
   - **Use:** File management, code editing

2. **Memory MCP** (`@modelcontextprotocol/server-memory`)
   - ✅ **Free & Open Source**
   - **Purpose:** Persistent memory and knowledge graph
   - **Use:** Remember conversations, build context

3. **Browser MCP** (`puppeteer-mcp-server`)
   - ✅ **Free & Open Source**
   - **Purpose:** Web automation and browser control
   - **Use:** Web testing, scraping, automation

4. **GitHub MCP** (`github-mcp-custom`)
   - ✅ **Free & Open Source**
   - **Purpose:** GitHub repository management
   - **Use:** Repository operations, issues, PRs

5. **PostgreSQL MCP** (`@henkey/postgres-mcp-server`)
   - ✅ **Free & Open Source**
   - **Purpose:** Comprehensive PostgreSQL management
   - **Use:** Database operations, schema management

6. **Figma MCP** (`claude-talk-to-figma-mcp`)
   - ✅ **Free & Open Source**
   - **Purpose:** Figma design integration
   - **Use:** Design tokens, components, assets

7. **Web Search MCP** (`tavily-mcp`)
   - ✅ **Free & Open Source**
   - **Purpose:** Advanced web search and research
   - **Use:** Documentation, troubleshooting, research

8. **Desktop Commander MCP** (`@wonderwhy-er/desktop-commander`)
   - ✅ **Free & Open Source**
   - **Purpose:** Terminal operations and file editing
   - **Use:** Code editing, file management, terminal commands

### **Starting MCP Servers:**
```bash
./start-mcp.sh
```

### **Manual Start:**
```bash
# Filesystem server
npx @modelcontextprotocol/server-filesystem &

# Memory server
mkdir -p mcp-memory
npx @modelcontextprotocol/server-memory &

# Browser server
npx puppeteer-mcp-server &

# GitHub server
npx github-mcp-custom &

# PostgreSQL server
npx @henkey/postgres-mcp-server &

# Figma server
npx claude-talk-to-figma-mcp &

# Web Search server
npx tavily-mcp &

# Desktop Commander server
npx @wonderwhy-er/desktop-commander &

## Production

- Set `DEBUG=False` in environment variables
- Use strong `SECRET_KEY`
- Configure proper `ALLOWED_HOSTS`
- Use environment-specific database settings 