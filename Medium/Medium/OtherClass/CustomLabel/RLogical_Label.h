//
//  RLogical_Label.h
//  PracticeApp
//
//  Created by Bhavesh Nayi on 23/01/17.
//  Copyright © 2017 Bhavesh Nayi. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface RLogical_Label : UILabel

@property (nonatomic, assign) IBInspectable CGFloat leftEdge;
@property (nonatomic, assign) IBInspectable CGFloat rightEdge;
@property (nonatomic, assign) IBInspectable CGFloat topEdge;
@property (nonatomic, assign) IBInspectable CGFloat bottomEdge;

@property (nonatomic, assign) UIEdgeInsets edgeInsets;

@end

