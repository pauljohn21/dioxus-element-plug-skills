# Dioxus Element Plug

A Claude Code skill for Dioxus UI development with Element UI theme-chalk styling and zero-config SCSS support.

name: dioxus-element-plug
version: 0.1.0
description: Modern Dioxus UI components with Element UI theme-chalk styling and built-in SCSS support
category: UI Development
tags: dioxus, rust, ui-components, element-ui, scss, manganis
framework: dioxus@0.7+

## Core Capabilities

### 🚀 Modern DX Development
- Dioxus 0.7+ development assistance
- Element UI component library guidance
- Manganis SCSS integration support
- Rust Web UI development best practices
- Modern Developer Experience (DX) optimization
- crates.io publishing guidance

### 🎨 UI Components
- Button components with variant styling
- Input components with multiple types
- Layout system with responsive design
- Theme integration and customization
- CSS class utilities
- Asset macro usage

### ⚡ Zero-Config SCSS
- Built-in SCSS compilation via manganis
- Hot reload support during development
- Compile-time optimization
- Type-safe asset handling
- CSS minification for production

## Quick Start Guide

### Claude Code Integration

#### Quick Commands
```
# Initialize new Dioxus project with Element UI
new_dioxus_app("my-app", "element-ui")

# Add Element UI components to existing project
add_element_components("button", "input", "layout")

# Configure SCSS compilation
setup_scss_compilation("theme-chalk.scss")

# Generate component with specific props
generate_component("Button", "primary", "disabled=false")
```

#### Installation

```toml
dioxus = { version = "0.7", features = ["web"] }
dioxus-element-plug = "0.1.0"
manganis = { version = "0.7.9", features = ["dioxus"] }
```

### Basic Usage

```rust
use dioxus::prelude::*;
use dioxus_element_plug::prelude::*;
use manganis::asset;

// Zero-config SCSS compilation
static STYLES: Asset = asset!("/assets/theme-chalk.scss");

fn App() -> Element {
    rsx! {
        Button {
            variant: ButtonVariant::Primary,
            "Hello Modern Dioxus!"
        }
    }
}
```

## Project Structure

```
dioxus-element-plug/
├── src/lib.rs              # Main library entry
├── src/scss.rs             # SCSS utilities and macros
├── src/theme.rs            # Theme constants
├── src/components/         # UI components
│   ├── button.rs           # Button component
│   ├── input.rs            # Input component
│   └── layout.rs           # Layout components
├── scss/                   # SCSS source files
│   ├── theme-chalk.scss    # Main theme file
│   ├── components/         # Component styles
│   └── variables/          # SCSS variables
└── examples/               # Usage examples
    └── with-scss-asset/    # Modern DX example
```

## API Reference

### Key Components

#### Button
- **Variants**: Primary, Success, Warning, Danger, Info
- **Sizes**: Large, Default, Small, Mini
- **Properties**: disabled, loading, icon, circle, plain

#### Input
- **Types**: Text, Password, Search, Email, Url
- **Properties**: placeholder, clearable, disabled, prefix-icon, suffix-icon
- **Sizes**: Large, Default, Small

#### Layout
- **Container**: Main layout container
- **Header/Footer**: Page sections
- **Row/Col**: Grid system (24 columns)
- **Breakpoints**: xs, sm, md, lg, xl

### Asset Macros

```rust
// Import SCSS files
static STYLES: Asset = asset!("/assets/theme-chalk.scss");

// Import individual component styles
static BUTTON_STYLES: Asset = asset!("/assets/components/button.scss");

// Import theme variables
static THEME_VARS: Asset = asset!("/assets/variables/colors.scss");
```

### Theme Variables

```scss
// Primary Colors
$primary-color: #409eff;
$success-color: #67c23a;
$warning-color: #e6a23c;
$danger-color: #f56c6c;
$info-color: #909399;

// Typography
$font-family: 'Helvetica Neue', Helvetica, Arial, 'PingFang SC', 'Hiragino Sans GB', 'Microsoft YaHei', sans-serif;
$font-size-base: 14px;
$line-height-base: 1.5;

// Spacing
$spacing-xs: 4px;
$spacing-sm: 8px;
$spacing-md: 16px;
$spacing-lg: 24px;
$spacing-xl: 32px;
```

## Troubleshooting Guide

### Issue 1: Asset Macro Not Found

**Error**: `use of undeclared crate or module 'manganis'`

**Solution**:
```toml
# Add to Cargo.toml
[dependencies]
manganis = { version = "0.7.9", features = ["dioxus"] }
```

### Issue 2: SCSS File Not Found

**Error**: Asset resolution fails

**Solution**:
1. Verify file path is relative to project root
2. Check file exists at specified location
3. Ensure SCSS file is in assets directory

### Issue 3: Styles Not Applying

**Issue**: CSS not loading in browser

**Solution**:
1. Check asset! macro is properly used
2. Verify manganis feature is enabled
3. Run `cargo clean && cargo run`

### Issue 4: Build Errors

**Issue**: Compilation failures

**Solution**:
1. Run `cargo check` for detailed errors
2. Check Dioxus version compatibility
3. Update dependencies if needed

## Modern DX Principles

### Zero Configuration
- Works out of the box
- No build tool setup required
- Automatic SCSS compilation

### Developer Experience
- Hot reload support
- Type-safe asset handling
- Compile-time error checking
- Progressive enhancement

### Performance
- Automatic CSS minification
- Tree-shaking support
- Efficient asset bundling
- Smart caching strategies

## Claude Code Integration Patterns

### AI-Assisted Project Setup

```
# Full project scaffolding with AI
new_dioxus_project("my-app") {
  framework: "dioxus@0.7",
  ui_library: "element-plug",
  features: ["web", "scss", "hot-reload"],
  components: ["button", "input", "layout"]
}
```

### Smart Component Generation

```
# Context-aware component creation
generate_ui_component(type: "Button", props: {
  variant: "primary",
  size: "large",
  disabled: false,
  loading: false
})

# Intelligent layout generation
create_responsive_layout(config: {
  grid: 24,
  breakpoints: ["xs", "sm", "md", "lg", "xl"],
  container: true
})
```

### Zero-Config Setup

1. Run `setup_element_ui_project()` - Automatic dependency management
2. Use `configure_scss_compilation()` - SCSS setup with hot reload
3. Execute `generate_theme_config()` - Theme system initialization
4. Start development with `run_dev_server()`

### Production Deployment

```bash
# Build for production
cargo build --release

# Optimize assets
cargo build --release --features optimize
```

## Best Practices

### Code Organization
- Use meaningful component names
- Follow Dioxus hook patterns
- Implement proper error handling
- Write component tests

### Styling Guidelines
- Leverage theme variables
- Use CSS custom properties
- Follow BEM naming conventions
- Implement responsive design

### Performance Tips
- Import only needed components
- Use selective SCSS imports
- Implement lazy loading
- Optimize bundle size

## Learning Resources

### Documentation
- [Dioxus Official Docs](https://dioxuslabs.com/docs/)
- [Element UI Documentation](https://element.eleme.io/)
- [Manganis GitHub](https://github.com/DioxusLabs/manganis)
- [crates.io Package](https://crates.io/crates/dioxus-element-plug)

### Claude Code Examples

#### Component Generation
```rust
// Generate a primary button component
create_button("Submit", ButtonVariant::Primary)

// Generate an input with validation
create_input("email", InputType::Email, "user@example.com")

// Generate a responsive layout
create_layout("dashboard", LayoutType::Grid)
```

#### Theming Commands
```
apply_element_theme("dark")
configure_scss_variables("#1e1e1e", "#409eff")
optimize_for_production()
```

#### Asset Management
```
import_scss "theme-chalk.scss"
compile_assets "dist/"
watch_scss_changes "src/styles/"
```

#### Layout Patterns
```
create_responsive_grid(24)
setup_breakpoints("xs", "sm", "md", "lg", "xl")
implement_flex_layout("center", "space-between")
```

## Future Development

### Roadmap
- Additional Element UI components
- Enhanced theming system
- Animation utilities
- Accessibility improvements
- Performance monitoring tools

### Contributing
- Component development guidelines
- Testing requirements
- Documentation standards
- Code review process

---

**This Claude Code skill provides AI-powered Dioxus Element Plug development assistance, enabling zero-configuration UI development with intelligent component generation and automated SCSS compilation.**

## Claude Code Usage

```
# Ask Claude to create UI components
create a responsive dashboard with Element UI

# Generate theme configurations  
setup dark theme for Dioxus app

# Resolve styling issues
fix SCSS compilation errors

# Optimize for production
minify CSS and bundle assets
```

*Optimized for Claude Code • AI-first Dioxus Development*