# Lab 3: Iterative Refinement Practice

In this lab, you will master the art of iterative refinement - starting with a basic implementation and progressively improving it through targeted prompts.

## Prerequisites

* Completed Labs 1 and 2
* GitHub Copilot enabled
* Familiarity with the chosen repository

## Setup

Choose a repository that aligns with your primary programming language:
* Python: Flask
* JavaScript: Express or Lodash
* Ruby: Rails

## Tasks

### Task 1: Refactor with Conversation

1. Identify a complex function in your chosen repository (150+ lines)
2. Start with an analysis prompt:
   ```
   Analyze this function and identify areas for improvement in terms of readability, maintainability, and performance.
   ```
3. Iteratively refine based on the suggestions:
   - Extract helper functions
   - Improve naming
   - Add type hints/annotations
   - Simplify conditional logic
   - Reduce nesting depth

4. Document each iteration:
   - What you asked for
   - What Copilot suggested
   - What you actually implemented
   - Why you made that choice

### Task 2: API Design Iteration

1. Start with a basic API endpoint design:
   ```
   Create a REST API endpoint for user registration
   ```
2. Iteratively enhance it:
   - "Add input validation"
   - "Include email verification"
   - "Add rate limiting"
   - "Implement proper error responses"
   - "Add OpenAPI/Swagger documentation"
   - "Include unit tests"

3. At each step, review and refine the previous output before adding new features

### Task 3: Performance Optimization

1. Find or create a function with performance concerns
2. Iterative optimization conversation:
   ```
   This function processes a large list. How can we optimize it?
   ```
3. Follow-up prompts:
   - "Show me a version using list comprehensions"
   - "Can we use generators to reduce memory usage?"
   - "Add caching for repeated calls"
   - "Benchmark the different approaches"

### Task 4: Code Style Evolution

1. Take a working but messy code snippet
2. Evolve it through multiple iterations:
   - Initial: Working code with poor style
   - Iteration 1: Apply PEP 8 (for Python) or the style guide for the relevant
     language
   - Iteration 2: Improve naming
   - Iteration 3: Add documentation
   - Iteration 4: Extract reusable components
   - Iteration 5: Add error handling
   - Final: Production-ready code

### Task 5: Test Coverage Expansion

1. Find a function with minimal or no tests
2. Iteratively build comprehensive test coverage:
   - "Write basic happy path tests"
   - "Add edge case tests"
   - "Include error condition tests"
   - "Add integration tests"
   - "Create test fixtures for common scenarios"

## Refinement Strategies

Document which strategies work best:

* **Breadth-first**: Get overall structure right, then refine details
* **Depth-first**: Perfect one aspect before moving to the next
* **Ping-pong**: Alternate between Copilot suggestions and your modifications
* **Checkpoint**: Periodically save good intermediate states

## Reflection Questions

* How many iterations did it take to reach a satisfactory result?
* What was your criterion for "good enough"?
* When did you stop following Copilot's suggestions?
* How did you balance automation vs. manual refinement?
* What patterns emerged in your refinement process?

## Success Criteria

* Completed at least 3 iterative refinement exercises
* Documented the evolution from initial to final state
* Identified your preferred refinement strategy
* Achieved measurable improvement in code quality (e.g., reduced complexity, better test coverage)
