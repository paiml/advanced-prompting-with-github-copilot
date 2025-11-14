.PHONY: help install install-dev install-rust lint lint-makefile test-fast test coverage clean example-build example-test example-clean validate

help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install all dependencies (Node.js, Python, Rust)
	@echo "Installing all dependencies..."
	@$(MAKE) install-dev
	@$(MAKE) install-rust
	@echo "✅ All dependencies installed successfully!"

install-dev: ## Install development dependencies (markdown linting, pytest)
	@echo "Installing Node.js dependencies..."
	@command -v npm >/dev/null 2>&1 || (echo "❌ npm not found. Please install Node.js first." && exit 1)
	npm install -g markdownlint-cli2
	@echo "Installing Python dependencies..."
	@command -v python3 >/dev/null 2>&1 || (echo "❌ python3 not found. Please install Python first." && exit 1)
	pip install pytest pre-commit
	@echo "Installing pre-commit hooks..."
	pre-commit install
	@echo "✅ Development dependencies installed!"

install-rust: ## Install Rust and cargo (if not already installed)
	@echo "Checking Rust installation..."
	@if command -v rustc >/dev/null 2>&1; then \
		echo "✅ Rust is already installed (version: $$(rustc --version))"; \
	else \
		echo "❌ Rust not found. Please install from https://rustup.rs"; \
		exit 1; \
	fi

lint-makefile: ## Lint the Makefile with bashrs
	@echo "Linting Makefile with bashrs..."
	@if bashrs lint Makefile 2>&1 | grep -E "^Summary:.*[1-9][0-9]* error" > /dev/null; then \
		echo "❌ Makefile has errors!"; \
		exit 1; \
	else \
		echo "✅ Makefile passed linting (warnings are acceptable)!"; \
	fi

lint: lint-makefile ## Run all linting (Makefile + markdown)
	@echo "Running markdown linting..."
	@markdownlint-cli2 "**/*.md" "#node_modules"
	@echo "✅ All linting passed!"

test-fast: lint ## Run fast tests (lint only)
	@echo "✅ Fast tests complete!"

test: test-fast example-test ## Run all tests (lint + examples)
	@echo "✅ All tests passed!"

coverage: test ## Run tests with coverage
	@echo "Generating coverage report..."
	@cd examples/python-to-rust-cli/python && python3 -m pytest test_greeter.py --cov=greeter --cov-report=term
	@echo "✅ Coverage report generated!"

clean: example-clean ## Clean up temporary files
	@echo "Cleaning up temporary files..."
	@find . -type f -name "*.tmp" -delete
	@find . -type f -name "*.log" -delete
	@find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name .pytest_cache -exec rm -rf {} + 2>/dev/null || true
	@echo "✅ Cleanup complete!"

example-build: ## Build the Python-to-Rust example
	@echo "Building Rust example..."
	@cd examples/python-to-rust-cli/rust && cargo build --release
	@echo "✅ Rust example built successfully!"

example-test: example-build ## Run Python and Rust tests for the example
	@echo "Running Python tests..."
	@cd examples/python-to-rust-cli/python && python3 -m pytest test_greeter.py -v
	@echo "Running Rust tests..."
	@cd examples/python-to-rust-cli/rust && cargo test --quiet
	@echo "Running I/O equivalence tests..."
	@cd examples/python-to-rust-cli/tests && bash equivalence_test.sh
	@echo "✅ All example tests passed!"

example-clean: ## Clean example build artifacts
	@echo "Cleaning example artifacts..."
	@cd examples/python-to-rust-cli/rust && cargo clean
	@find examples/python-to-rust-cli/python -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	@find examples/python-to-rust-cli/python -type d -name .pytest_cache -exec rm -rf {} + 2>/dev/null || true
	@echo "✅ Example cleanup complete!"

validate: ## Validate repository structure and documentation
	@echo "Validating repository structure..."
	@test -f README.md || (echo "❌ ERROR: README.md not found" && exit 1)
	@test -f CLAUDE.md || (echo "❌ ERROR: CLAUDE.md not found" && exit 1)
	@test -f Makefile || (echo "❌ ERROR: Makefile not found" && exit 1)
	@test -d labs/module1 || (echo "❌ ERROR: labs/module1 not found" && exit 1)
	@test -d labs/module2 || (echo "❌ ERROR: labs/module2 not found" && exit 1)
	@test -d labs/module3 || (echo "❌ ERROR: labs/module3 not found" && exit 1)
	@test -d labs/bonus || (echo "❌ ERROR: labs/bonus not found" && exit 1)
	@test -d examples/python-to-rust-cli || (echo "❌ ERROR: examples/python-to-rust-cli not found" && exit 1)
	@echo "✅ Repository structure is valid!"
	@echo "Running test suite..."
	@$(MAKE) test

.DEFAULT_GOAL := help
