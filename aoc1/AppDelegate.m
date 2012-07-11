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
    //###############################################################
    //
    // START WEEK TWO ACTIVITY CODE
    //
    //###############################################################
    
    //***************************************************************
    // 1. Change the background color of the view to any color you wish.
    //***************************************************************
    self.window                 = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor scrollViewTexturedBackgroundColor];
    rootView                    = [[UIViewController alloc] init];
    rootView.title              = @"Jeremy Fox - AOC1";
    navController               = [[UINavigationController alloc] initWithRootViewController:rootView];
    self.window.rootViewController = navController;
    
    //***************************************************************
    // CGFloat's used for sizing labels
    //***************************************************************
    fullWidth = rootView.view.bounds.size.width;
    leftWidth = fullWidth / 3;
    rightWidth = (fullWidth - leftWidth) - 10;
    
    //***************************************************************
    // Book Information and UILabels
    //***************************************************************
    
    //***************************************************************
    // 1. Create a UILabel and place it at the top of the view. This is 
    // used as the title of the book. Center the text for this label.
    //***************************************************************
    UILabel *title        = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, fullWidth, 30)];
    title.text            = @"The DaVinci Code";
    title.textColor       = [UIColor whiteColor];
    title.backgroundColor = [UIColor blueColor];
    title.font            = [UIFont fontWithName:@"Helvetica" size:20.0];
    title.textAlignment   = UITextAlignmentCenter;
    [rootView.view addSubview:title];
    
    //***************************************************************
    // 2. Create another label that contains the text "Author:" with the 
    // text right justified.
    //***************************************************************
    UILabel *author        = [[UILabel alloc] initWithFrame:CGRectMake(0, 70, leftWidth, 25)];
    author.text            = @"Author:";
    author.textColor       = [UIColor redColor];
    author.backgroundColor = [UIColor greenColor];
    author.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    author.textAlignment   = UITextAlignmentRight;
    [rootView.view addSubview:author];
    
    //***************************************************************
    // 3. Create a UILabel to the right of the author title label and 
    // have it contain the name of the author of the book you chose. 
    // This text will be left justified.
    //***************************************************************
    UILabel *danBrwon        = [[UILabel alloc] initWithFrame:CGRectMake(leftWidth + 10, 70, rightWidth, 25)];
    danBrwon.text            = @"Dan Brown";
    danBrwon.textColor       = [UIColor greenColor];
    danBrwon.backgroundColor = [UIColor darkGrayColor];
    danBrwon.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    danBrwon.textAlignment   = UITextAlignmentLeft;
    [rootView.view addSubview:danBrwon];
    
    //***************************************************************
    // 4. Create a UILabel on the next line called "Published:". This 
    // text is right justified.
    //***************************************************************
    UILabel *published        = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, leftWidth, 25)];
    published.text            = @"Published:";
    published.textColor       = [UIColor purpleColor];
    published.backgroundColor = [UIColor yellowColor];
    published.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    published.textAlignment   = UITextAlignmentRight;
    [rootView.view addSubview:published];
    
    //***************************************************************
    // 5. Create a label next to the Published label and add the text of
    // when the book was published. This text is left justified.
    //***************************************************************
    UILabel *date        = [[UILabel alloc] initWithFrame:CGRectMake(leftWidth + 10, 100, rightWidth, 25)];
    date.text            = @"March 28th, 2006";
    date.textColor       = [UIColor cyanColor];
    date.backgroundColor = [UIColor blackColor];
    date.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    date.textAlignment   = UITextAlignmentLeft;
    [rootView.view addSubview:date];
    
    //***************************************************************
    // 6. Create a UILabel with the text "Summary". This text is left
    // justified.
    //***************************************************************
    UILabel *summary        = [[UILabel alloc] initWithFrame:CGRectMake(0, 135, leftWidth, 25)];
    summary.text            = @"Summary:";
    summary.textColor       = [UIColor blackColor];
    summary.backgroundColor = [UIColor lightGrayColor];
    summary.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    summary.textAlignment   = UITextAlignmentLeft;
    [rootView.view addSubview:summary];

    //***************************************************************
    // 7. Create another UILabel that contains a small summary of the 
    // book's plot. This text is centered and should span multiple lines.
    //***************************************************************
    UILabel *desc        = [[UILabel alloc] initWithFrame:CGRectMake(0, 160, fullWidth, 120)];
    desc.text            = @"Symbologist Robert Langdon and French cryptologist Sophie Neveu investigate the bizarre murder of the curator of the Louvre to discover a trail of clues hidden in the works of Leonardo da Vinci which would eventually unveil an unbelievable secret.";
    desc.textColor       = [UIColor orangeColor];
    desc.backgroundColor = [UIColor groupTableViewBackgroundColor];
    desc.shadowColor     = [UIColor darkTextColor];
    desc.shadowOffset    = CGSizeMake(1, 1);
    desc.font            = [UIFont fontWithName:@"Helvetica" size:15.0];
    desc.lineBreakMode   = UILineBreakModeWordWrap;
    desc.numberOfLines   = 6;
    desc.textAlignment   = UITextAlignmentCenter;
    [rootView.view addSubview:desc];
    
    //***************************************************************
    // Labels and Arrays
    //***************************************************************
    
    //***************************************************************
    // 1. Create an NSArray of 5 items talked about in the book. These
    // items will be NSStrings. Add the items to the array.
    //***************************************************************
    NSArray *arrayItems = [[NSArray alloc] initWithObjects:@"Leonardo Da Vinci", 
                                                           @"Religion", 
                                                           @"Priory of Sion", 
                                                           @"Knights of Templar",
                                                           @"The Louvre", nil];
    
    //***************************************************************
    // 2. Create a variable of type NSMutableString and allocate it. 
    // Loop through the NSArray you created and append each of these
    // items to your NSMutableString separated by commas. 
    // (For example: dinosaurs, jeeps, storm, giant turkeys, 
    // eating people)
    //***************************************************************
    NSMutableString *listOfItems = [[NSMutableString alloc] init];
    for (int i=0; i<arrayItems.count; i++) {
        NSString *item = [arrayItems objectAtIndex:i];
        if (arrayItems.count == i+1) {
            [listOfItems appendString:item];
        } else {
            [listOfItems appendString:[[NSString alloc] initWithFormat:@"%@, ", item]];
        }
    }
    
    //***************************************************************
    // 3. Create a label with the text "List of items" and add it to the
    // parent view. Make sure the text is left justified.
    //***************************************************************
    UILabel *items        = [[UILabel alloc] initWithFrame:CGRectMake(0, 290, leftWidth, 25)];
    items.text            = @"List of items:";
    items.textColor       = [UIColor magentaColor];
    items.backgroundColor = [UIColor whiteColor];
    items.font            = [UIFont fontWithName:@"Helvetica" size:18.0];
    items.textAlignment   = UITextAlignmentRight;
    [rootView.view addSubview:items];
    
    //***************************************************************
    // 4. Create another label beneath and set the text to the 
    // NSMutableString text. Increase the number of lines if 
    // necessary. Make sure the text in this label is centered
    //***************************************************************
    UILabel *itemsList        = [[UILabel alloc] initWithFrame:CGRectMake(0, 315, fullWidth, 65)];
    itemsList.text            = listOfItems;
    itemsList.textColor       = [UIColor darkTextColor];
    itemsList.backgroundColor = [UIColor underPageBackgroundColor];
    itemsList.font            = [UIFont fontWithName:@"Helvetica" size:15.0];
    itemsList.textAlignment   = UITextAlignmentCenter;
    itemsList.lineBreakMode   = UILineBreakModeWordWrap;
    itemsList.numberOfLines   = 2;
    [rootView.view addSubview:itemsList];
    
    //###############################################################
    //
    // END WEEK TWO ACTIVITY CODE
    //
    //###############################################################
    
    
    
    //###############################################################
    //
    // START WEEK ONE ACTIVITY CODE
    //
    //###############################################################
    
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
    //
    // END WEEK ONE ACTIVITY CODE
    //
    //***************************************************************
    
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
