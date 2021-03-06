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
#import "UIImage+TextWriting.h"
#import "ViewController.h"

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
    [self.someView.imageView setImage:[UIImage imageNamed:@"test.jpg"]];
    
    [self.someView.button addTarget:self
                             action:@selector(backButtonTapped)
                   forControlEvents:UIControlEventTouchUpInside];
}

-(void) tapHandler:(UITapGestureRecognizer*) recognizer{
    
    [self.someView.imageView setImage:[UIImage writetText:@"Hello World" onImage:self.someView.imageView.image
                                                  atPoint:self.someView.center]];

}

-(void)backButtonTapped{
    
    [self backButtonTapped];
    
}

-(void) backToViewController{
    
    ViewController *viewControl = [[ViewController alloc] init];
    [self presentViewController:viewControl animated:NO completion:nil];
    
}
@end
