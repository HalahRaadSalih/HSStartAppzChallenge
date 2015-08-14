//
//  HSUserModelView.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSUserModelView.h"

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
        if(self.user.username.length > 8){
            self.usernameText = self.user.username;
            
            NSLog(@"user name is %@", self.usernameText);
        }
        
        if(self.user.password.length > 8){
            self.passwordText = self.user.password;
            NSLog(@"password is %@", self.passwordText);

        }
    }
    return self;
}
@end
