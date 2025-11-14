# Python to Rust CLI Conversion Example

This example demonstrates AI-assisted conversion of a Python argparse CLI to Rust using the clap crate. It showcases the concepts taught in Bonus Exercise 1.

## Overview

This is a simple "greeter" CLI that accepts a name and optional flags to customize the output. Both the Python and Rust versions produce identical output, demonstrating I/O equivalence.

## Features

* Required `--name` argument
* Optional `--uppercase` flag to convert output to uppercase
* Optional `--verbose` flag for detailed output
* Exit codes: 0 for success, 1 for errors

## Structure

```
python-to-rust-cli/
├── python/
│   ├── greeter.py          # Python implementation
│   └── test_greeter.py     # Python tests
├── rust/
│   ├── Cargo.toml          # Rust dependencies
│   └── src/
│       └── main.rs         # Rust implementation
├── tests/
│   └── equivalence_test.sh # I/O equivalence tests
└── README.md               # This file
```

## Running the Examples

### Python Version

```bash
# Run with name
python3 examples/python-to-rust-cli/python/greeter.py --name Alice

# With uppercase flag
python3 examples/python-to-rust-cli/python/greeter.py --name Alice --uppercase

# With verbose flag
python3 examples/python-to-rust-cli/python/greeter.py --name Alice --verbose

# Run Python tests
python3 -m pytest examples/python-to-rust-cli/python/test_greeter.py -v
```

### Rust Version

```bash
# Build the Rust version
cd examples/python-to-rust-cli/rust
cargo build --release

# Run with name
./target/release/greeter --name Alice

# With uppercase flag
./target/release/greeter --name Alice --uppercase

# With verbose flag
./target/release/greeter --name Alice --verbose

# Run Rust tests
cargo test
```

## Equivalence Testing

Run the equivalence test to verify both versions produce identical output:

```bash
cd examples/python-to-rust-cli
./tests/equivalence_test.sh
```

This script runs both Python and Rust versions with identical inputs and compares outputs.

## Using the Makefile

From the repository root:

```bash
# Build Rust example
make example-build

# Run equivalence tests
make example-test

# Clean build artifacts
make example-clean
```

## Performance Comparison

While both versions are functionally equivalent, the Rust version typically shows:
* Faster startup time (~10-50x)
* Lower memory usage (~50-70%)
* Better performance for repeated invocations

## Conversion Process

This example was created using GitHub Copilot following the patterns from:
* [reprorusted-python-cli](https://github.com/paiml/reprorusted-python-cli)
* Bonus Exercise 1: Python to Rust CLI Conversion

See the bonus lab for step-by-step conversion instructions.

## Learning Points

1. **Argument Parsing**: Python's `argparse` maps to Rust's `clap` derive macros
2. **Error Handling**: Python exceptions → Rust Result types
3. **Exit Codes**: Both languages support proper exit code handling
4. **Testing**: pytest in Python, built-in testing in Rust
5. **I/O Equivalence**: Validated through automated testing
