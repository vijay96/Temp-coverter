//
//  AppDelegate.h
//  TemperatureConverter
//
//  Created by Vijay Chavan on 02/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TemperatureController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    TemperatureController *controller;
}

@property (strong, nonatomic) UIWindow *window;

@end
