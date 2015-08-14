//
//  HSAnotherViewController.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSAnotherViewController.h"
#import "HSSomeView.h"
@interface HSAnotherViewController ()

@property (nonatomic, readwrite) HSSomeView *someView;
@end

@implementation HSAnotherViewController

-(void) loadView{
    [super loadView];
    
    self.view = [[HSSomeView alloc] init];
    self.someView = (HSSomeView*) self.view;
    
}
@end
