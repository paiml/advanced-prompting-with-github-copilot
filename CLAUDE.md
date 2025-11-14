# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains Course 1 of the **GitHub Copilot Mastery Pathway**, a partnership between Xero and LinkedIn Learning. The course "Advanced Prompting with GitHub Copilot" is approximately 60 minutes and teaches developers how to craft effective prompts and engage in conversational interactions with AI coding assistants.

This is an educational course repository containing lab exercises and documentation rather than application code.

## Course Context

**Course Series**: GitHub Copilot Mastery Pathway (4 courses total)
- **Course 1**: Advanced Prompting with GitHub Copilot (this repo)
- Course 2: GitHub Copilot for System-Level Development
- Course 3: Responsible AI Development with GitHub Copilot
- Course 4: Capstone: Building Production Features with Copilot

**Partners**: Xero & LinkedIn Learning
**Format**: ~60 minutes, 3-5 minute videos per lesson
**Target Audience**: Developers looking to master GitHub Copilot beyond basic autocomplete

## Repository Structure

```
/
├── README.md              # Course overview and module descriptions
├── CLAUDE.md             # This file - guidance for AI assistants
├── LICENSE               # Project license
└── labs/                 # Hands-on lab exercises organized by module
    ├── module1/          # Foundations for Advanced Prompting
    │   ├── 1-conversational-prompting-lab.md
    │   └── 2-multi-turn-interactions-lab.md
    ├── module2/          # Mastering Conversational AI
    │   └── 3-iterative-refinement-lab.md
    ├── module3/          # Advanced Context Scaffolding
    │   ├── 4-multi-file-context-lab.md
    │   ├── 5-docs-and-code-generation-lab.md
    │   └── 6-exploring-codebases-lab.md
    └── bonus/            # Advanced bonus exercises
        ├── bonus1-python-to-rust-conversion.md
        └── bonus2-pmat-prompt-customization.md
```

## Course Structure

### Module 1: Foundations for Advanced Prompting (5 videos)
- Course introduction and pathway overview
- From basic to conversational AI
- The power of multi-turn interactions
- Overview of chat inputs
- Overview of chat modes (inline, chat, editor)

**Labs**: Conversational prompting basics, multi-turn interactions

### Module 2: Mastering Conversational AI (5 videos)
- Crafting multi-turn prompts
- Iterative refinement techniques
- Challenge: Refactor with conversation
- Solution: Refactor with conversation
- Analyzing your conversational approach

**Labs**: Iterative refinement practice

### Module 3: Advanced Context Scaffolding (5 videos)
- Providing context from multiple files
- Leveraging open files for accuracy
- Challenge: Generate code from API docs
- Solution: Generate code from API docs
- Working with unknown codebases

**Labs**: Multi-file context management, docs generation, exploring codebases

### Bonus Exercises (2 advanced exercises)
- Python to Rust CLI conversion using AI-assisted transpilation
- Customizing PMAT test generation with language-specific prompts

**Focus**: Cross-language conversion, advanced prompt customization, test infrastructure

## Lab Structure and Patterns

Each lab follows a consistent structure:
- **Prerequisites**: What students need before starting
- **Setup**: Environment and repository setup instructions
- **Tasks**: Numbered hands-on exercises (typically 4-10 tasks)
- **Reflection Questions**: Prompts for deeper learning
- **Success Criteria**: Clear completion metrics

### Key Learning Themes Across Labs
- **Context Management**: Strategic file opening, 3-File Rule, layer-based approaches
- **Refinement Strategies**: Breadth-first, depth-first, ping-pong patterns
- **Documentation Styles**: Minimal, standard, comprehensive patterns for code generation
- **Exploration Strategies**: Top-down, bottom-up, feature-based, test-driven understanding

### Practice Repositories Referenced
Labs direct students to practice on external repositories:
- **Python**: Flask, Jinja
- **JavaScript**: Express, Lodash
- **Ruby**: Ruby on Rails
- **Bonus Exercises**:
  - [reprorusted-python-cli](https://github.com/paiml/reprorusted-python-cli) - Python to Rust transpilation examples
  - [paiml-mcp-agent-toolkit](https://github.com/paiml/paiml-mcp-agent-toolkit) - PMAT test generation toolkit

## Working with This Repository

### Editing Course Content

When modifying labs:
- Maintain the established module structure (module1/module2/module3)
- Preserve the consistent lab format (Prerequisites → Setup → Tasks → Reflection → Success)
- Keep code examples in fenced blocks with language specifiers
- Ensure labs remain aligned with the video content structure
- Maintain the progressive difficulty curve across modules

### Updating README
The README should:
- Clearly identify this as Course 1 in the 4-course pathway
- List all three modules with their video topics
- Organize labs by module (Module 1/2/3 Labs sections)
- Reference Xero and LinkedIn Learning partnership
- Include the ~60 minute duration

### Creating New Content

If adding new labs:
- Place in appropriate module subdirectory (module1/2/3) or bonus/
- Follow established numbering: module1 has labs 1-2, module2 has lab 3, module3 has labs 4-6
- Bonus exercises use bonus1-, bonus2- prefixes
- Align content with the module's learning objectives
- Reference appropriate practice repositories for the target language
- Include both challenge and reflection components

For bonus exercises:
- Focus on advanced, real-world applications
- May require additional tools or languages beyond core course requirements
- Should demonstrate integration of multiple course concepts
- Include links to external resources and repositories
- Provide clear success criteria and expected outcomes

## Important Notes

- This is educational content about GitHub Copilot, not a software project
- No build/test/CI infrastructure is needed (this is normal for educational repos)
- Labs reference external repositories for hands-on practice
- Course is language-agnostic but provides Python/JavaScript/Ruby examples
- Focus is on prompting techniques and conversational AI, not specific coding patterns
