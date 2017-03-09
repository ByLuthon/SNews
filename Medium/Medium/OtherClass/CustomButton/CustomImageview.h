//
//  CustomImageview.h
//  
//
//  Created by Bhavesh Nayi on 09/01/17.
//  Copyright © 2017 Bhavesh Nayi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomImageview : UIImageView


@property (nonatomic) IBInspectable UIColor *borderColor;
@property (nonatomic) IBInspectable CGFloat borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadius;

@end

