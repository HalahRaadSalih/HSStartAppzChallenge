//
//  HSSomeView.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/14/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "HSSomeView.h"

@interface HSSomeView ()

@property (nonatomic, readwrite) UIImageView *imageView;
@property (nonatomic, readwrite) UIButton *button;

@end

@implementation HSSomeView
-(instancetype) init{
    
    self = [super init];
    
    if(self){
        [self configureImageView];
        [self configureButton];
    }
    
    return self;
}


-(void) layoutSubviews{
    [super layoutSubviews];
    CGFloat width = CGRectGetWidth(self.frame) - (2 * 30);
    self.imageView.frame = CGRectMake(30, 80, width , width);
    self.button.frame = CGRectMake(30, CGRectGetMaxY(self.imageView.frame) + 30, width, 30);
}
-(void) configureImageView{
    
    self.imageView = [[UIImageView alloc] init];
    self.imageView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self addSubview:self.imageView];
}

-(void) configureButton{
    
    self.button = [[UIButton alloc] init];
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.button setTitle:@"Back" forState:UIControlStateNormal];
    
    [self addSubview:self.button];
}
@end
