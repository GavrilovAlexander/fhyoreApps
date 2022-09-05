# FhcoreApps

[![CI Status](http://img.shields.io/travis/Felipe Tumonis/FhcoreApps.svg?style=flat)](https://travis-ci.org/Felipe Tumonis/FhcoreApps)
[![Version](https://img.shields.io/cocoapods/v/FhcoreApps.svg?style=flat)](http://cocoapods.org/pods/FhcoreApps)
[![License](https://img.shields.io/cocoapods/l/FhcoreApps.svg?style=flat)](http://cocoapods.org/pods/FhcoreApps)
[![Platform](https://img.shields.io/cocoapods/p/FhcoreApps.svg?style=flat)](http://cocoapods.org/pods/FhcoreApps)


## Description

FhcoreApps is an iOS library created to present a view controller inside your application to show your developer page of apps. It is very similar to the App Store visual.

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

Just #import the FhcoreApps.h header, and call the one of the methods described below to present the view controller.

```objective-c
#import <FhcoreApps/FhcoreApps.h>

...

- (IBAction)buttonPressed:(id)sender {

    FhcoreApps *moreAppsManager = [FhcoreApps sharedManager];

    [moreAppsManager presentMoreAppsInViewController:self
                                         developerId:@"318226300" // You can find your developer id in your iTunes link of your apps: https://itunes.apple.com/us/artist/felipe-tumonis/id318226300?mt=8
                                     descriptionType:FTDescriptionTypeScreenshots
                                          completion:nil];

    /* 
    // OR
    [moreAppsManager presentMoreAppsInViewController:self
                                              appIds:@[@"app_id_1", @"app_id_2", ...] // The ids of the apps you want to show
                                     descriptionType:FTDescriptionTypeText
                                          completion:nil];
    */

    moreAppsManager.showActionButton = NO;
    moreAppsManager.showPrice = NO;
    moreAppsManager.title = NSLocalizedString(@"More apps", nil);

    moreAppsManager.willDismissBlock = ^{
        NSLog(@"will dismiss more apps view controller");
    };

    moreAppsManager.didDismissBlock = ^{
        NSLog(@"did dismiss more apps view controller");
    };

    moreAppsManager.didSelectAppBlock = ^(NSString *appId){
        NSLog(@"did select app id: %@", appId);
    };
}
```

## Requirements

This library requires iOS 7 and ARC.

## Installation

FhcoreApps is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FhcoreApps"
```

Or, simply copy all the files into your project.

## Author

Felipe Tumonis, ftumonis@gmail.com

## License

FhcoreApps is available under the MIT license. See the LICENSE file for more info.
