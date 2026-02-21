setup:
    uv sync
    lefthook install
    @echo "Ready to go!"

lint:
    uv run ruff check .

format:
    uv run ruff format .

typecheck:
    uv run pyright

test:
    uv run pytest

check: lint typecheck test

fix:
    uv run ruff check --fix . && uv run ruff format .
