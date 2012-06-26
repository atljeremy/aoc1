//
//  AppDelegate.m
//  aoc1
//
//  Created by Jeremy Fox on 6/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //***************************************************************
    // 1. Create a new Empty Application Project
    //***************************************************************
    
    // Your looking at it! :)
    
    //***************************************************************
    //2. Create a variable using the float data type. Cast the float
    // to an int and using NSLog, output both the initial float value
    // as well as the int value.
    //***************************************************************
    
    float myFloat = 30.5f;
    int   myInt   = (int) myFloat;
    NSLog(@"My Original float: %f. My float being casted to and int: %i.", myFloat, myInt);
    
    //***************************************************************
    //3. Perform an AND, OR comparison. Use float, int and BOOL types.
    // BOOL values should be YES or NO and written in all caps.
    //***************************************************************
    
    //***************************************************************
    //4. Use an if, else if and else check using any of the data types
    // of your choice.
    //***************************************************************
    
    //***************************************************************
    //5. Perform a single for loop printing out values to the console
    //***************************************************************
    
    //***************************************************************
    //6. Perform a nested loop printing out values to the console
    //***************************************************************
    
    //***************************************************************
    //7. Perform a while loop that increments an int variable and 
    // outputs to the console.
    //***************************************************************
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
