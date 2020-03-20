# Change App Icon/Label/Package Name

## App Label

`android -> app -> src -> main -> AndroidManifest.xml` - edit `android:label`

## Package Name

`android -> app -> src -> main -> AndroidManifest.xml` - edit `package`

## App Icon

1. Create a drawable Image Asset - [Link](https://developer.android.com/studio/write/image-asset-studio#create-actionbartab)
2. `android -> app -> src -> main -> AndroidManifest.xml` - add drawable `android:icon="@drawable/ic_action_name"`
