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
