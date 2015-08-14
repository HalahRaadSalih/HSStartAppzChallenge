//
//  UIAlertView+Alerts.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "UIAlertView+Alerts.h"

@implementation UIAlertView (Alerts)

+ (void)showAlertWithTitle:(NSString *)title
                   message:(NSString *)message
         cancelButtonTitle:(NSString *)cancelButtonTitle {
    
    [[[self alloc] initWithTitle:title
                         message:message
                        delegate:nil
               cancelButtonTitle:cancelButtonTitle
               otherButtonTitles:nil, nil] show];
}

+ (void)showErrorAlertWithMessage:(NSString *)message {
    
    [self showAlertWithTitle:@"Error"
                     message:message
           cancelButtonTitle:@"Okay"];
}
@end
