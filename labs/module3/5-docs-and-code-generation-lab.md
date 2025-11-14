# Lab 5: Documentation Generation and Code Creation

In this lab, you will learn to generate comprehensive API documentation from existing code and create implementation code from API specifications.

## Prerequisites

* Completed Labs 1-4
* GitHub Copilot enabled
* Understanding of documentation formats (docstrings, JSDoc, Javadoc, etc.)

## Setup

Choose a repository based on your language preference:
* **Python**: Flask or Requests
* **JavaScript**: Express or Axios

## Tasks

### Task 1: Generate API Documentation from Code

1. Find a well-implemented but poorly documented module
2. Open the module file
3. For each function/method, ask Copilot:
   ```
   Generate comprehensive documentation for this function including parameters, return values, exceptions, and usage examples
   ```

4. Ensure the documentation includes:
   - Purpose and behavior description
   - Parameter descriptions with types
   - Return value description
   - Possible exceptions/errors
   - Usage examples
   - Notes about edge cases

5. Compare with different prompt variations:
   - "Add docstring"
   - "Document this function"
   - "Add comprehensive API documentation with examples"

### Task 2: Create README Documentation

1. Select a module or package without a README
2. With the main files open, ask:
   ```
   Create a comprehensive README.md for this module including installation, usage examples, and API reference
   ```

3. Iterate to add:
   - Quick start guide
   - Configuration options
   - Common use cases
   - Troubleshooting section
   - Contributing guidelines

### Task 3: Generate Code from OpenAPI/Swagger Spec

1. Find or create an OpenAPI specification file
2. Open the spec file
3. For example, for OpenAPI you could ask Copilot:
   ```
   Implement the API endpoints defined in this OpenAPI specification
   ```
   Alternatively, you can ask for an example usage using OpenAPI.

4. Verify the implementation includes:
   - All defined endpoints
   - Correct HTTP methods
   - Request validation
   - Response formatting
   - Error handling

### Task 4: Implement from Documentation

1. Write detailed documentation for a feature that doesn't exist yet:
   ```python
   """
   User authentication service with JWT tokens.

   This service provides methods for user registration, login,
   token generation, and token validation.

   Example:
       auth = AuthService()
       token = auth.login(username="user", password="pass")
       user = auth.validate_token(token)
   """
   ```

2. Ask Copilot to implement the class based on the documentation
3. Refine implementation based on the doc's promises

### Task 5: Type Definitions to Implementation

1. **TypeScript/JavaScript**: Create comprehensive type definitions
   ```typescript
   interface UserService {
     getUser(id: string): Promise<User>;
     createUser(data: CreateUserDTO): Promise<User>;
     updateUser(id: string, data: UpdateUserDTO): Promise<User>;
     deleteUser(id: string): Promise<void>;
   }
   ```

2. **Python**: Create Protocol or ABC
   ```python
   from typing import Protocol

   class UserRepository(Protocol):
       def get_user(self, user_id: int) -> User: ...
       def create_user(self, user_data: dict) -> User: ...
       def update_user(self, user_id: int, data: dict) -> User: ...
       def delete_user(self, user_id: int) -> None: ...
   ```

3. Ask Copilot to implement the interface

### Task 6: Inline Documentation to Tests

1. Open a well-documented function with usage examples in docstrings
2. Ask Copilot:
   ```
   Generate unit tests based on the examples in the documentation
   ```

3. Verify tests cover:
   - All documented examples
   - Edge cases mentioned
   - Error conditions described

### Task 7: Migration Guide Generation

1. Open two versions of an API (old and new)
2. Ask Copilot:
   ```
   Create a migration guide from the old API to the new API with code examples
   ```

3. Ensure it includes:
   - Breaking changes
   - Side-by-side comparisons
   - Migration steps
   - Code examples for each change

## Documentation Patterns

Experiment with different documentation styles:

### Minimal Documentation
```python
def process(data):
    """Process data."""
    pass
```

### Standard Documentation
```python
def process(data: List[dict]) -> dict:
    """
    Process a list of data items.

    Args:
        data: List of dictionaries to process

    Returns:
        Processed results as a dictionary
    """
    pass
```

### Comprehensive Documentation
```python
def process(data: List[dict], options: Optional[dict] = None) -> dict:
    """
    Process a list of data items with optional configuration.

    This function takes raw data items and applies a series of
    transformations based on the provided options.

    Args:
        data: List of dictionaries to process. Each dictionary must
              contain 'id' and 'value' keys.
        options: Optional configuration dictionary with keys:
                - 'filter' (bool): Whether to filter invalid items
                - 'sort' (str): Sort key ('id' or 'value')

    Returns:
        Dictionary with processed results containing:
        - 'items': List of processed items
        - 'count': Number of items processed
        - 'errors': List of any errors encountered

    Raises:
        ValueError: If data is empty or invalid
        TypeError: If data items are not dictionaries

    Example:
        >>> data = [{'id': 1, 'value': 'test'}]
        >>> result = process(data, {'filter': True})
        >>> print(result['count'])
        1
    """
    pass
```

Test which style prompts better implementation from Copilot.

## Reflection Questions

* How detailed should documentation be for Copilot to generate good code?
* Did Copilot accurately implement all documented features?
* What documentation style produced the best code generation?
* How did usage examples in docs affect implementation quality?
* Can you rely on Copilot-generated documentation for production?

## Success Criteria

* Generated comprehensive documentation for at least 5 functions
* Created code from at least 3 different documentation sources
* Produced a complete README from code analysis
* Successfully implemented an API from OpenAPI spec
* Identified best practices for bidirectional doc-code generation
