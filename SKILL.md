---
name: dioxus-element-plug
version: 0.1.4
description: Modern Dioxus UI components with Element UI theme-chalk styling and zero-configuration pure Rust styling system
category: Web Development
framework: Dioxus 0.7+
design_system: Element UI theme-chalk
key_feature: Compile-time CSS generation with pure Rust, zero runtime overhead
command: npx skills add dioxus-element-plug
repository: https://github.com/pauljohn21/dioxus-element-plug-skills
dependencies:
  - dioxus@^0.7.0
  - rust@^1.70.0
tags:
  - dioxus
  - rust
  - ui-components
  - element-ui
  - pure-rust
  - zero-config
  - modern-dx
  - web-development
  - theme-chalk
---

# Dioxus Element Plug Skill for CatPaw AI

## Skill Overview

This skill provides comprehensive assistance for Dioxus Element Plug development, a modern Rust web framework with 95+ Element UI components and zero-configuration pure Rust styling system with zero runtime overhead.

## When to Use This Skill

Use this skill when you need help with:
- 🚀 Dioxus 0.7+ web application development
- 🎨 Element UI component implementation and customization
- ⚡ Zero-config pure Rust styling with compile-time CSS generation
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

// Generate complete Element Plus styles
let styles = CompleteStyleManager::new().generate_complete_styles();

#[component]
fn App() -> Element {
    rsx! {
        // Inject global styles (core step)
        style { "{styles}" }
        
        // Your components here
        Button {
            variant: ButtonVariant::Primary,
            "Hello World!"
        }
    }
}
```

**Cargo.toml Dependencies**:
```toml
[dependencies]
dioxus = { version = "0.7", features = ["web"] }
dioxus-element-plug = "0.1.4"
```

**Key Benefits**:
- Zero external CSS dependencies (Node.js, Sass, etc.)
- Compile-time style generation
- Type-safe component APIs
- Tree-shaking friendly

### 2. UI Component Development

**Command**: `create-component [component-type] [name]`

#### Component Examples:

**Button**:
```rust
use dioxus_element_plug::{Button, ButtonVariant, ButtonSize};

Button {
    variant: ButtonVariant::Primary,
    size: ButtonSize::Medium,
    on_click: move |_| handle_click(),
    "Primary Button"
}

Button {
    variant: ButtonVariant::Success,
    size: ButtonSize::Large,
    "Success!"
}
```

**Input**:
```rust
use dioxus_element_plug::{Input, InputType, InputSize};

Input {
    placeholder: "Enter your email",
    input_type: InputType::Email,
    size: InputSize::Medium,
}

Input {
    placeholder: "Password",
    input_type: InputType::Password,
    size: InputSize::Medium,
}
```

**Card**:
```rust
use dioxus_element_plug::Card;

Card {
    h3 { "Card Title" }
    p { "Card content goes here" }
}
```

**Grid Layout**:
```rust
use dioxus_element_plug::{Row, Col};

Row {
    Col {
        span: 12,
        "Full width column"
    }
}

Row {
    Col {
        span: 8,
        "8 columns"
    }
    Col {
        span: 8,
        "8 columns"
    }
    Col {
        span: 8,
        "8 columns"
    }
}
```

**Alert**:
```rust
use dioxus_element_plug::{Alert, AlertType};

Alert {
    title: "Success!".to_string(),
    alert_type: AlertType::Success,
}

Alert {
    title: "Error occurred".to_string(),
    alert_type: AlertType::Error,
}
```

**Form Elements**:
```rust
use dioxus_element_plug::{
    Form, FormItem,
    Input, InputType,
    Select, Option,
    Checkbox, Radio
};

Form {
    FormItem {
        label: "Email".to_string(),
        Input {
            input_type: InputType::Email,
        }
    }
    
    FormItem {
        label: "Agree to terms".to_string(),
        Checkbox {
            checked: false,
            "I agree"
        }
    }
}
```

### 3. Styling System

**Command**: `setup-styling [theme-config]`

#### Global Style Injection (Core Pattern):
```rust
use dioxus_element_plug::CompleteStyleManager;

// In your root App component
let styles = CompleteStyleManager::new().generate_complete_styles();

rsx! {
    style { "{styles}" }
    // Your app content
}
```

#### Custom Themes:
```rust
use dioxus_element_plug::style_system::{Theme, CompleteStyleManager};

// Create custom theme
let theme = Theme::default()
    .with_color_primary("#ff6b6b")
    .with_color_success("#40a9ff")
    .with_border_radius("8px");

let styles = CompleteStyleManager::new()
    .with_theme(theme)
    .generate_complete_styles();
```

#### Component-Specific Styles:
```rust
// Only generate styles for specific components
let styles = CompleteStyleManager::new()
    .generate_styles_for_components(&["button", "input", "alert"]);
```

### 4. Performance Optimization

**Command**: `optimize-performance [target]`

#### Tree-Shaking (Zero Unused CSS):

```rust
// Only include styles for components you use
CompleteCssBuilder::new()
    .with_theme(Theme::default())
    .with_reset_styles()
    .with_button_styles()
    .with_input_styles()
    // Don't include card styles if not using cards
    .build();
```

#### Compile-Time Benefits:
- Zero runtime CSS parsing
- No Flash of Unstyled Content (FOUC)
- Immediate style application
- Minimal bundle size

#### Production Builds:
```bash
# Optimized for web
cargo build --release --target wasm32-unknown-unknown

# Minimize bundle size
wasm-opt -Oz target/wasm32-unknown-unknown/release/*.wasm
```

### 5. Integration Patterns

**Command**: `integration-example [framework]`

#### With Existing Dioxus Projects:
```rust
// In your existing Dioxus app
use dioxus::prelude::*;
use dioxus_element_plug::{Button, CompleteStyleManager};

#[component]
fn MyExistingComponent() -> Element {
    let styles = CompleteStyleManager::new().generate_complete_styles();
    
    rsx! {
        style { "{styles}" }
        
        // Mix existing components with Element UI
        div {
            h1 { "My Page" }
            
            Button {
                variant: ButtonVariant::Primary,
                "Element Button"
            }
        }
    }
}
```

#### Dashboard Layout:
```rust
use dioxus_element_plug::{Container, Header, Main, Footer, Row, Col, Card};

#[component]
fn Dashboard() -> Element {
    rsx! {
        Container {
            Header {
                "Dashboard Header"
            }
            
            Main {
                Row {
                    Col { span: 12,
                        Card {
                            h2 { "Welcome" }
                            p { "Dashboard content" }
                        }
                    }
                }
            }
            
            Footer {
                "© 2024 Dashboard"
            }
        }
    }
}
```

## Component Library Reference

### Available Components (95+):
- **Layout**: Container, Row, Col, Header, Footer, Main, Aside
- **Navigation**: Menu, MenuItem, SubMenu, Breadcrumb, Pagination
- **Data Entry**: Input, Select, Textarea, Checkbox, Radio, Switch, Slider
- **Data Display**: Card, Table, List, Tag, Badge, Avatar, Image
- **Feedback**: Alert, Message, Notification, Progress, Spin
- **Form**: Form, FormItem
- **Button**: Button (all variants and sizes)

### Component Categories:
- Layout & Grid (5 components)
- Navigation (8+ components)
- Input Controls (15+ components) 
- Data Display (20+ components)
- Feedback & Status (8+ components)
- Tables & Lists (5+ components)
- Overlays & Modals (10+ components)
- Media & Icons (8+ components)

## Advanced Usage

### Custom Component Wrapping:
```rust
use dioxus_element_plug::{Button, ButtonVariant};

#[component]
fn PrimaryButton(children: Element, onclick: EventHandler<MouseEvent>) -> Element {
    rsx! {
        Button {
            variant: ButtonVariant::Primary,
            on_click: onclick,
            {children}
        }
    }
}
```

### Theming Integration:
```rust
struct AppTheme {
    primary_color: String,
    border_radius: String,
    // ... other theme properties
}

impl AppTheme {
    fn to_element_theme(&self) -> Theme {
        Theme::default()
            .with_color_primary(&self.primary_color)
            .with_border_radius(&self.border_radius)
    }
}
```

### Performance Monitoring:
```rust
// Check bundle size impact
console_log::init_with_level(log::Level::Info).unwrap();

gloo_console::log!(format!(
    "Element Plus CSS size: {} KB", 
    styles.len() / 1024
));
```

## Troubleshooting Guide

### Common Issues:

**Styles not applying?**
- ✅ Make sure you have `style { "{styles}" }` in your root component
- ✅ Verify `CompleteStyleManager::new().generate_complete_styles()` is called
- ✅ Check that you're using the correct component props

**Build errors?**
- ✅ Update to latest version: `cargo update -p dioxus-element-plug`
- ✅ Check Rust version: `rustc --version` (requires 1.70+)
- ✅ Clean and rebuild: `cargo clean && cargo build`

**Component not found?**
- ✅ Import the component: `use dioxus_element_plug::Button;`
- ✅ Check component exists in version 0.1.4
- ✅ Import from prelude: `use dioxus_element_plug::prelude::*`

**Bundle size too large?**
- ✅ Use component-specific styles instead of complete styles
- ✅ Enable tree-shaking by only including used component styles
- ✅ Check bundle analyzer: `cargo build --release --features web`

## Quick Start Examples

### Minimal App:
```rust
use dioxus::prelude::*;
use dioxus_element_plug::{Button, ButtonVariant, CompleteStyleManager};

#[component]
fn App() -> Element {
    let styles = CompleteStyleManager::new().generate_complete_styles();
    
    rsx! {
        style { "{styles}" }
        
        div {
            h1 { "Dioxus Element Plug Demo" }
            
            Button {
                variant: ButtonVariant::Primary,
                "Click me!"
            }
            
            Button {
                variant: ButtonVariant::Success,
                "Success"
            }
        }
    }
}

fn main() {
    dioxus::launch(App);
}
```

### Complete Styled App:
```rust
use dioxus::prelude::*;
use dioxus_element_plug::{
    CompleteStyleManager,
    Button, ButtonVariant,
    Input, InputType,
    Card, Row, Col,
    Alert, AlertType
};

#[component]
fn App() -> Element {
    let styles = CompleteStyleManager::new().generate_complete_styles();
    
    rsx! {
        style { "{styles}" }
        
        div { class: "container mx-auto p-4",
            h1 { class: "text-2xl font-bold mb-4", "Element Plus Demo" }
            
            Card {
                h2 { "Buttons" }
                Button { variant: ButtonVariant::Primary, "Primary" }
                Button { variant: ButtonVariant::Success, "Success" }
                Button { variant: ButtonVariant::Danger, "Danger" }
            }
            
            Card {
                h2 { "Form Controls" }
                Input { placeholder: "Email", input_type: InputType::Email }
                Input { placeholder: "Password", input_type: InputType::Password }
            }
            
            Row {
                Col { span: 12,
                    Alert {
                        title: "Welcome!".to_string(),
                        alert_type: AlertType::Success,
                    }
                }
            }
        }
    }
}
```

## Best Practices

### 1. Always Inject Styles at Root
```rust
// ✅ Good - inject once in App component
fn App() -> Element {
    let styles = CompleteStyleManager::new().generate_complete_styles();
    rsx! { style { "{styles}" } ... }
}

// ❌ Bad - don't inject multiple times
fn ChildComponent() -> Element {
    let styles = CompleteStyleManager::new().generate_complete_styles();
    // Don't do this here!
}
```

### 2. Use Type-Safe Component APIs
```rust
// ✅ Good - use enums for variants
Button {
    variant: ButtonVariant::Primary,
    size: ButtonSize::Medium,
    "Submit"
}

// ❌ Avoid - raw strings
button { class: "el-button el-button--primary", "Submit" }
```

### 3. Optimize Bundle Size
```rust
// ✅ Good - only include needed components
let styles = style_manager.generate_styles_for_components(&["button", "input"]);

// ❌ Bad - always use complete styles in production
let styles = style_manager.generate_complete_styles();
```

### 4. Theme Configuration
```rust
// ✅ Good - reuse theme
let theme = Theme::default().with_color_primary("#ff6b6b");
let styles = CompleteStyleManager::new().with_theme(theme).generate_complete_styles();

// ❌ Avoid - recreating theme every render
```

## Version History

- **0.1.4** (Latest)
  - Modern pure Rust styling system
  - 95+ production-ready components
  - Zero external dependencies
  - Complete Element Plus compatibility
  - Version update for production use

- **0.1.3**
  - Initial release with SCSS support
  - 75+ components
  - Manganis integration

- **0.1.0**
  - Proof of concept
  - Basic component set

## Resources

- **Documentation**: https://docs.rs/dioxus-element-plug
- **GitHub**: https://github.com/pauljohn21/dioxus-element-plug
- **Examples**: https://github.com/pauljohn21/dioxus-element-plug/tree/main/examples
- **Crates.io**: https://crates.io/crates/dioxus-element-plug

## Support

For help with this skill:
1. Check the troubleshooting guide above
2. Review the quick start examples
3. Consult the official documentation
4. Open an issue on GitHub

Remember: This skill covers the complete Dioxus Element Plug ecosystem - from setup and configuration to advanced theming and performance optimization!