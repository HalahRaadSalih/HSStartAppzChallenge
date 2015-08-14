//
//  HSUser.h
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HSUser : NSObject

@property (nonatomic, readonly) NSString *username;
@property (nonatomic, readonly) NSString *password;

-(instancetype) initWithUsername:(NSString*) username
                     andPassword:(NSString*) password;
@end
