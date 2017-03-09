//
//  Cell_follow.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "Cell_follow.h"

@implementation Cell_follow

- (void)awakeFromNib
{
    [APP_DELEGATE setBorderToView:_img_icon withBorderWidth:0.0 radious:_img_icon.frame.size.height/2 color:[UIColor clearColor]];
    
    [APP_DELEGATE setBorderToView:_btn_plus withBorderWidth:1.0 radious:4.0 color:kColorLightGreen];

    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
