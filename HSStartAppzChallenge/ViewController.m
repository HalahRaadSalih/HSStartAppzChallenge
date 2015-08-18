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
#import "HSUserModelView.h"
#import "HSUser.h"

@interface ViewController ()<UITextFieldDelegate>

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
    [self.formView.submitButton addTarget:self
                                   action:@selector(submitButtonTapped)
                         forControlEvents:UIControlEventTouchUpInside];
    
    self.formView.usernameTextField.delegate = self;
    self.formView.passwordTextField.delegate = self;
}


-(void)submitButtonTapped{
    
    HSUser *user = [[HSUser alloc] initWithUsername:self.formView.usernameTextField.text
                                        andPassword:self.formView.passwordTextField.text];
    
    HSUserModelView *userModelView = [[HSUserModelView alloc] initWithUser:user];
    
  
    if(userModelView.isValid){
        
        [self openSomeViewController];
    }
    
}

-(void) openSomeViewController{
    
    HSAnotherViewController *anotherViewController = [[HSAnotherViewController alloc] init];
    [self presentViewController:anotherViewController animated:NO completion:nil];

}
@end
