//
//  DRAppDelegate.m
//  DRFormattedLabel
//
//  Created by Daniel R on 10/27/13.
//  Copyright (c) 2013 Daniel R. All rights reserved.
//

#import "DRAppDelegate.h"
#import "DRViewController.h"

@implementation DRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[DRViewController alloc] init];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
