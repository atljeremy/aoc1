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
- (BOOL)compare:(NSInteger)numberOne withNumber:(NSInteger)numberTwo;
- (NSString *)append:(NSString *)stringOne withString:(NSString *)stringTwo;
- (void)displayAlertWithString:(NSString *)message andTitle:(NSString *)title withTag:(NSInteger)tag;

@end
