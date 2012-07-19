//
//  ViewController.h
//  AOC Project 3
//
//  Created by Jeremy Fox on 7/18/12.
//  Copyright (c) 2012 Jeremy Fox. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

- (NSNumber *)add:(NSInteger)numberOne withNumber:(NSInteger)numberTwo;
- (NSString *)append:(NSString *)stringOne withString:(NSString *)stringTwo;
- (BOOL)compare:(NSInteger)numberOne withNumber:(NSInteger)numberTwo;
- (void)displayAlertWithString:(NSString *)message title:(NSString *)title withTag:(NSInteger)tag;

@end
