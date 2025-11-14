# Lab 6: Exploring Unknown Codebases

In this lab, you will learn to efficiently navigate and understand unfamiliar codebases using GitHub Copilot as your guide.

## Prerequisites

* Completed Labs 1-5
* GitHub Copilot enabled
* Comfort with asking questions and exploring code

## Setup

For this lab, choose a repository you've **never worked with before**:

* **Web Frameworks**: Django, Ruby on Rails, Laravel
* **Libraries**: Lodash, Pandas, NumPy
* **Tools**: Click, Commander.js, Cobra
* **Full Applications**: Discourse, GitLab, Mastodon

Clone the repository:
```bash
git clone [repository-url]
cd [repository-name]
```

## Tasks

### Task 1: Initial Reconnaissance

1. Open the repository root in your IDE
2. Start with high-level questions:
   ```
   What is the primary purpose of this codebase?
   ```
   ```
   What is the overall architecture of this project?
   ```
   ```
   What are the main components or modules?
   ```

3. Document the answers and verify against README/docs

### Task 2: Navigate the Entry Point

1. Ask Copilot:
   ```
   Where is the main entry point of this application?
   ```

2. Open the entry point file
3. Follow up with:
   ```
   Explain the initialization sequence step by step
   ```
   ```
   What dependencies are initialized at startup?
   ```

### Task 3: Trace a Feature

1. Identify a user-facing feature (e.g., user registration, file upload)
2. Ask Copilot:
   ```
   How does the [feature] functionality work in this codebase? Show me the flow from API to database.
   ```

3. Follow the trail:
   - Ask about each layer (controller → service → repository)
   - Open files as Copilot mentions them
   - Build a mental map of the feature flow

4. Create a diagram or flowchart of the feature

### Task 4: Understand Configuration

1. Locate configuration files
2. Ask about each configuration section:
   ```
   What does this configuration option control?
   ```
   ```
   What happens if I change this setting?
   ```
   ```
   What are the valid values for this configuration?
   ```

### Task 5: Find Patterns and Conventions

1. Explore coding patterns:
   ```
   What is the error handling pattern used in this codebase?
   ```
   ```
   How are database transactions managed?
   ```
   ```
   What testing framework and patterns are used?
   ```
   ```
   How is logging implemented?
   ```

2. Document the patterns you discover

### Task 6: Locate Similar Code

1. Find a feature you want to implement
2. Ask Copilot:
   ```
   Show me examples in this codebase of similar functionality to [your feature]
   ```

3. Use those examples as templates for your implementation

### Task 7: Understand Dependencies

1. Open package.json, requirements.txt, or equivalent
2. For unfamiliar dependencies, ask:
   ```
   What is [dependency-name] used for in this project?
   ```
   ```
   Where is [dependency-name] used in the codebase?
   ```

3. Create a dependency map showing relationships

### Task 8: Debug an Issue

1. Find an open issue in the repository (GitHub Issues)
2. Ask Copilot:
   ```
   Help me understand issue #[number]. Where in the codebase should I look?
   ```

3. Navigate to relevant files
4. Ask for explanation of the problem area:
   ```
   What might be causing the issue described in #[number]?
   ```

### Task 9: Contribute a Small Change

1. Find a "good first issue" or simple enhancement
2. Use Copilot to:
   - Understand the affected area
   - Identify the files to modify
   - Follow the project's patterns
   - Write appropriate tests
   - Create proper documentation

### Task 10: Create Onboarding Documentation

1. Based on your exploration, ask Copilot:
   ```
   Help me create an onboarding guide for new contributors to this project
   ```

2. Include:
   - Project structure overview
   - Key concepts and patterns
   - Where to find important functionality
   - How to run tests
   - Common development tasks

## Exploration Strategies

Document which approaches work best:

### Top-Down Exploration
* Start with README and architecture
* Understand high-level components
* Drill down into specific areas

### Bottom-Up Exploration
* Start with a specific feature
* Trace upward to understand context
* Gradually expand understanding

### Feature-Based Exploration
* Pick a user-facing feature
* Follow it through all layers
* Use as anchor for understanding

### Test-Driven Understanding
* Read test files first
* Understand expected behavior
* Then read implementation

## Questions to Ask Copilot

Effective questions for codebase exploration:

### Architecture Questions
* "What design patterns are used in this codebase?"
* "How are concerns separated in this project?"
* "What is the data flow through the application?"

### Navigation Questions
* "Where is [functionality] implemented?"
* "What files are related to [feature]?"
* "How do I find [component type] in this codebase?"

### Pattern Questions
* "How should I structure a new [component type]?"
* "What is the naming convention for [element]?"
* "How are [feature type] typically tested here?"

### Context Questions
* "Why is [code pattern] used here?"
* "What problem does [module] solve?"
* "What are the alternatives to this approach?"

## Reflection Questions

* How long did it take to feel comfortable with the codebase?
* What questions were most helpful for understanding?
* Did Copilot lead you astray at any point?
* How accurate was Copilot's understanding of the codebase?
* What exploration strategy worked best for you?
* Could you contribute a meaningful change to this codebase?

## Success Criteria

* Successfully navigated an unfamiliar codebase
* Understood the overall architecture and key components
* Traced at least one complete feature flow
* Identified and documented coding patterns and conventions
* Made a small contribution or fix following project patterns
* Created useful onboarding documentation
* Developed a reproducible exploration strategy

## Bonus Challenges

1. **Speed Run**: How quickly can you understand a new codebase well enough to fix a bug?
2. **Teaching**: Explain a complex feature to someone else using only what you learned from Copilot
3. **Comparison**: Explore two similar projects (e.g., Flask vs Express) and document the differences
4. **Deep Dive**: Pick one module and become an expert through Copilot-assisted exploration
