# s3d-coreui

This repository is part of a larger demo project called the [simple3DViewer](https://github.com/hassanvfx/simple3DViewer). It is a framework built with the [ios-framework config tool](https://github.com/hassanvfx/ios-framework).

## Overview

s3d-coreui is a minimal implementation that defines some UI specs and basic components in this module:

- Padding
- CornerRadius
- Color palette
- Fonts
- Buttons
- Backgrounds
- Bars
- Panels

These are the most atomic components that may be reused throughout the entire system.

## Modular UI

When it comes to modularizing UI in SwiftUI applications, there are various strategies to consider. However, adhering to foundational conventions can empower us to make better design choices. Here are some key aspects to focus on:

### 1. UI: Core Elements

One of the primary aspects of modular UI design is defining core elements that encapsulate the app’s style. This includes aspects like layout parameters (padding, corner radius, line thickness) and visual characteristics (color palettes, logos, fonts). Additionally, fundamental UI components such as buttons, panels, and bars are excellent candidates for inclusion in core modules. These core elements can then be shared consistently throughout the entire application system.

### 2. UI: Navigation

A critical aspect of modular UI design is the separation of navigation concerns from content views. This separation ensures a consistent navigation appearance and behavior across the entire application. The UI navigation framework should act as a highly adaptable canvas capable of accommodating various view components. This approach eliminates the need to embed sub-navigation logic within individual components. While simple components like steppers or linear flows, encompassing multiple view states, can be gracefully contained within modular components, global navigation actions should be delegated through completion closures. This delegation of control back to top-level coordinators enhances the overall flexibility and maintainability of the navigation system.

### 3. UI: View Components

Another crucial aspect of modular UI design is the creation of simple view components that seamlessly integrate with the existing navigation framework. For instance, consider a scenario where a 3D viewer may be initially presented within a TabView without a navigation bar and later within a child view with a navigation bar. By implementing this separation of concerns, the application can construct these simple wrappers based on the intended implementation. This approach enhances the adaptability and reusability of view components within the application architecture.

By following these principles and modularizing your SwiftUI application effectively, you can promote a more organized, maintainable, and scalable codebase, making it easier to manage and expand your project.
