# Impact POC (Brisbane Bin Collection)

This is a Flutter proof of concept (POC) project for one of the apps by Impact Apps. The POC demonstrates key Flutter development skills, including UI structuring, dynamic routing, reusable components, and data modeling.

## 🗑️ About
This POC replicates the Brisbane Bin Collection app. It includes:
- Dynamic list-based screens
- Custom calendar UI for bin schedules
- Reusable widgets and modular design
- App bar logic for drawer/back behavior
- Data-driven UI from local models

> Note: This is a front-end only POC. There is no real API; data is mocked and stored inside the `models/` folder to simulate API responses.

## 📁 Project Structure
```
lib/
├── src/
│   ├── core/              # App routing
│   ├── models/            # Data models and mock data
│   ├── views/
│   │   ├── screens/       # UI screens
│   │   └── widgets/       # Reusable widgets
```

## 📦 Packages Used
- [GoRouter](https://pub.dev/packages/go_router) — for routing
- [Shadcn UI for Flutter](https://pub.dev/packages/shadcn_ui) — for consistent design system components
- [Lucide Icons](https://pub.dev/packages/lucide_icons_flutter)
- [Intl](https://pub.dev/packages/intl)

## 🚀 Getting Started
```bash
git clone https://github.com/yourusername/impact-poc.git
cd impact-poc
flutter pub get
flutter run
```

## 🌐 Live Web Demo
You can try out the app in your browser with [Device Preview](https://pub.dev/packages/device_preview) enabled:

**🔗 [Live Demo on Web](https://impactpoc.web.app/)**
> Try selecting different devices from the sidebar to see how the app looks across screen sizes.

## 📱 Features Demo
- Multiple bin info screens (Yellow/Green collection)
- Custom swipeable calendar with colored bin days
- Drawer-based and back-based navigation
- Reusable components as much as possible.
- Fake API-like structure using model files

## 📝 Notes
- UI components are modular and live under `views/widgets/`
- All screen-level widgets reside under `views/screens/`

## 💡 Purpose
This project was created to showcase Flutter skills in a structured, production-style way as part of an app POC for Impact Apps.

---

Made with 💙 by [Harkirat](https://github.com/0xharkirat)