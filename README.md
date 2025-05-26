# BloodType

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.9.1-orange.svg" />
    <img src="https://img.shields.io/badge/Xcode-15.2.X-orange.svg" />
    <img src="https://img.shields.io/badge/platforms-iOS-brightgreen.svg?style=flat" alt="iOS" />
    <a href="https://www.linkedin.com/in/rodrigo-silva-6a53ba300/" target="_blank">
        <img src="https://img.shields.io/badge/LinkedIn-@RodrigoSilva-blue.svg?style=flat" alt="LinkedIn: @RodrigoSilva" />
    </a>
</p>

A Swift application for iOS. An application developed exclusively for simple study purposes on SegmentedControl. The application shows the compatibility of blood types, for those who can donate and from those who can receive.


| Demo | Light | Dark |
| --- | --- | --- |
| ![Demo](https://github.com/user-attachments/assets/4e8a8ff3-f36f-4a2f-94f3-e4add4cc3c8e) | ![Light](https://github.com/user-attachments/assets/92422cc0-32cc-4636-a3d5-61c83e20d91c) | ![Dark](https://github.com/user-attachments/assets/ff7399b5-933d-425a-b22f-f2e83049a75a) |


## Contents

- [Features](#features)
- [Requirements](#requirements)
- [Functionalities](#functionalities)
- [Setup](#setup)

## Features

- View Code (UIKit)
- Modern SegmentedControl
- Custom elements
- Dark Mode

## Requirements

- iOS 17.0 or later
- Xcode 15.0 or later
- Swift 5.0 or later

## Functionalities

- [x] **Blood Type Selection**: Allows the user to select a blood type using a `UISegmentedControl`.
- [x] **Donation Compatibility**: Displays information about which blood types can donate to the selected type.
- [x] **Reception Compatibility**: Displays information about which blood types the selected type can donate to.
- [x] **Clear Information**: Includes a button that clears the displayed donation and reception compatibility information.
- [x] **UIKit Interface**: The app is built using native UIKit components for a smooth and responsive user experience.

## Setup

First of all download and install Xcode and then clone the repository:

```sh
$ git@github.com:diggosilva/BloodType.git
```

After cloning, do the following:

```sh
$ cd <diretorio-base>/BloodType/
$ open BloodType.xcodeproj/
```
