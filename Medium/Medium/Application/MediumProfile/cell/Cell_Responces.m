//
//  Cell_Responces.m
//  SNews
//
//  Created by macmini on 07/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "Cell_Responces.h"

@implementation Cell_Responces

- (void)awakeFromNib
{
    [APP_DELEGATE setBorderToView:_subview_question withBorderWidth:0.5 radious:4.0 color:[UIColor grayColor]];
    
    
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
