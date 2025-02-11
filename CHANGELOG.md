## 0.0.1

🚀 Major Updates:
Migrated from flutter_colorpicker to flex_color_picker.
Breaking Change: ImageEditor now has multiple options like cropOption for crop-related settings. Passing null disables features (e.g., cropOption: null disables cropping).
Aspect Ratio Reversible Option added to ImageCropper.
Dropped Dependency: image_editor removed.
Web Support: Fixes and initial implementation.
🆕 New Features:
Layers Management: Added LayersViewer class and reorder overlay screen.
Output Format Option added to ImageEditor.
Ratio Options: Now configurable in ImageEditor and ImageCropper.
Feature List Control: Allowed features can be defined via constructor.
Image Compression: Height & width parameters added.
Theme Customization: Now possible using ImageEditor.theme = ThemeData(...).
Language Translation Feature introduced.
Permission Check for Photos & Camera.
Image Conversion: ImageUtils.convert & ImageUtils.convertAll methods added.
GitHub Repository added.
🛠️ Optimizations & Fixes:
Performance Improvements and dependency updates.
Bug Fixes across multiple versions.
Removed Global Key usage for better performance.
Signature Library Change and unused code cleanup.
Code Optimization for better efficiency.
Color Filters Optimization and fixes.

