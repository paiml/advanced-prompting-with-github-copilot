#!/usr/bin/env python3
"""
A simple CLI greeter that demonstrates argparse usage.
This is the Python version that will be converted to Rust.
"""
import argparse
import sys


def create_parser():
    """Create and configure the argument parser."""
    parser = argparse.ArgumentParser(
        description='A simple greeter CLI application'
    )
    parser.add_argument(
        '--name',
        required=True,
        help='Name of the person to greet'
    )
    parser.add_argument(
        '--uppercase',
        action='store_true',
        help='Convert greeting to uppercase'
    )
    parser.add_argument(
        '--verbose',
        action='store_true',
        help='Enable verbose output'
    )
    return parser


def greet(name, uppercase=False, verbose=False):
    """
    Generate a greeting message.

    Args:
        name: Name of the person to greet
        uppercase: Whether to convert to uppercase
        verbose: Whether to include verbose information

    Returns:
        The greeting message as a string
    """
    if verbose:
        greeting = f"Hello, {name}! Welcome to the greeter application."
    else:
        greeting = f"Hello, {name}!"

    if uppercase:
        greeting = greeting.upper()

    return greeting


def main():
    """Main entry point for the CLI."""
    parser = create_parser()

    try:
        args = parser.parse_args()
    except SystemExit as e:
        # argparse calls sys.exit on error
        return e.code if e.code is not None else 1

    try:
        message = greet(args.name, args.uppercase, args.verbose)
        print(message)
        return 0
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        return 1


if __name__ == '__main__':
    sys.exit(main())
