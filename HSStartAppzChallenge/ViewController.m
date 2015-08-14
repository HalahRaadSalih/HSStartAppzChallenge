//
//  ViewController.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "ViewController.h"
#import "HSFormView.h"
#import "HSAnotherViewController.h"

@interface ViewController ()

@property (nonatomic, readwrite) HSFormView *formView;
@end

@implementation ViewController

-(void) loadView{
    [super loadView];
    self.view = [[HSFormView alloc] init];
    self.formView = (HSFormView*) self.view;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.formView.submitButton addTarget:self action:@selector(submitButtonTapped) forControlEvents:UIControlEventTouchUpInside];
}


-(void)submitButtonTapped{

    HSAnotherViewController *anotherViewController = [[HSAnotherViewController alloc] init];
    [self.navigationController pushViewController:anotherViewController animated:NO];
}
@end
