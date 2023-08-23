# Web view application

This simple Android application demonstrates how to create a button that, when clicked, redirects the user to another website. Additionally, it includes instructions on how to add necessary app permissions to the AndroidManifest.xml file.

## Getting Started

To get started with this application, follow these steps:

1. flutter create webviewapp

2. cd webviewapp

3. flutter run

## Usage

1. Launch the application on your Android device.

2. You will see a single button labeled "VISIT YIASCM.IN" 

3. Tap the button.

4. You will be redirected to the wesite "yiascm.in", demonstrating the basic button click redirection.

## Adding App Permissions

In order to use certain features or access certain resources on an Android device, you may need to declare permissions in your `AndroidManifest.xml` file.

Here's how you can add app permissions to your `AndroidManifest.xml` file:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    package="com.example.buttononclickredirect">

    <uses-permission android:name="android.permission.QUERY_ALL_PACKAGES"/>

    <application>
    </application>
</manifest>
```

