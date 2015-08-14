//
//  HSUserModelView.h
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HSUser.h"

@interface HSUserModelView : NSObject

-(instancetype) initWithUser:(HSUser *) user;

@property (nonatomic, readonly) NSString *usernameText;
@property (nonatomic, readonly) NSString *passwordText;
@property (nonatomic, readonly) HSUser *user;
@end
