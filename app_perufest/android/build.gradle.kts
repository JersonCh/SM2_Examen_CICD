import java.util.Properties
import java.io.FileInputStream
import com.android.build.gradle.LibraryExtension

// Provide legacy Flutter extension values for plugins expecting Groovy build scripts
extensions.extraProperties.apply {
    set(
        "flutter",
        mapOf(
            "compileSdkVersion" to 36,
            "compileSdk" to 36,
            "minSdkVersion" to 23,
            "minSdk" to 23,
            "targetSdkVersion" to 36,
            "targetSdk" to 36,
            "ndkVersion" to "27.0.12077973"
        )
    )
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")

    plugins.withId("com.android.library") {
        extensions.configure<com.android.build.gradle.LibraryExtension>("android") {
            val flutterExt = rootProject.extensions.extraProperties.get("flutter")
            extensions.extraProperties.set("flutter", flutterExt)
        }
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
