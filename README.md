# Aspect Ratio Presentation App

A Flutter application demonstrating aspect ratios for educational purposes.

##  Project Overview

This interactive Flutter app was created for a class presentation on **Aspect Ratios**. It provides visual demonstrations and real-world examples of how aspect ratios work in digital media.

##  What is Aspect Ratio?

Aspect Ratio is the proportional relationship between the width and height of an image, screen, or video.

Formula: `Aspect Ratio = Width : Height`

For example:
- A 16:9 aspect ratio means for every 16 units of width, there are 9 units of height
- A 1:1 aspect ratio means width and height are equal (square)

##  Aspect Ratios Demonstrated

| Aspect Ratio | Name | Common Uses |
|-----|------|-------------|
| 16:9 | Widescreen | YouTube videos, Modern TVs, Laptops |
| 4:3 | Standard | Old TVs, iPad, Classic monitors |
| 1:1 | Square | Instagram posts, Profile pictures |
| 9:16 | Portrait | TikTok, Instagram Stories, Snapchat |
| 21:9 | Ultra Wide | Cinema, Ultra-wide monitors |
| 3:2 | Photography | DSLR cameras, Print photos |

##  Features

- Interactive UI - Tap to switch between different aspect ratios
- Visual Representation - See each ratio as a colored container with accurate proportions
- Educational Content - Clear explanations and real-world examples
- Color-Coded - Each ratio has a unique color for easy identification
- Responsive Design - Works on phones and tablets

##  Getting Started

### Prerequisites

- Flutter SDK installed ([Installation Guide](https://docs.flutter.dev/get-started/install))
- Android Studio or VS Code with Flutter plugins
- Android Emulator or physical device

### Installation

1. Clone this repository:
```bash
git clone <your-repo-url>
cd class000
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 🎨 How to Use the App

1. **Launch** the application on your device
2. **Read** the information card at the top explaining aspect ratios
3. **View** the current aspect ratio displayed in the center
4. **Tap** different ratios in the bottom grid to see how they change
5. **Observe** how the colored box maintains exact proportions for each ratio

## 📚 Presentation Key Points

### Why Aspect Ratios Matter:

1. **Content Creation** - Choosing the right aspect ratio ensures your content displays correctly on different platforms
2. **User Experience** - Wrong aspect ratios can cause cropping, black bars, or distorted images
3. **Platform Requirements** - Each social media platform has preferred aspect ratios
4. **Screen Compatibility** - Different devices have different native aspect ratios

### Real-World Applications:

- **Video Production** - YouTube creators use 16:9 for maximum compatibility
- **Social Media** - Instagram Stories use 9:16 for full-screen mobile viewing
- **Photography** - 3:2 matches most DSLR sensors and print standards
- **Gaming** - 21:9 provides immersive ultra-wide gaming experience

## 🛠️ Technical Implementation

The app uses Flutter's `AspectRatio` widget to maintain exact proportions:

```dart
AspectRatio(
  aspectRatio: 16 / 9,  // Width divided by height
  child: Container(
    // Content maintains 16:9 ratio
  ),
)
```

## 📖 Flutter Resources

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Documentation](https://docs.flutter.dev/)
- [AspectRatio Widget](https://api.flutter.dev/flutter/widgets/AspectRatio-class.html)

## 🎓 Learning Outcomes

By using this app, students will understand:
- The mathematical concept of aspect ratios
- How aspect ratios affect visual content
- Industry standards for different media types
- Practical applications in digital content creation

## 👨‍💻 Project Structure

```
lib/
└── main.dart          # Main application code with AspectRatioDemo widget
```

## 🤝 Contributing

This is an educational project. Feel free to fork and modify for your own presentations!

## 📝 License

This project is created for educational purposes.

## 👤 Author

Created for a class presentation on Aspect Ratios by Sydney Erik Wamalwa

---

**Note:** This app is designed to run on Android devices. Make sure you have an Android emulator running or a physical device connected before launching the app.