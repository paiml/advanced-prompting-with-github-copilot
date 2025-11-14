# Bonus Exercise 2: Customizing AI Test Generation with PMAT

## Overview

In this bonus exercise, you'll learn how to customize AI-generated test coverage and quality checks using PMAT (Pragmatic AI Labs MCP Agent Toolkit). You'll override default prompts to generate language-specific test goals and customize coverage targets for your specific project needs.

## Learning Objectives

* Understand how to customize AI agent behavior through prompt engineering
* Override default test generation prompts for language-specific requirements
* Create custom quality gates and coverage goals
* Apply advanced prompting techniques to infrastructure-as-code
* Integrate custom prompts into CI/CD pipelines

## Prerequisites

* Completed all Module 3 labs
* Understanding of test-driven development concepts
* Familiarity with at least one programming language (Python, JavaScript, Rust, etc.)
* GitHub Copilot enabled
* PMAT installed (or access to paiml-mcp-agent-toolkit)

## Background: PMAT and Custom Prompting

PMAT (from [paiml-mcp-agent-toolkit](https://github.com/paiml/paiml-mcp-agent-toolkit)) provides AI-powered tools for:

* Automated test generation
* Coverage analysis and reporting
* Code quality validation
* Documentation generation

By default, PMAT uses general-purpose prompts. However, you can customize these prompts to:
* Target specific testing frameworks
* Enforce project-specific patterns
* Generate language-idiomatic tests
* Meet custom coverage requirements

## Exercise Tasks

### Task 1: Understanding Default PMAT Behavior

1. Explore PMAT's default test generation:
   ```bash
   # If you have PMAT installed
   pmat generate-tests --help
   ```

2. Ask Copilot to explain PMAT's approach:
   ```
   Explain how PMAT generates tests by default. What prompts does it use and how can they be customized?
   ```

3. Review the paiml-mcp-agent-toolkit repository structure:
   ```
   Show me how PMAT organizes its prompts and where custom prompts can be added
   ```

### Task 2: Create Language-Specific Test Goals

1. Define custom test goals for Python:
   ```
   Create a custom PMAT prompt that generates Python tests with these requirements:
   - Use pytest framework
   - Include docstrings for each test
   - Add parametrize decorators for edge cases
   - Target 90% coverage minimum
   - Include fixture examples
   - Add property-based tests with hypothesis
   ```

2. Define custom test goals for JavaScript/TypeScript:
   ```
   Create a custom PMAT prompt for TypeScript/Jest tests that:
   - Uses Jest best practices
   - Includes type assertions
   - Mocks external dependencies
   - Tests async/await patterns
   - Achieves 85% coverage
   - Includes integration test examples
   ```

3. Define custom test goals for Rust:
   ```
   Create a custom PMAT prompt for Rust tests that:
   - Uses built-in test framework
   - Includes property tests with quickcheck
   - Tests error handling with Result types
   - Validates unsafe code blocks
   - Achieves 95% coverage including edge cases
   ```

### Task 3: Override PMAT Default Prompts

1. Create a custom prompts directory:
   ```bash
   mkdir -p .pmat/prompts
   ```

2. Ask Copilot to create a custom test generation prompt:
   ```
   Create a PMAT-compatible prompt file for Python test generation that emphasizes:
   - Security testing (injection, XSS, etc.)
   - Performance benchmarks
   - Mutation testing compatibility
   - Contract testing for APIs
   ```

3. Save the prompt to `.pmat/prompts/test-generation-python.md`

### Task 4: Custom Coverage Goals

1. Create a custom coverage configuration:
   ```
   Create a PMAT coverage configuration that:
   - Sets different thresholds per file type
   - Excludes test files and generated code
   - Requires 100% coverage for security-critical modules
   - Allows 70% for UI components
   - Enforces branch coverage
   ```

2. Ask Copilot to generate the configuration file:
   ```
   Generate a .pmat-coverage.toml file with the requirements above
   ```

### Task 5: Framework-Specific Customizations

Choose your primary language and customize for its ecosystem:

#### For Python Projects

```
Create PMAT prompt overrides for Python that:
- Generate pytest fixtures for database connections
- Create mock objects using unittest.mock
- Add doctest examples in docstrings
- Include coverage for __init__.py files
- Test exception handling comprehensively
```

#### For JavaScript/Node.js Projects

```
Create PMAT prompt overrides for JavaScript that:
- Generate tests using Jest and React Testing Library
- Mock API calls with MSW (Mock Service Worker)
- Test hooks and component lifecycle
- Include snapshot tests
- Validate accessibility with jest-axe
```

#### For Rust Projects

```
Create PMAT prompt overrides for Rust that:
- Generate tests for each public API
- Include benchmark tests with criterion
- Test unsafe code with miri
- Validate error propagation
- Include fuzzing test configurations
```

### Task 6: Integration with CI/CD

1. Create a custom PMAT workflow:
   ```
   Create a GitHub Actions workflow that:
   - Uses custom PMAT prompts for test generation
   - Runs tests with the custom coverage goals
   - Generates a report with language-specific metrics
   - Fails if custom thresholds aren't met
   ```

2. Ask Copilot to integrate with existing CI:
   ```
   Modify our existing .github/workflows/ci.yml to include PMAT with custom prompts
   ```

### Task 7: Continuous Improvement Prompts

1. Create a prompt for iterative test improvement:
   ```
   Create a PMAT prompt that analyzes existing tests and suggests improvements:
   - Identify missing edge cases
   - Suggest additional assertions
   - Recommend better test names
   - Identify redundant tests
   - Propose refactoring opportunities
   ```

2. Set up automated test refinement:
   ```
   Create a workflow that periodically runs PMAT to suggest test improvements
   ```

## Advanced Challenges

### Challenge 1: Multi-Language Project

For a project with multiple languages:
```
Create a PMAT configuration that:
- Applies Python-specific prompts to .py files
- Applies Rust-specific prompts to .rs files
- Applies JavaScript-specific prompts to .js/.ts files
- Maintains consistent quality standards across all
- Generates a unified coverage report
```

### Challenge 2: Context-Aware Test Generation

```
Create a PMAT prompt that uses open files as context to:
- Generate integration tests spanning multiple modules
- Create tests that follow patterns from existing test files
- Maintain consistency with team's testing style
- Reference documentation for expected behavior
```

### Challenge 3: Domain-Specific Testing

For a specific domain (e.g., fintech, healthcare):
```
Create PMAT prompts for a financial application that:
- Tests currency calculations with exact decimal precision
- Validates regulatory compliance requirements
- Tests audit trail generation
- Includes security tests for sensitive data
- Validates transaction atomicity
```

### Challenge 4: Performance-Focused Testing

```
Create PMAT prompts that generate:
- Load tests with specific RPS targets
- Memory leak detection tests
- CPU profiling test cases
- Database query optimization tests
- Cache hit ratio validations
```

## Example: Custom PMAT Prompt Template

Create a file `.pmat/prompts/custom-test-gen.md`:

```markdown
# Custom Test Generation Prompt

## Context
You are generating tests for a {LANGUAGE} project using {FRAMEWORK}.

## Requirements
- Coverage target: {COVERAGE_PERCENT}%
- Testing framework: {FRAMEWORK}
- Code style: {STYLE_GUIDE}

## Test Structure
Each test should:
1. Have a descriptive name following {NAMING_CONVENTION}
2. Include setup/teardown as needed
3. Use {ASSERTION_LIBRARY} for assertions
4. Cover happy path and edge cases
5. Test error handling

## Language-Specific Guidelines
{LANGUAGE_SPECIFIC_RULES}

## Quality Standards
- Maximum test function length: {MAX_LINES}
- Minimum assertions per test: {MIN_ASSERTIONS}
- Required coverage types: {COVERAGE_TYPES}

## Output Format
Generate tests that can be directly saved to {TEST_FILE_PATTERN}
```

## Reflection Questions

* How did custom prompts improve test quality compared to defaults?
* What language-specific patterns did you enforce?
* How did coverage goals change with custom prompts?
* What challenges did you encounter with prompt customization?
* How would you maintain custom prompts across a team?
* What patterns emerged for effective test generation prompts?

## Success Criteria

* Created custom PMAT prompts for at least one language
* Defined language-specific test generation goals
* Override default coverage thresholds appropriately
* Integrated custom prompts into a test workflow
* Generated tests meeting custom quality standards
* Documented the customization approach

## Tips for Success

* **Start with Defaults**: Understand default behavior before customizing
* **Iterate Gradually**: Add one customization at a time
* **Validate Output**: Always review AI-generated tests
* **Document Decisions**: Explain why specific thresholds were chosen
* **Team Alignment**: Ensure custom prompts match team standards
* **Version Control**: Track prompt changes like code
* **Test the Tests**: Ensure generated tests actually catch bugs

## Integration with Course Concepts

This exercise combines multiple concepts from the course:

1. **Multi-Turn Prompting** (Module 2): Iterate on prompt design
2. **Context Management** (Module 3): Provide framework documentation
3. **Advanced Prompting** (Module 1): Craft precise, effective prompts
4. **Documentation** (Lab 5): Generate documentation from tests

## Additional Resources

* [PMAT Documentation](https://github.com/paiml/paiml-mcp-agent-toolkit)
* [Effective Test Generation with AI](https://paiml.com)
* Testing framework documentation for your chosen language
* Coverage tools: pytest-cov, nyc, tarpaulin

## Example: Complete Custom Configuration

Here's a complete example for a Python project:

```toml
# .pmat-custom.toml
[test_generation]
language = "python"
framework = "pytest"
coverage_target = 90

[prompts]
test_generation = ".pmat/prompts/python-tests.md"
coverage_analysis = ".pmat/prompts/coverage-review.md"

[quality_gates]
min_coverage = 85
branch_coverage = true
mutation_score = 80

[language_specific.python]
use_fixtures = true
parametrize_edge_cases = true
include_docstrings = true
use_hypothesis = true
```

## Bonus: Share Your Prompts

If you create effective custom prompts:
1. Document your approach and results
2. Share with your team
3. Consider contributing to paiml-mcp-agent-toolkit
4. Write a blog post about language-specific test generation
