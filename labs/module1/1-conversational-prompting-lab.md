# Lab 1: Getting Started with Conversational Prompting

In this lab, you will transition from using GitHub Copilot for basic autocomplete to engaging in conversational interactions. You'll explore the different modes and input methods available in GitHub Copilot.

## Prerequisites

* GitHub Copilot enabled in your IDE
* Visual Studio Code or JetBrains IDE installed
* Git installed and configured

## Setup

1. Clone one of the recommended repositories (we suggest Flask for Python developers):
   ```bash
   git clone https://github.com/pallets/flask
   cd flask
   ```

2. Open the repository in VS Code or your preferred IDE
3. Ensure GitHub Copilot is active (check the status bar)

## Tasks

### Task 1: Explore Inline Suggestions

1. Open a Python file in the Flask repository (e.g., `src/flask/app.py`)
2. Navigate to an empty line within a function
3. Start typing a comment describing what you want to do
4. Observe the inline suggestions from Copilot
5. Accept or reject suggestions using Tab or Esc

### Task 2: Use Copilot Chat

1. Open Copilot Chat (VS Code: Ctrl+Shift+I or Cmd+Shift+I)
2. Ask a question about the codebase:
   ```
   How does Flask handle routing?
   ```
3. Review the response and ask a follow-up question
4. Practice refining your question based on the response

### Task 3: Conversational Code Generation

1. In the chat, request code generation:
   ```
   Create a new example project using Flask that has a route that accepts a POST request with JSON data and returns a success message
   ```
2. Review the generated code
3. Ask Copilot to:
   - Add error handling
   - Include input validation
   - Add documentation

### Task 4: Compare Modes

1. Try the same task using inline comments vs. chat
2. Document the differences in:
   - Response quality
   - Iteration speed
   - Context understanding

## Reflection Questions

* When is inline mode more effective than chat mode?
* How does providing more context in your prompt affect the output?
* What strategies can you use to get better responses from Copilot?

## Success Criteria

* Successfully generated code using both inline and chat modes
* Engaged in at least one multi-turn conversation with Copilot
* Understood the differences between various Copilot modes
