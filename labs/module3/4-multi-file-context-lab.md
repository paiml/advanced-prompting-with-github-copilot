# Lab 4: Multi-File Context Management

In this lab, you will learn to leverage multiple files to provide rich context to GitHub Copilot, enabling more accurate and relevant code suggestions.

## Prerequisites

* Completed Labs 1-3
* GitHub Copilot enabled
* Understanding of your chosen codebase structure

## Setup

Choose a repository with clear multi-file architecture:
* **Python**: Flask (routing, models, views separate)
* **JavaScript**: Express (routes, controllers, middleware separate)
* **Python**: Django (models, views, serializers separate)

## Tasks

### Task 1: Strategic File Opening

1. Identify a feature that spans multiple files (e.g., user authentication)
2. Open related files in this order:
   - Models/Schema definitions
   - Business logic/Services
   - API routes/Controllers
   - Tests

3. With all files open, ask Copilot:
   ```
   Create a new endpoint for password reset that follows the patterns in the open files
   ```

4. Compare this with closing all files and asking the same question

5. Document the differences in:
   - Accuracy
   - Consistency with existing code
   - Proper imports
   - Following established patterns

### Task 2: Cross-File Refactoring

1. Open these related files:
   - A model/entity file
   - A file that uses this model
   - A test file for the model

2. Request a refactoring:
   ```
   Refactor the User model to add email verification. Update all related code.
   ```

3. Observe how Copilot suggests changes across files

4. Incrementally:
   - Update the model
   - Update the business logic
   - Update the tests
   - Update the API endpoints

### Task 3: Implementing from Interface

1. Open an interface/abstract class file
2. Open files with similar implementations
3. Create a new file and ask:
   ```
   Implement the [InterfaceName] interface following the patterns in the open files
   ```

4. Notice how Copilot uses:
   - Method signatures from the interface
   - Implementation patterns from other files
   - Naming conventions
   - Error handling approaches

### Task 4: Context Window Optimization

1. Experiment with different combinations of open files
2. For a given task, determine the optimal set of files to open:
   - Too few files: Missing context
   - Too many files: Diluted context
   - Just right: Relevant context

3. Create a "context strategy" guide:
   - What types of files to include
   - How many files to keep open
   - When to close files
   - How to organize tabs/editors

### Task 5: Dependency Chain Awareness

1. Open a file that imports from several modules
2. Open the imported modules
3. Ask Copilot to create a function that uses these dependencies:
   ```
   Create a service function that uses [Dependency1] and [Dependency2] following the patterns I've established
   ```

4. Verify Copilot correctly:
   - Imports the dependencies
   - Uses them correctly
   - Follows the established patterns
   - Handles errors appropriately

### Task 6: Test-Driven Development with Context

1. Open:
   - A test file with existing tests
   - The implementation file being tested
   - Related model/schema files

2. Write a new test:
   ```
   def test_user_can_update_profile():
       # Let Copilot suggest the test implementation
   ```

3. Then implement the feature with the test file still open
4. Observe how Copilot uses the test to guide implementation

## Context Management Strategies

Document your findings:

### The 3-File Rule
* Primary file: Where you're working
* Reference file: Patterns to follow
* Contract file: Interfaces/types to implement

### The Layer Approach
* Open files from the same architectural layer
* Close files from other layers unless needed

### The Feature Set
* Open all files related to a specific feature
* Close unrelated features

## Reflection Questions

* How many files could you effectively keep open before context became diluted?
* What order of opening files worked best?
* How did Copilot's suggestions change with different file combinations?
* When did you notice Copilot pulling from specific open files?
* How can you tell which files Copilot is using for context?

## Success Criteria

* Successfully used multi-file context for at least 5 different tasks
* Identified optimal file combinations for different types of work
* Documented a context management strategy
* Achieved better code consistency across files
* Reduced need for manual adjustments to generated code
