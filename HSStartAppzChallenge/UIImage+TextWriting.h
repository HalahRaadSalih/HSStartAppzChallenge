//
//  UIImage+TextWriting.h
//  HSStartAppzChallenge
//
//  Created by hala on 8/15/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (TextWriting)

+(UIImage*) writetText:(NSString*) text
               onImage:(UIImage*) image
               atPoint:(CGPoint) point;
@end
