# .envの作成
if [ ! -f .devcontainer/.env ]; then
    cp .devcontainer/.env.example .devcontainer/.env
fi

# .claudeディレクトリの作成
if [ ! -d .ignore-me/.claude ]; then
    mkdir -p .ignore-me/.claude
fi

# .claude.jsonの作成
if [ ! -f .ignore-me/.claude.json ]; then
    echo '{}' > .ignore-me/.claude.json
fi
