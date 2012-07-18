//
//  ViewController.m
//  AOC Project 3
//
//  Created by Jeremy Fox on 7/18/12.
//  Copyright (c) 2012 Jeremy Fox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //*****************************************************************************
    // 4. Call the Append function with two NSStrings. Capture the result and
    // display a UIAlertView with the appended string using displayAlertWithString.
    //*****************************************************************************
    NSString *stringOne = @"Hello, ";
    NSString *stringTwo = @"Jeremy Fox!";
    [self displayAlertWithString:[self append:stringOne withString:stringTwo] title:@"Appened Strings" withTag:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

# pragma mark - AOC Project 3 Custom Methods

- (void)add
{
    //*****************************************************************************
    // 6. Call the Add function passing in two integer values. Capture the return
    // of this function into a variable.
    //*****************************************************************************
    NSInteger numberOne = 3;
    NSInteger numberTwo = 8;
    NSNumber *sum = [self add:numberOne withNumber:numberTwo];
    
    //*****************************************************************************
    // 7. Bundle the returned integer into an NSNumber and then convert it to a
    // NSString and pass it to the DisplayAlertWithString function.
    //
    // 8. Give it some text for the title. The message will read, "The number is 00".
    // Replace the 00 with the integer passed into the function.
    //*****************************************************************************
    NSString *numberString  = [NSString stringWithFormat:@"%@", sum];
    NSString *numberMessage = [NSString stringWithFormat:@"The number is %@", numberString];
    [self displayAlertWithString:numberMessage title:@"Added Numbers" withTag:1];
}

- (void)compare {
    //*****************************************************************************
    // 9. Call the Compare function with two integer values. If Compare returns true,
    // display an UIAlertView both with the input values and the result using the
    // DisplayAlertWithString function
    //*****************************************************************************
    NSInteger one = 5;
    NSInteger two = 5;
    BOOL compared = [self compare:one withNumber:two];
    if (compared) {
        NSString *message = [NSString stringWithFormat:@"First number was: %d. Second number was: %d. The result is: %d.", one, two, compared];
        [self displayAlertWithString:message title:@"Compared Numbers" withTag:2];
    }
}

//*****************************************************************************
// 1. Create a function called Add. This function will take two NSInteger
// or int types and return the result of an addition between these two.
//*****************************************************************************
- (NSNumber *)add:(NSInteger)numberOne withNumber:(NSInteger)numberTwo {
    return [NSNumber numberWithInteger:(numberOne + numberTwo)];
}

//*****************************************************************************
// 2. Create a function called Compare that takes two NSInteger values.
// Return true or false based on whether the values are equal.
//*****************************************************************************
- (BOOL)compare:(NSInteger)numberOne withNumber:(NSInteger)numberTwo {
    BOOL comparedBool;
    
    if (numberOne == numberTwo) {
        comparedBool = YES;
    } else {
        comparedBool = NO;
    }
    
    return comparedBool;
}

//*****************************************************************************
// 3. Create a function called Append. This function will take two NSStrings
// and return a new NSString containing the appended strings using an
// NSMutableString and the Append method.
//*****************************************************************************
- (NSString *)append:(NSString *)stringOne withString:(NSString *)stringTwo {
    return [NSString stringWithFormat:@"%@ %@", stringOne, stringTwo];
}

//*****************************************************************************
// 5. Create a function called DisplayAlertWithString. This function will take
// as a parameter an NSString.
//
//   DisplayAlertWithString Function
//      1. Take the passed in NSString and display it in the alert view
//      2. Create an UIAlertView
//*****************************************************************************
- (void)displayAlertWithString:(NSString *)message title:(NSString *)title withTag:(NSInteger)tag {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:title
                                                     message:message
                                                    delegate:self
                                           cancelButtonTitle:@"Dismiss"
                                           otherButtonTitles:nil];
    [alert setTag:tag];
    [alert show];
}

# pragma mark - UIAlertViewDelegate Methods

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (alertView.tag) {
        case 0:
            [self add];
            break;
            
        case 1:
            [self compare];
            break;
            
        default:
            break;
    }
}

@end
