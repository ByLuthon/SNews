//
//  Cell_Home.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "Cell_Home.h"

@implementation Cell_Home

- (void)awakeFromNib
{
    [APP_DELEGATE setBorderToView:_imguser withBorderWidth:0.0 radious:_imguser.frame.size.height/2 color:[UIColor clearColor]];
    

    
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
