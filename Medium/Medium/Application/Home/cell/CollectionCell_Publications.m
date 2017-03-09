//
//  CollectionCell_Publications.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "CollectionCell_Publications.h"

@implementation CollectionCell_Publications

- (void)awakeFromNib
{
    //Publications
   // [APP_DELEGATE setBorderToView:_subview withBorderWidth:0.0 radious:4.0 color:[UIColor clearColor]];
    [APP_DELEGATE setBorderToView:_btn_follow withBorderWidth:2.0 radious:4.0 color:[UIColor whiteColor]];

    [super awakeFromNib];
    // Initialization code
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        NSArray *arrayOfViews;
        arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CollectionCell_Publications" owner:self options:nil];
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];
        
    }
    return self;
}

@end
