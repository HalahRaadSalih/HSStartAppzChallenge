//
//  ViewController.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "ViewController.h"
#import "HSFormView.h"

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
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
