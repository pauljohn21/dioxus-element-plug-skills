---
name: dioxus-element-plug
version: 0.1.0
description: Modern Dioxus UI components with Element UI theme-chalk styling and built-in SCSS support
category: Web Development
framework: Dioxus 0.7+
design_system: Element UI theme-chalk
key_feature: Built-in SCSS compilation with manganis
command: npx skills add dioxus-element-plug
repository: https://github.com/pauljohn21/dioxus-element-plug-skills
dependencies:
  - dioxus@^0.7.0
  - manganis@^0.7.9
  - rust@^1.70.0
tags:
  - dioxus
  - rust
  - ui-components
  - element-ui
  - scss
  - manganis
  - modern-dx
  - web-development
---

# Dioxus Element Plug Skill for CatPaw AI

## Skill Overview

This skill provides comprehensive assistance for Dioxus Element Plug development, a modern Rust web framework with Element UI components and zero-configuration SCSS support via manganis.

## When to Use This Skill

Use this skill when you need help with:
- 🚀 Dioxus 0.7+ web application development
- 🎨 Element UI component implementation and customization
- ⚡ Zero-config SCSS compilation with manganis
- 📦 Rust crates integration and package management
- 🖥️ Modern developer experience (DX) optimization
- 🐛 Troubleshooting Dioxus build and styling issues
- 🔧 Performance optimization for production deployments

## Core Capabilities

### 1. Project Setup & Configuration

**Command**: `setup-project [project-name]`
```rust
// Example: Initialize new Dioxus project with Element Plug
use dioxus::prelude::*;
use dioxus_element_plug::prelude::*;
use manganis::asset;

// Configure SCSS assets
static THEME_STYLES: Asset = asset!("/assets/theme-chalk.scss");
static CUSTOM_STYLES: Asset = asset!("/assets/custom.scss");
```

**Cargo.toml Dependencies**:
```toml
[dependencies]
dioxus = { version = "0.7", features = ["web"] }
dioxus-element-plug = "0.1.0"
manganis = { version = "0.7.9", features = ["dioxus"] }
```

### 2. UI Component Development

**Command**: `create-component [component-type] [name]`

**Available Components**:
- Button: `variant`, `size`, `disabled`, `loading`, `icon`
- Input: `type`, `placeholder`, `clearable`, `prefix-icon`, `suffix-icon`
- Layout: Container, Header, Footer, Row, Col system

**Component Usage Examples**:
```rust
/// Create a primary button
fn create_primary_button() -> Element {
    rsx! {
        Button {
            variant: ButtonVariant::Primary,
            size: ButtonSize::Medium,
            "Submit Form",
        }
    }
}

/// Create a search input
fn create_search_input() -> Element {
    rsx! {
        Input {
            input_type: InputType::Search,
            placeholder: "Search...".to_string(),
            clearable: true,
        }
    }
}

/// Create responsive layout
fn create_page_layout() -> Element {
    rsx! {
        Container {
            header {
                Header {
                    "Page Header"
                }
            }
            main {
                Row {
                    Col { span: 12,
                        "Main Content Area"
                    }
                }
            }
            footer {
                Footer {
                    "Page Footer"
                }
            }
        }
    }
}
```

### 3. SCSS & Theming

**Command**: `configure-theme [theme-name]`

**SCSS Asset Management**:
```rust
// Import main theme
static THEME: Asset = asset!("/assets/theme-chalk.scss");

// Import component-specific styles
static BUTTON_STYLES: Asset = asset!("/assets/components/button.scss");
static INPUT_STYLES: Asset = asset!("/assets/components/input.scss");

// Import custom styles
static CUSTOM_THEME: Asset = asset!("/assets/custom-theme.scss");
```

**Theme Variables**:
```scss
// Primary color palette
$primary-color: #409eff;
$success-color: #67c23a;
$warning-color: #e6a23c;
$danger-color: #f56c6c;
$info-color: #909399;

// Typography
$font-family: 'Helvetica Neue', Helvetica, Arial, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', sans-serif;
$font-size-base: 14px;
$line-height-base: 1.5;

// Component sizes
$button-height-small: 28px;
$button-height-default: 32px;
$button-height-large: 40px;

// Spacing system
$spacing-xs: 4px;
$spacing-sm: 8px;
$spacing-md: 16px;
$spacing-lg: 24px;
$spacing-xl: 32px;
```

### 4. Development Workflow

**Command**: `start-development [mode]`

**Development Modes**:
- `hot-reload`: Hot reload enabled development
- `production`: Production build with optimization
- `testing`: Testing environment setup

**Development Commands**:
```bash
# Start development server with hot reload
cargo run --features hot-reload

# Build for production
cargo build --release

# Run tests
cargo test

# Check code formatting
cargo fmt --check

# Lint code
cargo clippy
```

### 5. Performance Optimization

**Command**: `optimize-performance [target]`

**Optimization Strategies**:

**Bundle Size Optimization**:
```rust
// Use selective imports
static COMPONENT_STYLES: Asset = asset!("/assets/components/button.scss");
// Instead of importing entire theme

// Implement lazy loading
#[component]
fn LazyComponent() -> Element {
    use_future(|| async { load_component_data().await });
    rsx! {
        "Loading..."
    }
}
```

**Memory Optimization**:
```rust
// Use memoization
#[component]
fn MemoizedComponent(memo: String) -> Element {
    let expensive_computation = use_memo(|| {
        // Expensive operation
        compute_expensive_value()
    });
    
    rsx! {
        div {
            "Result: {expensive_computation}"
        }
    }
}
```

### 6. Testing & Quality Assurance

**Command**: `run-tests [test-type]`

**Testing Approaches**:
```rust
#[cfg(test)]
mod tests {
    use super::*;
    
    #[test]
    fn test_button_creation() {
        let button = create_primary_button();
        assert!(button.is_some());
    }
    
    #[test]
    fn test_input_validation() {
        let input = Input {
            input_type: InputType::Email,
            value: "test@example.com".to_string(),
        };
        assert!(input.is_valid());
    }
}
```

**Integration Testing**:
```rust
#[test]
fn test_complete_page_flow() {
    let page = create_complete_page();
    
    // Test navigation
    simulate_click(&page, "nav-button");
    
    // Test form submission
    simulate_form_submit(&page, "contact-form");
    
    // Verify expected behavior
    assert!(page.contains_text("Success!"));
}
```

## Problem Solving Framework

### Issue Diagnosis
When you encounter problems, follow this diagnostic process:

1. **Identify the Problem Category**:
   - Build errors
   - Runtime issues
   - Styling problems
   - Performance issues

2. **Gather Information**:
   - Error messages
   - Code snippets
   - Environment details
   - Reproduction steps

3. **Apply Solutions**:
   - Provide code fixes
   - Configuration adjustments
   - Best practices recommendations

### Common Issues & Solutions

**Issue 1: Compilation Errors**
```bash
# Error: cannot find derive macro `Props`
# Solution:
use dioxus::prelude::*;
#[derive(Props)]
struct MyComponentProps {
    title: String,
}
```

**Issue 2: SCSS Not Loading**
```rust
// Problem: Styles not applying
// Solution:
static STYLES: Asset = asset!("/assets/styles.scss"); // Ensure asset! macro is used
```

**Issue 3: Component Not Rendering**
```rust
// Problem: Empty component
// Solution: Ensure return type is Element and use rsx!
fn MyComponent() -> Element {
    rsx! {
        div {
            "Hello World"
        }
    }
}
```

## Integration Patterns

### New Project Integration
```bash
# 1. Create project
cargo new my-dioxus-app --lib
cd my-dioxus-app

# 2. Add dependencies
cargo add dioxus@0.7 --features web
cargo add dioxus-element-plug
cargo add manganis@0.7.9 --features dioxus

# 3. Configure assets directory
mkdir -p assets/scss/components
mkdir -p assets/scss/variables

# 4. Start development
cargo run
```

### Existing Project Integration
```rust
// 1. Add to existing Cargo.toml
[dependencies]
dioxus-element-plug = "0.1.0"
manganis = { version = "0.7.9", features = ["dioxus"] }

// 2. Import in lib.rs
mod components;
pub use components::*;

// 3. Configure main.rs
use dioxus_element_plug::prelude::*;
static THEME: Asset = asset!("/scss/theme-chalk.scss");
```

## Best Practices

### Code Organization
- Organize components by feature
- Use meaningful component names
- Implement proper error handling
- Follow Rust naming conventions
- Write comprehensive tests

### Styling Guidelines
- Leverage CSS custom properties
- Use theme variables consistently
- Follow BEM naming conventions
- Implement responsive design patterns
- Optimize CSS for production

### Performance Tips
- Use `use_memo` for expensive computations
- Implement lazy loading for large components
- Minimize bundle size with selective imports
- Use CSS containment when possible
- Profile and optimize critical rendering paths

## Learning Resources

### Documentation
- [Dioxus Official Guide](https://dioxuslabs.com/guide/)
- [Element UI Documentation](https://element.eleme.io/)
- [Manganis GitHub](https://github.com/DioxusLabs/manganis)
- [Rust Async Book](https://rust-lang.github.io/async-book/)

### Tutorials & Examples
- Component creation tutorials
- Theming and customization examples
- Performance optimization guides
- Integration with popular libraries

### Community Resources
- Dioxus Discord community
- Rust programming forums
- GitHub discussions
- Stack Overflow tags

## Skill Commands Reference

### Basic Commands
- `help` - Show available commands
- `version` - Show skill version
- `status` - Show system status

### Project Commands
- `setup-project <name>` - Initialize new project
- `add-component <type>` - Add new component
- `configure-theme <theme>` - Set up theming
- `generate-docs` - Generate documentation

### Development Commands
- `start-development` - Start dev server
- `run-tests` - Execute test suite
- `build-production` - Create production build
- `optimize-bundle` - Optimize bundle size

### Support Commands
- `troubleshoot <issue>` - Help with problems
- `show-examples <topic>` - Display code examples
- `check-updates` - Check for updates
- `get-help <topic>` - Get detailed help

## Agent Instructions

When this skill is activated, follow these guidelines:

1. **Always provide complete, copy-paste ready code**
2. **Explain the reasoning behind your solutions**
3. **Offer multiple approaches when relevant**
4. **Reference official documentation**
5. **Emphasize zero-config DX principles**
6. **Include performance considerations**
7. **Provide security best practices**
8. **Consider edge cases and error handling**

### Response Format

For code solutions:
```markdown
## Solution

**Description**: Brief explanation of what this code does

```rust
// Complete, ready-to-use code here
fn example() {
    // Implementation
}
```

**Usage**: How to use this code in practice

**Customization**: How to modify for different needs

**Performance**: Performance considerations

**Testing**: How to test this implementation
```

### Priority Actions

1. **First Priority**: Address immediate user needs and problems
2. **Second Priority**: Provide educational context and best practices
3. **Third Priority**: Suggest optimizations and improvements
4. **Fourth Priority**: Share related resources for further learning

### Skill Boundaries

This skill is specifically focused on:
- ✅ Dioxus 0.7+ web development
- ✅ Element UI component usage
- ✅ SCSS compilation with manganis
- ✅ Modern Rust web development practices
- ✅ Developer experience optimization

This skill does not cover:
- ❌ Other web frameworks (React, Vue, etc.)
- ❌ Backend development (unless related to Dioxus)
- ❌ Desktop application development
- ❌ Mobile development outside Dioxus ecosystem

---

**Ready to assist with your Dioxus Element Plug development!**

To activate this skill in CatPaw AI:
```bash
# If skills CLI is available
npx skills activate dioxus-element-plug

# Or use the skill directly in your conversation
@dioxus-element-plug setup-project my-app
```