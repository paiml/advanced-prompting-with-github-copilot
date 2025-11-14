# Lab 2: Mastering Multi-Turn Interactions

In this lab, you will learn to engage in effective multi-turn conversations with GitHub Copilot, building on previous responses to refine and improve your code.

## Prerequisites

* Completed Lab 1
* GitHub Copilot enabled
* A cloned repository (Flask, Jinja, or another recommended repo)

## Setup

If you haven't already, clone a repository to work with:
```bash
git clone https://github.com/pallets/jinja
cd jinja
```

Open the repository in your IDE with Copilot enabled.

## Tasks

### Task 1: Build a Feature Incrementally

1. Start a new chat session with Copilot
2. Initial prompt:
   ```
   I want to create a custom Jinja2 filter that formats dates. Start with a basic implementation.
   ```
3. Review the initial response
4. Follow up with refinements:
   - "Add support for different date formats"
   - "Include timezone handling"
   - "Add error handling for invalid dates"
   - "Write unit tests for this filter"

### Task 2: Refactor Existing Code

1. Find a function in the codebase
2. Start a conversation:
   ```
   Let's refactor the [function_name] function to improve readability
   ```
3. Continue the conversation:
   - Ask for specific improvements (naming, structure, documentation)
   - Request performance optimizations
   - Ask for alternative implementations
   - Compare the approaches

### Task 3: Debugging Through Conversation

1. Introduce a bug in a simple code snippet or find an issue
2. Describe the problem to Copilot:
   ```
   This code is throwing an error: [paste error message]. Help me debug it.
   ```
3. Engage in back-and-forth:
   - Ask for explanation of the error
   - Request step-by-step debugging approach
   - Implement suggested fixes
   - Verify the solution

### Task 4: Progressive Enhancement

1. Create a basic HTTP client function using the Requests library
2. Through multiple turns, enhance it with:
   - Retry logic
   - Timeout handling
   - Custom headers
   - Response validation
   - Logging
   - Type hints

Document each step and how the conversation evolved.

## Best Practices Discovered

Document your findings:
* What makes a good follow-up prompt?
* How do you maintain context across turns?
* When should you start a new conversation vs. continuing?

## Reflection Questions

* How many turns did it take to achieve your desired result?
* Did Copilot maintain context throughout the conversation?
* What happened when the conversation got too long?
* How did you know when to be more specific vs. more general?

## Success Criteria

* Completed at least 3 multi-turn conversations with 5+ exchanges each
* Successfully built a feature incrementally through conversation
* Documented the evolution of prompts and responses
* Identified patterns for effective follow-up prompts
