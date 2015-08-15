//
//  UIImage+TextWriting.m
//  HSStartAppzChallenge
//
//  Created by hala on 8/15/15.
//  Copyright (c) 2015 Halah Salih. All rights reserved.
//

#import "UIImage+TextWriting.h"

@implementation UIImage (TextWriting)

+(UIImage*) writetText:(NSString *)text
               onImage:(UIImage *)image
               atPoint:(CGPoint) point{
    
    
    CGRect rect = CGRectMake(point.x, point.y, image.size.width, image.size.height);
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();

    
    NSDictionary *att = @{NSFontAttributeName:[UIFont boldSystemFontOfSize:36.f],
                          NSForegroundColorAttributeName:[UIColor blackColor]};
    
    UIGraphicsBeginImageContextWithOptions(image.size, YES, 0.0f);

    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [text drawInRect:rect withAttributes:att];
    
    newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();

    return newImage;
}
@end
