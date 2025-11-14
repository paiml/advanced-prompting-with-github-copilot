"""
Tests for the greeter CLI application.
"""
import pytest
from greeter import greet, create_parser


class TestGreet:
    """Test the greet function."""

    def test_basic_greeting(self):
        """Test basic greeting without flags."""
        result = greet("Alice")
        assert result == "Hello, Alice!"

    def test_uppercase_greeting(self):
        """Test greeting with uppercase flag."""
        result = greet("Alice", uppercase=True)
        assert result == "HELLO, ALICE!"

    def test_verbose_greeting(self):
        """Test greeting with verbose flag."""
        result = greet("Alice", verbose=True)
        assert result == "Hello, Alice! Welcome to the greeter application."

    def test_uppercase_and_verbose(self):
        """Test greeting with both flags."""
        result = greet("Alice", uppercase=True, verbose=True)
        assert result == "HELLO, ALICE! WELCOME TO THE GREETER APPLICATION."

    def test_name_with_spaces(self):
        """Test greeting with name containing spaces."""
        result = greet("Alice Smith")
        assert result == "Hello, Alice Smith!"


class TestParser:
    """Test the argument parser."""

    def test_parser_creation(self):
        """Test that parser is created successfully."""
        parser = create_parser()
        assert parser is not None

    def test_required_name_argument(self):
        """Test that name argument is required."""
        parser = create_parser()
        with pytest.raises(SystemExit):
            parser.parse_args([])

    def test_parse_name_only(self):
        """Test parsing with only name argument."""
        parser = create_parser()
        args = parser.parse_args(['--name', 'Alice'])
        assert args.name == 'Alice'
        assert args.uppercase is False
        assert args.verbose is False

    def test_parse_all_arguments(self):
        """Test parsing with all arguments."""
        parser = create_parser()
        args = parser.parse_args(['--name', 'Alice', '--uppercase', '--verbose'])
        assert args.name == 'Alice'
        assert args.uppercase is True
        assert args.verbose is True
