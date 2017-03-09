//
//  CustomImageview.m
//
//
//  Created by Bhavesh Nayi on 09/01/17.
//  Copyright © 2017 Bhavesh Nayi. All rights reserved.
//

#import "CustomImageview.h"

IB_DESIGNABLE
@implementation CustomImageview

@dynamic borderColor,borderWidth,cornerRadius;

-(void)setBorderColor:(UIColor *)borderColor{
    [self.layer setBorderColor:borderColor.CGColor];
    self.layer.masksToBounds = YES;

}

-(void)setBorderWidth:(CGFloat)borderWidth{
    [self.layer setBorderWidth:borderWidth];
    self.layer.masksToBounds = YES;
}

/* This is for set ShadowColor to the button
-(void)setShadowColor:(UIColor *)shadowColor{
    [self.layer setShadowColor:shadowColor.CGColor];
}

-(void)setShadowWidth:(CGFloat)shadowRadius{
    [self.layer setShadowRadius:shadowRadius];
}
*/

-(void)setCornerRadius:(CGFloat)cornerRadius{
    [self.layer setCornerRadius:cornerRadius];
    self.layer.masksToBounds = YES;
}

@end

