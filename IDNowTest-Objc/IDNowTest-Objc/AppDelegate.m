//
//  AppDelegate.m
//  IDNowTest-Objc
//
//  Created by Taras Chernyshenko on 2/24/20.
//  Copyright © 2020 Salon Software. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    UIWindow *window = [UIWindow new];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:NULL];
    UIViewController *controller = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    window.rootViewController = controller;
    self.window = window;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
