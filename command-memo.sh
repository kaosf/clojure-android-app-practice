lein droid doall # compilation and deployment

lein droid # show all tasks

lein droid compile

lein droid deploy # install, run and forward-port

lein droid install
lein droid run
lein droid forward-port

## tasks
# new                     Creates new Android project given the project's name and package name.
# help                    Shows the list of possible `lein droid` subtasks.
# crunch-resources        Updates the pre-processed PNG cache.
# create-dex              Creates a DEX file from the compiled .class files.
# release                 Metatask. Builds, packs and deploys the release version of the project.
# deploy                  Metatask. Runs `install, `run`, `forward-port`.
# forward-port            Binds a port on the local machine to the port on the device.
# create-apk              Creates a deployment-ready APK file.
# run                     Launches the installed APK on the connected device.
# sign-apk                Signs APK file with the key taken from the keystore.
# build                   Metatask. Builds dependencies, compiles and creates DEX (if not a library).
# repl                    Connects to a remote nREPL server on the device using REPLy.
# init                    Creates project.clj file in an existing Android project folder.
# code-gen                Generates the R.java file from the resources.
# zipalign-apk            Aligns resources locations on 4-byte boundaries in the APK file.
# compile                 Compiles both Java and Clojure source files.
# doall                   Metatask. Performs all Android tasks from compilation to the deployment.
# install                 Installs the APK on the only (or specified) device or emulator.
# jar                     Metatask. Packages compiled Java files and Clojure sources into JAR.
# gather-dependencies     Compatibility task. Copies the dependency libraries into the libs/ folder.
# apk                     Metatask. Crunches and packages resources, creates, signs and aligns an APK.
# package-resources       Packages application resources.
# create-obfuscated-dex   Creates an obfuscated DEX file from the compiled .class files.
