blugin:cls:

> Configure project :newbanker_react-native-navigation
Warning: The 'kotlin-android-extensions' Gradle plugin is deprecated. Please use this migration guide (https://goo.gle/kotlin-android-extensions-deprecation) to start working with View Binding (https://developer.android.com/topic/libraries/view-binding) and the 'kotlin-parcelize' plugin.

> Configure project :newbanker_react-native-simple-toast
WARNING: Configuration 'compile' is obsolete and has been replaced with 'implementation' and 'api'.
It will be removed in version 5.0 of the Android Gradle plugin.
For more information, see http://d.android.com/r/tools/update-dependency-configurations.html.

> Configure project :react-native-orientation
WARNING: Configuration 'compile' is obsolete and has been replaced with 'implementation' and 'api'.
It will be removed in version 5.0 of the Android Gradle plugin.
For more information, see http://d.android.com/r/tools/update-dependency-configurations.html.

Deprecated Gradle features were used in this build, making it incompatible with Gradle 7.0.
Use '--warning-mode all' to show the individual deprecation warnings.
See https://docs.gradle.org/6.2/userguide/command_line_interface.html#sec:command_line_warnings

FAILURE: Build failed with an exception.

* What went wrong:
Could not determine the dependencies of task ':app:compileDebugJavaWithJavac'.
> Could not resolve all task dependencies for configuration ':app:debugCompileClasspath'.
   > Could not find any version that matches com.facebook.react:react-native:0.63.+.
     Versions that do not match:
       - 0.71.0-rc.0
       - 0.20.1
       - 0.20.0
       - 0.19.1
       - 0.19.0
       - + 13 more
     Required by:
         project :app
         project :app > project :newbanker_react-native-simple-toast
         project :app > project :react-native-community_cameraroll
         project :app > project :react-native-community_viewpager
         project :app > project :react-native-picker_picker
         project :app > project :react-native-image-colors
         project :app > project :react-native-orientation
   > Could not find com.github.DylanCaiCoding:ActivityResultLauncher:1.1.2.
     Required by:
         project :app
   > Could not find com.bonree.agent.android:agent-lib:8.19.0.
     Required by:
         project :app

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 1m 26s

error Failed to install the app. Make sure you have the Android development environment set up: https://reactnative.dev/docs/environment-setup. Run CLI with --verbose flag for more details.
Error: Command failed: gradlew.bat app:installDebug -PreactNativeDevServerPort=8081

error Command failed with exit code 1.
info Visit https://yarnpkg.com/en/docs/cli/run for documentation about this command.
