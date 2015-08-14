//
//  HSvalidator.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSvalidator.h"

@implementation HSvalidator

+(BOOL) validateText:(NSString *)text isAtLeast:(NSUInteger)length{
    
    return text.length >= length;
}
@end
