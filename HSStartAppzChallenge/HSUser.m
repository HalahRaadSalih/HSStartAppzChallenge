//
//  HSUser.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSUser.h"

@interface HSUser ()

@property (nonatomic, readwrite) NSString *username;
@property (nonatomic, readwrite) NSString *password;
@end
@implementation HSUser

-(instancetype) initWithUsername:(NSString *)username andPassword:(NSString *)password{
    self = [super init];
    if(self){
        
        self.username = username;
        self.password = password;
    }
    return self;
}
@end
