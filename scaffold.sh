#!/bin/bash
# Intuit Design Prototype Scaffolding
# Usage: ./scaffold.sh my-prototype-name
#
# Prerequisites:
#   - Node.js 18+ (check: node --version)
#   - Git authenticated with github.intuit.com (see below)
#
# GitHub Enterprise Authentication (one-time setup):
#   Option 1 (recommended): gh auth login --hostname github.intuit.com
#   Option 2: Generate a Personal Access Token at github.intuit.com/settings/tokens
#             then: git config --global credential.https://github.intuit.com.helper store
#             and clone once to cache credentials

set -e

PROJECT_NAME=${1:-"design-prototype"}
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
IDS_REPO="https://github.intuit.com/design-systems/ids-web.git"
IDS_DIR="int-design-system"

echo "🎨 Scaffolding Intuit Design Prototype: $PROJECT_NAME"
echo "=================================================="

# -------------------------------------------------------------------
# Step 1: Create project with Vite + React + TypeScript
# -------------------------------------------------------------------
npm create vite@latest "$PROJECT_NAME" -- --template react-ts
cd "$PROJECT_NAME"

echo ""
echo "📁 Creating project structure..."

# Create directories
mkdir -p docs
mkdir -p src/{components,pages,layouts,hooks,mocks/data,lib,styles}
mkdir -p public

# -------------------------------------------------------------------
# Step 2: Copy template files
# -------------------------------------------------------------------
echo "📄 Installing CLAUDE.md and agents.md..."
cp "$SCRIPT_DIR/CLAUDE.md" ./CLAUDE.md
cp "$SCRIPT_DIR/agents.md" ./agents.md
cp "$SCRIPT_DIR/docs/PRD.md" ./docs/PRD.md
cp "$SCRIPT_DIR/docs/design.md" ./docs/design.md

# -------------------------------------------------------------------
# Step 3: Clone IDS Design System (for component reference)
# -------------------------------------------------------------------
echo ""
echo "📚 Cloning Intuit Design System (IDS) for component reference..."
echo "   This requires authentication with github.intuit.com"
echo ""

if git clone --depth 1 "$IDS_REPO" "$IDS_DIR" 2>/dev/null; then
  echo "✅ IDS cloned to $IDS_DIR/"
  # Add IDS clone to gitignore so it's not committed to the prototype repo
  echo "" >> .gitignore
  echo "# IDS design system clone (local reference only, do not commit)" >> .gitignore
  echo "int-design-system/" >> .gitignore
else
  echo ""
  echo "⚠️  Could not clone IDS. This is likely an authentication issue."
  echo ""
  echo "   To fix, run ONE of these and then re-run the scaffold:"
  echo ""
  echo "   Option 1 (recommended):"
  echo "     gh auth login --hostname github.intuit.com"
  echo ""
  echo "   Option 2 (manual):"
  echo "     1. Go to github.intuit.com/settings/tokens"
  echo "     2. Generate a token with 'repo' scope"
  echo "     3. Run: git clone https://YOUR_TOKEN@github.intuit.com/design-systems/ids-web.git int-design-system"
  echo ""
  echo "   You can also clone IDS manually later:"
  echo "     cd $PROJECT_NAME"
  echo "     git clone --depth 1 $IDS_REPO $IDS_DIR"
  echo ""
  echo "   Continuing without IDS clone — the prototype will still work,"
  echo "   but Claude Code won't be able to read component docs locally."
  echo ""
fi

# -------------------------------------------------------------------
# Step 4: Create starter files
# -------------------------------------------------------------------
echo "📝 Creating starter files..."

# Mock data example
cat > src/mocks/data/example.json << 'MOCKEOF'
{
  "users": [
    { "id": "1", "name": "Alice Johnson", "email": "alice@example.com" },
    { "id": "2", "name": "Srinivasaraghavan Subramanian", "email": "srini@example.com" }
  ]
}
MOCKEOF

# Global styles placeholder
cat > src/styles/global.css << 'STYLEEOF'
/* Global styles -- use IDS design tokens */

:root {
  /* Override only if needed for prototype-specific tokens */
}

* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: var(--font-family-component, -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif);
}

/* Accessibility: respect motion preferences */
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.01ms !important;
    transition-duration: 0.01ms !important;
  }
}

/* Skip to content link */
.skip-to-content {
  position: absolute;
  top: -40px;
  left: 0;
  padding: 8px 16px;
  z-index: 100;
}

.skip-to-content:focus {
  top: 0;
}
STYLEEOF

# App.tsx starter
cat > src/App.tsx << 'APPEOF'
import './styles/global.css';

function App() {
  return (
    <main>
      <a href="#main-content" className="skip-to-content">
        Skip to content
      </a>
      <div id="main-content">
        <h1>Prototype</h1>
        <p>Read docs/PRD.md and docs/design.md to get started.</p>
      </div>
    </main>
  );
}

export default App;
APPEOF

# .gitignore additions
cat >> .gitignore << 'GITEOF'

# Design artifacts (keep in repo)
# docs/

# IDE
.idea/
.vscode/
*.swp
*.swo

# OS
.DS_Store
Thumbs.db
GITEOF

# -------------------------------------------------------------------
# Step 5: Install dependencies
# -------------------------------------------------------------------
echo ""
echo "📦 Installing dependencies..."
npm install

# -------------------------------------------------------------------
# Done
# -------------------------------------------------------------------
echo ""
echo "✅ Done! Your prototype is ready."
echo ""
echo "Next steps:"
echo "  cd $PROJECT_NAME"
echo "  1. Fill in docs/PRD.md with your product requirements"
echo "  2. Run: npm run dev"
echo "  3. Open Claude Code and start building from the PRD"
echo ""
echo "Useful commands:"
echo "  npm run dev        → Start dev server"
echo "  npm run build      → Production build"
echo "  npm run lint       → Lint code"
echo ""
echo "To add IDS components:"
echo "  npm install @ids-ts/button @ids-ts/text-field @ids-ts/typography"
echo ""
if [ ! -d "$IDS_DIR" ]; then
  echo "⚠️  Remember to clone IDS when you have GitHub Enterprise access:"
  echo "  git clone --depth 1 $IDS_REPO $IDS_DIR"
  echo ""
fi
