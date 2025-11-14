#!/usr/bin/env bash
#
# I/O Equivalence Test
# Tests that Python and Rust versions produce identical output
#

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
PYTHON_SCRIPT="$PROJECT_DIR/python/greeter.py"
RUST_BINARY="$PROJECT_DIR/rust/target/release/greeter"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Test counter
TESTS_RUN=0
TESTS_PASSED=0
TESTS_FAILED=0

# Function to run a test case
run_test() {
    local test_name="$1"
    shift
    local test_args=("$@")

    TESTS_RUN=$((TESTS_RUN + 1))

    echo -e "\n${YELLOW}Test ${TESTS_RUN}: ${test_name}${NC}"
    echo "Arguments: ${test_args[*]}"

    # Run Python version
    PYTHON_OUTPUT=$(python3 "$PYTHON_SCRIPT" "${test_args[@]}" 2>&1 || true)

    # Run Rust version
    RUST_OUTPUT=$("$RUST_BINARY" "${test_args[@]}" 2>&1 || true)

    # Compare outputs
    if [ "$PYTHON_OUTPUT" == "$RUST_OUTPUT" ]; then
        echo -e "${GREEN}✓ PASS${NC}"
        echo "  Output: $PYTHON_OUTPUT"
        TESTS_PASSED=$((TESTS_PASSED + 1))
        return 0
    else
        echo -e "${RED}✗ FAIL${NC}"
        echo "  Python output: $PYTHON_OUTPUT"
        echo "  Rust output:   $RUST_OUTPUT"
        TESTS_FAILED=$((TESTS_FAILED + 1))
        return 1
    fi
}

# Check if binaries exist
if [ ! -f "$PYTHON_SCRIPT" ]; then
    echo -e "${RED}Error: Python script not found at $PYTHON_SCRIPT${NC}"
    exit 1
fi

if [ ! -f "$RUST_BINARY" ]; then
    echo -e "${YELLOW}Rust binary not found. Building...${NC}"
    cd "$PROJECT_DIR/rust"
    cargo build --release
    cd "$SCRIPT_DIR"
fi

echo "========================================"
echo "  I/O Equivalence Test Suite"
echo "========================================"
echo "Python: $PYTHON_SCRIPT"
echo "Rust:   $RUST_BINARY"
echo "========================================"

# Run test cases
run_test "Basic greeting" --name Alice
run_test "Uppercase flag" --name Alice --uppercase
run_test "Verbose flag" --name Alice --verbose
run_test "Both flags" --name Alice --uppercase --verbose
run_test "Name with spaces" --name "Alice Smith"
run_test "Complex name" --name "Dr. Alice B. Smith"

# Summary
echo ""
echo "========================================"
echo "  Test Summary"
echo "========================================"
echo "Tests run:    $TESTS_RUN"
echo -e "Tests passed: ${GREEN}$TESTS_PASSED${NC}"
if [ $TESTS_FAILED -gt 0 ]; then
    echo -e "Tests failed: ${RED}$TESTS_FAILED${NC}"
    echo ""
    echo -e "${RED}Some tests failed!${NC}"
    exit 1
else
    echo "Tests failed: 0"
    echo ""
    echo -e "${GREEN}All tests passed! Python and Rust versions are I/O equivalent.${NC}"
    exit 0
fi
