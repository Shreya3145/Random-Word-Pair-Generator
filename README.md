# My-First-Flutter-Project
Welcome to the Flutter Word Pair Generator! This project is a simple Flutter application that generates random word pairs, showcasing basic Flutter development concepts.

## Purpose
- Learn the fundamentals of Flutter development.
- Experiment with widgets, state management, and UI design.
- Create a fun and interactive project to generate random word combinations.

## Features
- Generate random word pairs with a button press.
- Favorite and save word pairs.
- Simple, responsive UI built with Flutter widgets.

## Prerequisites
- Flutter SDK (Version 3.x or higher recommended)
- Dart (Installed with Flutter)
- Android Studio, Visual Studio Code, or any IDE of your choice.

## Project Structure
- **lib/** – Contains the main application code.
- **pubspec.yaml** – Lists dependencies and project configurations.
- **android/**, **ios/** – Platform-specific code.
- **test/** – Unit and widget tests.

## Dependencies
- `english_words` – A Flutter package for generating word pairs.

To add it, run:
```bash
flutter pub add english_words
```

[Watch the demo video](/assets/Preview.mp4)

## Problems I faced and wasted a lot of time
1. Gradle version and java version did not match
2. Xcode is needed for iphone simulator
3. Android Studio is needed for android simulator
4. To connect your own phone as a simulator, you need to enable developer options, USB debugging and connect to the laptop to run the app
5. Without class and object knowledge we cannot do this code
6. I accidently deleted pubspec.yaml and wasted an entire day 
7. I had to downgrade java version to match my gradle, but later I upgraded gradle to match the existing java version
8. I didn't even know gradle was needed
9. I got atleast 20 build errors just during the creation of a flutter project
10. I cried
11. Learn some basic flutter commands
12. Set proper architecture if using Xcode (if you don't want both (arm64 and x86_64) for the same platform)
13. If needed add path
```
nano ~/.zshrc   # if you're using zsh (default on macOS)
```
or
```
nano ~/.bash_profile  # if you're using bash
```


## Know these flutter commands 

0. flutter -h //gives a list of flutter commands

1. flutter doctor //tells the requirements

2. flutter —versions //flutter version 
   dart --versions //dart version

First go to command palette and type "Flutter : Emulators" or "Flutter : Devices" based on your need,<br>
3. flutter emulators <br>
4. flutter run //runs the emulator

5. flutter clean //cleans and deletes like literally and gives so much red lines, just run "flutter pub get" to clear them up!

6. flutter pub outdated //checks the pubspec whether the dependencies are outdated or not <br>
   flutter pub upgrade //upgrades the pubspec whether the dependencies <br>
   flutter pub get //gets the dependencies

7. flutter packages get

8. flutter create //to create a project 
