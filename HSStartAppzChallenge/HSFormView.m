//
//  HSFormView.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSFormView.h"

const CGFloat X_PAADING = 15;
const CGFloat Y_PAADING = 15;

const CGFloat TEXTFIELD_HEIGHT = 30;


@interface HSFormView ()

@property (nonatomic, readwrite) UITextField *usernameTextField;
@property (nonatomic, readwrite) UITextField *passwordTextField;

@property (nonatomic, readwrite) UIButton *submitButton;

@end
@implementation HSFormView

-(instancetype) init{
    self = [super init];
    
    if(self){
    
        [self configureUserNameTextField];
        [self configurePasswordTextField];
        [self configureSubmitButton];
    }
    
    return self;
}

-(void) layoutSubviews{
    [super layoutSubviews];
    CGFloat textFieldWidth = CGRectGetWidth(self.frame) - (2 * X_PAADING);
    
    self.usernameTextField.frame = CGRectMake(X_PAADING, 100, textFieldWidth , TEXTFIELD_HEIGHT);
    self.passwordTextField.frame = CGRectMake(X_PAADING, CGRectGetMaxY(self.usernameTextField.frame) + Y_PAADING, textFieldWidth , TEXTFIELD_HEIGHT);
    
    self.submitButton.frame = CGRectMake(X_PAADING, CGRectGetMaxY(self.passwordTextField.frame) + 2 *Y_PAADING, textFieldWidth, TEXTFIELD_HEIGHT);

    
}

-(void) configureUserNameTextField{
    
    self.usernameTextField = [[UITextField alloc] init];
    self.usernameTextField.placeholder = @"Username";
    [self addSubview:self.usernameTextField];
}

-(void) configurePasswordTextField{
    
    self.passwordTextField = [[UITextField alloc] init];
    self.passwordTextField.secureTextEntry = YES;
    self.passwordTextField.placeholder = @"password";
    [self addSubview:self.passwordTextField];
}

-(void) configureSubmitButton{
    
    self.submitButton = [[UIButton alloc] init];
    [self.submitButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.submitButton setTitle:@"Submit" forState:UIControlStateNormal];
    [self addSubview:self.submitButton];
}

@end
