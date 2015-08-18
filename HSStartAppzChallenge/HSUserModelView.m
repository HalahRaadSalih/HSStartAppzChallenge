//
//  HSUserModelView.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSUserModelView.h"
#import "HSvalidator.h"
#import "UIAlertView+Alerts.h"

@interface HSUserModelView ()

@property (nonatomic, readwrite) NSString *usernameText;
@property (nonatomic, readwrite) NSString* passwordText;
@property (nonatomic, readwrite) HSUser *user;

@end
@implementation HSUserModelView

-(instancetype) initWithUser:(HSUser *)user{
    
    self = [super init];
    
    if(self){
        
        self.user = user;
        
        self.usernameText = self.user.username;
        self.passwordText = self.user.password;
        
        self.isValid = [self isuserNameValid] && [self isPasswordValid];
        
        if(![self isuserNameValid]){
            
            [UIAlertView showErrorAlertWithMessage:@"Username must be aleast 8 characters"];
        }
        
        if(![self isPasswordValid]){
            
            [UIAlertView showErrorAlertWithMessage:@"Password must be aleast 8 characters"];

        }

    }
    
    return self;
}

-(BOOL) isuserNameValid{
    
    return [HSvalidator validateText:self.usernameText isAtLeast:8];
}

-(BOOL) isPasswordValid{
    
    return [HSvalidator validateText:self.passwordText isAtLeast:8];
}


@end
