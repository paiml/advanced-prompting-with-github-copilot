use clap::Parser;
use std::process;

/// A simple greeter CLI application
#[derive(Parser, Debug)]
#[command(name = "greeter")]
#[command(about = "A simple greeter CLI application", long_about = None)]
struct Args {
    /// Name of the person to greet
    #[arg(long, required = true)]
    name: String,

    /// Convert greeting to uppercase
    #[arg(long, default_value_t = false)]
    uppercase: bool,

    /// Enable verbose output
    #[arg(long, default_value_t = false)]
    verbose: bool,
}

/// Generate a greeting message
fn greet(name: &str, uppercase: bool, verbose: bool) -> String {
    let greeting = if verbose {
        format!("Hello, {}! Welcome to the greeter application.", name)
    } else {
        format!("Hello, {}!", name)
    };

    if uppercase {
        greeting.to_uppercase()
    } else {
        greeting
    }
}

fn main() {
    let args = Args::parse();

    let message = greet(&args.name, args.uppercase, args.verbose);
    println!("{}", message);

    process::exit(0);
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_basic_greeting() {
        let result = greet("Alice", false, false);
        assert_eq!(result, "Hello, Alice!");
    }

    #[test]
    fn test_uppercase_greeting() {
        let result = greet("Alice", true, false);
        assert_eq!(result, "HELLO, ALICE!");
    }

    #[test]
    fn test_verbose_greeting() {
        let result = greet("Alice", false, true);
        assert_eq!(result, "Hello, Alice! Welcome to the greeter application.");
    }

    #[test]
    fn test_uppercase_and_verbose() {
        let result = greet("Alice", true, true);
        assert_eq!(result, "HELLO, ALICE! WELCOME TO THE GREETER APPLICATION.");
    }

    #[test]
    fn test_name_with_spaces() {
        let result = greet("Alice Smith", false, false);
        assert_eq!(result, "Hello, Alice Smith!");
    }
}
