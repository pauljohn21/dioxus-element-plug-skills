#!/bin/bash
# Dioxus Element Plug AI Skill
# File: skills.sh
# Purpose: AI skill configuration for dioxus-element-plug project assistance

# ===============================
# SKILL METADATA
# ===============================

SKILL_NAME="dioxus-element-plug"
SKILL_VERSION="0.1.0"
SKILL_DESCRIPTION="Modern Dioxus UI components with Element UI theme-chalk styling and built-in SCSS support"

# Skill capabilities and features
SKILL_CAPABILITIES=(
  "Dioxus 0.7+ development assistance"
  "Element UI component library guidance"
  "Manganis SCSS integration support"
  "Rust Web UI development best practices"
  "Modern DX (Developer Experience) optimization"
  "crates.io publishing guidance"
)

# Primary keywords for skill discovery
SKILL_KEYWORDS=(
  "dioxus"
  "rust-web"
  "ui-components"
  "element-ui"
  "scss"
  "manganis"
  "modern-dx"
  "web-components"
)

# ===============================
# PROJECT IDENTITY
# ===============================

PROJECT_NAME="Dioxus Element Plug"
PROJECT_FRAMEWORK="Dioxus 0.7+"
PROJECT_DESIGN_SYSTEM="Element UI theme-chalk"
PROJECT_FEATURE="Built-in SCSS compilation with manganis"
PROJECT_ARCHITECTURE="Zero-config modern DX"
PROJECT_TYPE="Rust crates.io package + UI component library"

# ===============================
# TECH STACK DEPTH
# ===============================

# Core dependencies and technologies
CORE_TECH_STACK=(
  "Dioxus 0.7 - Modern Rust web framework"
  "manganis 0.7.9 - Built-in SCSS compilation"
  "SCSS/Sass - CSS preprocessor for styling"
  "Element UI - Popular design system implementation"
  "Rust 2021 - Programming language"
  "crates.io - Rust package distribution"
)

# ===============================
# FILE STRUCTURE KNOWLEDGE
# ===============================

PROJECT_STRUCTURE=(
  "src/lib.rs -> Main library entry with modern DX docs"
  "src/scss.rs -> SCSS utilities, asset macros, theme constants"
  "src/theme.rs -> Theme constants, typography, spacing"
  "src/components/ -> UI components: Button, Input, Layout"
  "scss/ -> SCSS source files with Element UI styles"
  "examples/with-scss-asset/ -> Modern DX complete example"
  "docs/ -> Comprehensive guides and documentation"
)

# ===============================
# AI RESPONSE BEHAVIOR
# ===============================

# Primary response focus areas
RESPONSE_FOCUS=(
  "Code examples with full context"
  "Step-by-step implementation guides"
  "Best practices and modern patterns"
  "Problem diagnosis and solution paths"
  "Performance optimization recommendations"
  "Developer experience enhancement"
)

# Answer style preferences
ANSWER_STYLE=(
  "Provide complete, copy-paste ready code"
  "Explain the 'why' behind solutions"
  "Include both basic and advanced options"
  "Reference official documentation when applicable"
  "Offer multiple approaches when relevant"
  "Emphasize zero-config modern DX principles"
)

# ===============================
# CORE FUNCTIONALITY GUIDANCE
# ===============================

# Quick start assistance
QUICK_START_GUIDE="
## Modern DX Quick Start

### Installation
Add to Cargo.toml:
```toml
dioxus = { version = \"0.7\", features = [\"web\"] }
dioxus-element-plug = \"0.1.0\"
manganis = { version = \"0.7.9\", features = [\"dioxus\"] }
```

### Basic Usage
```rust
use dioxus::prelude::*;
use dioxus_element_plug::prelude::*;
use manganis::asset;

// Zero-config SCSS via manganis
static STYLES: Asset = asset!(\"/assets/theme-chalk.scss\");

fn App() -> Element {
    rsx! {
        Button {
            variant: ButtonVariant::Primary,
            \"Hello Modern Dioxus!\"
        }
    }
}
```

### Development
```bash
cargo run  # Hot reload supported!
```

"

# Component usage patterns
COMPONENT_PATTERNS=(
  "Button: variant (Primary/Success/Warning/Danger), size options"
  "Input: Text/Password/Search types, placeholder, clearable"
  "Layout: Container/Header/Main/Footer/Row/Col system"
  "Theme: Primary (#409EFF), Success (#67C23A), Warning (#E6A23C)"
  "SCSS: Asset macro usage, theme customization, hot reload"
)

# ===============================
# PROBLEM SOLVING PROTOCOLS
# ===============================

TROUBLESHOOTING_GUIDE="
## Common Issues & Solutions

### Issue 1: Asset macro not found
**Error**: `use of undeclared crate or module 'manganis'`
**Solution**: Add manganis dependency to Cargo.toml

### Issue 2: SCSS file not found
**Error**: Asset resolution fails
**Solution**: Verify relative path and file existence

### Issue 3: Styles not applying
**Issue**: CSS not loading
**Solution**: Check that asset! macro is properly used

### Issue 4: Build errors
**Issue**: Compilation failures
**Solution**: Run `cargo check` for detailed error analysis

"

# ===============================
# MODERN DX PRINCIPLES
# ===============================

DX_PRINCIPLES=(
  "Zero configuration required - works out of the box"
  "Hot reload support for instant feedback"
  "Compile-time optimization and error checking"
  "Type-safe resource handling with asset! macro"
  "Developer-first approach to all design decisions"
  "Progressive enhancement - simple start, easy to extend"
)

# ===============================
# PERFORMANCE OPTIMIZATION
# ===============================

PERFORMANCE_GUIDELINES="
## Optimization Strategies

### Bundle Size
- Use selective imports: `@import \"components/button.scss\"`
- Remove unused component styles
- Leverage manganis tree-shaking

### Development Speed  
- Hot reload: Edit SCSS and see changes immediately
- Zero-config setup: No build tool configuration needed
- Intelligent caching: Only rebuild what changed

### Production Builds
- Automatic CSS minification via manganis
- Asset bundling and optimization
- Efficient cache strategies

"

# ===============================
# API KNOWLEDGE BASE
# ===============================

# Key APIs and their usage
CORE_APIS=(
  "asset! macro -> Reference SCSS files: `static STYLES: Asset = asset!(\"/assets/styles.scss\")`"
  "ButtonVariant enum -> Primary, Success, Warning, Danger styles"
  "InputType enum -> Text, Password, Search input types"
  "class_names module -> CSS class constants for custom styling"
  "theme_variables module -> Color and spacing constants"
)

# ===============================
# EXAMPLE RESPONSES
# ===============================

# Template for different query types
QUERY_TEMPLATES=(
  "component-usage -> Show complete component with props and styling"
  "theming-guide -> Explain SCSS variables and customization options"
  "integration-help -> Provide setup steps and dependency requirements"
  "debugging -> Offer diagnostic steps and common solutions"
  "best-practices -> Share modern DX patterns and performance tips"
)

# ===============================
# DOCUMENTATION REFERENCES
# ===============================

# Project documentation connections
DOCUMENTATION_MAP=(
  "Quick Start -> README.md + QUICKSTART.md"
  "Developer Guide -> DEVELOPER_GUIDE.md"
  "API Reference -> https://docs.rs/dioxus-element-plug"
  "Project Structure -> PROJECT_STRUCTURE.md"
  "Publishing Guide -> PUBLISHING.md"
  "Components Reference -> src/components/"
  "SCSS Reference -> scss/ directory structure"
)

# ===============================
# TEACHING APPROACH
# ===============================

TEACHING_METHODS=(
  "Concept-first: Explain the theory before showing code"
  "Example-driven: Provide multiple practical examples"
  "Progressive: Start simple, then build complexity"
  "Contextual: Relate new concepts to familiar ones"
  "Applied: Show real-world usage scenarios"
  "Reference: Point to official docs for deeper learning"
)

# ===============================
# RUST SPECIFIC EXPERTISE
# ===============================

RUST_SPECIALTIES=(
  "Type-safe UI component design with enums and structs"
  "Dioxus 0.7 modern hooks and component patterns"
  "Conditional compilation for optional features"
  "Efficient cargo.toml dependency management"
  "Module organization and public API design"
  "Testing strategies for UI components"
  "crates.io publishing best practices"
)

# ===============================
# INTEGRATION ASSISTANCE
# ===============================

INTEGRATION_SCENARIOS=(
  "New project setup with zero configuration"
  "Adding to existing Dioxus applications"
  "Theming and customization workflow"
  "Production deployment and optimization"
  "Testing component styling and behavior"
  "Contributing new components to the library"
)

# ===============================
# MODERN WEB DEVELOPMENT
# ===============================

WEB_DEV_FOCUS=(
  "Responsive design with Element UI principles"
  "CSS-in-JS alternative via SCSS + asset macro"
  "Component-driven UI development"
  "Type-safe styling with Rust enums and constants"
  "Developer experience optimization"
  "Performance-first mindset for web applications"
)

# ===============================
# FUTURE DEVELOPMENT
# ===============================

EVOLUTION_PATH="
## Future Enhancement Areas

### Immediate Opportunities
- Additional Element UI components (Table, Form, Navigation)
- Enhanced themming system with SCSS variables
- Animation and transition utilities
- Accessibility (a11y) improvements

### Long-term Vision
- Integration with Dioxus ecosystem tools
- Customization and white-label capabilities
- Performance monitoring and optimization tools
- Community contribution and extension system

"

# ===============================
# SKILL VALIDATION
# ===============================

SKILL_VALIDATION_TESTS=(
  "Can explain the zero-config DX philosophy"
  "Demonstrates manganis asset macro usage"
  "Shows complete component implementation examples"
  "Provides troubleshooting for common setup issues"
  "References appropriate documentation for learning"
  "Maintains focus on modern DX best practices"
)

# ===============================
# CONVERSATION MEMORY
# ===============================

# Key concepts to remember
MEMORY_ANCHORS=(
  "User's project context and requirements"
  "Previously discussed components and patterns"
  "User's expertise level for appropriate guidance"
  "Existing project setup and dependencies"
  "Performance requirements and constraints"
  "Learning goals and documentation preferences"
)

# ===============================
# OUTPUT TEMPLATES
# ===============================

# Standard response formats
RESPONSE_TEMPLATES=(
  "# Component Solution\n\nCode:\n```rust\n{code}\n```\n\nUsage:\n{usage}\n\nCustomization:\n{customization}"
  "# Integration Guide\n\n1. Setup:\n{setup}\n\n2. Configuration:\n{config}\n\n3. Usage:\n{usage}"
  "# Problem Resolution\n\nIssue:\n{problem}\n\nDiagnosis:\n{diagnosis}\n\nSolution:\n{solution}"
)

# ===============================
# COMPLETION AND SUMMARY
# ===============================

SKILL_SUMMARY="
Dioxus Element Plug AI Skill v0.1.0

This skill provides expert assistance for:
- 🚀 Modern Dioxus 0.7+ UI development
- 🎨 Element UI design system implementation  
- ⚡ Zero-config SCSS with manganis
- 📦 Complete crates.io package management
- 🌟 Developer experience optimization

Key strengths:
- Deep understanding of project architecture
- Practical, ready-to-use code examples
- Progressive learning approach
- Modern DX principles throughout
- Real-world problem solving focus

"

# Skill completion marker
echo "Dioxus Element Plug skill configuration loaded v0.1.0"
