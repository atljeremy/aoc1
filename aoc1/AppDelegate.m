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
@synthesize rootView , navController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    //***************************************************************
    // 1. Create a new Empty Application Project
    //***************************************************************
    
    // You're looking at it! :)
    
    //***************************************************************
    // 2. Create a variable using the float data type. Cast the float
    // to an int and using NSLog, output both the initial float value
    // as well as the int value.
    //***************************************************************
    
    float speed        = 46.68f;
    int   roundedSpeed = (int) speed;
    int   speedLimit    = 40;
    int   difference   = roundedSpeed - 40;
    NSLog(@"I was riding my motorcyle the other day and was caught speeding. The officer who stopped me said that his radar had clicked me doing %f, in a %i MPH zone. He said that he would round that down to %i, but he would still have to write me a citation for traveling %i MPH over the speed limit.", speed, speedLimit, roundedSpeed, difference);
    
    //***************************************************************
    // 3. Perform an AND, OR comparison. Use float, int and BOOL types.
    // BOOL values should be YES or NO and written in all caps.
    //***************************************************************
    
    float mySpeed            = speed;     // just reusing value from #2
    int   limit              = speedLimit; // just reusing value from #2
    BOOL  iWasGoingToFast    = YES;
    BOOL  iWasNotGoingToFast = NO;
    
    BOOL theCopWasRightForPullingMeOver = ((int) mySpeed > limit);
    BOOL wasIReallyBeingACarefulDriver  = (iWasGoingToFast || iWasNotGoingToFast); // the OR operation
    
    // the AND operation
    if(theCopWasRightForPullingMeOver && wasIReallyBeingACarefulDriver) {
        NSLog(@"I wasn't happy about getting the ticket. But, I know I was going to fast.");
    }
    
    //***************************************************************
    // 4. Use an if, else if and else check using any of the data types
    // of your choice.
    //***************************************************************
    
    BOOL  iShouldAcceptTheTicket = YES;
    BOOL  iShouldRunForTheBorder = NO;
    float myTicketAmount         = 75.50f;
    
    if (iShouldAcceptTheTicket) {
        NSLog(@"I decided to accept the ticket like a good person and go about my merry way.");
    } else if(iShouldRunForTheBorder) {
        NSLog(@"I decide there was no way I was accepting this ticket! I'm running for the border!");        
    } else {
        NSLog(@"After thinking about it, %f isn't really that much. I guess I'll just accept the ticket and pay it.", myTicketAmount);
    }
    
    //***************************************************************
    // 5. Perform a single for loop printing out values to the console
    //***************************************************************
    
    int count = 10;
    NSLog(@"The officer thought I was under the influence, so he made me count to %i...", count);
    
    for (int i=0; i<count; i++) {
        NSLog(@"%i", i+1);
    }
    
    //***************************************************************
    // 6. Perform a nested loop printing out values to the console
    //***************************************************************
    
    NSArray *speeds           = [NSArray arrayWithObjects:@"to fast",
                                                          @"the speed limit",
                                                          @"to slow", nil];
    NSArray *possibleOutcomes = [NSArray arrayWithObjects:@"I got a ticket as a result of going",
                                                          @"If I had seen the speed limit and maintained my speed appropriately, my speed would have been",
                                                          @"I can't stand when people drive", nil];
    
    for (NSString *currentSpeed in speeds) {
        for (int i=0; i<possibleOutcomes.count; i++) {
            NSString *currentOutcome = [possibleOutcomes objectAtIndex:i];
            NSLog(@"%@ %@", currentOutcome, currentSpeed);
        }
    }
    
    //***************************************************************
    // 7. Perform a while loop that increments an int variable and 
    // outputs to the console.
    //***************************************************************
    
    int  iGotAnotherTicket      = 1;
    int  numberOfTickets        = 5;
    BOOL iAmGoingToKeepSpeeding = YES;
    
    while (iAmGoingToKeepSpeeding) {
        
        NSLog(@"Oh no! I just got another ticket. That makes %i this week!", iGotAnotherTicket);
        
        if (iGotAnotherTicket == numberOfTickets) {
            iAmGoingToKeepSpeeding = NO;
            NSLog(@"Ok, I've learned me lesson. I'm never speeding again!");
        }
        iGotAnotherTicket++;
    }
    
    //***************************************************************
    // Standard (boilerplate) code to create and load a new window
    //
    // I added a rootViewController so the app would stop complaing 
    // about not having a root view controller at the end of 
    // application launch.
    //***************************************************************
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    rootView      = [[UIViewController alloc] init];
    rootView.title = @"Jeremy Fox - AOC1";
    navController = [[UINavigationController alloc] initWithRootViewController:rootView];
    
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
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
