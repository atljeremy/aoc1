//
//  ViewController.m
//  aocproject4
//
//  Created by Jeremy Fox on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

const int kLoginButton   = 1;
const int kShowDateButton = 2;
const int kInfoButton    = 3;

@interface ViewController () {
    BOOL showInfoText;
}
@end

@implementation ViewController
@synthesize infoTextLabel;
@synthesize loginBtn;
@synthesize showDateBtn;
@synthesize infoBtn;
@synthesize usernameTextField;
@synthesize loginTextLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    showInfoText    = YES;
    loginBtn.tag    = kLoginButton;
    showDateBtn.tag = kShowDateButton;
    infoBtn.tag     = kInfoButton;
}

- (void)viewDidUnload
{
    [self setLoginBtn:nil];
    [self setShowDateBtn:nil];
    [self setInfoBtn:nil];
    [self setUsernameTextField:nil];
    [self setLoginTextLabel:nil];
    [self setInfoTextLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)onClick:(id)sender {
    
    switch ([sender tag]) {
        case kLoginButton:
            
            [self performLogin];
            break;
            
        case kShowDateButton:
            
            [self showDateAlert];
            break;
            
        case kInfoButton:
            
            if (showInfoText) {
                showInfoText = NO;
                [UIView animateWithDuration:0.5 animations:^{
                    infoTextLabel.alpha = 1.0;
                }];
            } else {
                showInfoText = YES;
                [UIView animateWithDuration:0.5 animations:^{
                    infoTextLabel.alpha = 0.0;
                }];
            }
            
            break;
            
        default:
            break;
    }
}

- (void)performLogin {
    if (usernameTextField.text.length > 0) {
        [usernameTextField resignFirstResponder];
        NSString *loggedInLabel = [NSString stringWithFormat:@"User: %@ has been logged in", usernameTextField.text, nil];
        loginTextLabel.text = loggedInLabel;
    } else {
        [usernameTextField resignFirstResponder];
        loginTextLabel.text = @"Username cannot be empty";
    }
}

- (void)showDateAlert {
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MMMM d, yyyy"];
    
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"HH:mm:ss zzzz"];
    
    NSDate *now = [[NSDate alloc] init];

    NSString *dateNow = [NSString stringWithFormat:@"%@ %@", [dateFormat stringFromDate:now], [timeFormat stringFromDate:now], nil];

    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Date"
                                                     message:dateNow
                                                    delegate:self
                                           cancelButtonTitle:@"Dismiss"
                                           otherButtonTitles:nil];
    
    [alert show];
}

@end
