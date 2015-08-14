//
//  UIAlertView+Alerts.h
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Alerts)

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle;

+ (void)showErrorAlertWithMessage:(NSString *)message;

@end
