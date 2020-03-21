# Change App Icon/Label/Package Name

## Android 

### App Label
`android -> app -> src -> main -> AndroidManifest.xml` - edit `android:label`

### Package Name
`android -> app -> src -> main -> AndroidManifest.xml` - edit `package`
[Link](https://medium.com/@skyblazar.cc/how-to-change-the-package-name-of-your-flutter-app-4529e6e6e6fc)

### App Icon
1. Create an Image Asset (Launcher Icon Adaptive and Legacy) in Android Studio - [Link](https://stackoverflow.com/a/55054303/5981661)
2. `android -> app -> src -> main -> AndroidManifest.xml` - change if needed `android:icon="@mipmap/ic_launcher"`

## iOS
Open file `Runner.xcodeproj` in Xcode.

### App Label
Change `Bundle name` in `Runner -> Info.plist` file

### Package Name
`Bundle Identifier` in `Runner -> General` tab

### App Icon
[Link](https://stackoverflow.com/a/55054303/5981661)

[Icon Generator](https://appicon.co/)
