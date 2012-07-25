//
//  ViewController.h
//  aocproject4
//
//  Created by Jeremy Fox on 7/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton    *loginBtn;
@property (weak, nonatomic) IBOutlet UIButton    *showDateBtn;
@property (weak, nonatomic) IBOutlet UIButton    *infoBtn;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UILabel     *loginTextLabel;
@property (weak, nonatomic) IBOutlet UILabel     *infoTextLabel;

- (IBAction)onClick:(id)sender;
@end
