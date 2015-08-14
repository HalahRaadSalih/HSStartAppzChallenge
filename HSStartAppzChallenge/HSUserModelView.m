//
//  HSUserModelView.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSUserModelView.h"
#import "HSvalidator.h"

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
        
        NSLog(@"user name is is at least 8 characters? %d",[HSvalidator validateText:self.usernameText isAtLeast:8]);
        NSLog(@"password is is at least 8 characters? %d",[HSvalidator validateText:self.passwordText isAtLeast:8]);

    }
    return self;
}
@end
