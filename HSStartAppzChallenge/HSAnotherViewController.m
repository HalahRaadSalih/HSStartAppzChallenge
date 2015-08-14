//
//  HSAnotherViewController.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSAnotherViewController.h"
#import "HSSomeView.h"
#import "UIAlertView+Alerts.h"

@interface HSAnotherViewController ()

@property (nonatomic, readwrite) HSSomeView *someView;
@property (nonatomic) UITapGestureRecognizer *tapGestureRecognizer;
@end

@implementation HSAnotherViewController

-(void) loadView{
    [super loadView];
    
    self.view = [[HSSomeView alloc] init];
    self.someView = (HSSomeView*) self.view;
    
}

-(void) viewDidLoad{
    [super viewDidLoad];
    self.tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    [self.someView.imageView addGestureRecognizer:self.tapGestureRecognizer];
}

-(void) tapHandler:(UITapGestureRecognizer*) recognizer{
    
    [UIAlertView showAlertWithTitle:@"" message:@"HelloWorld" cancelButtonTitle:@"Ok"];
}
@end
