//
//  CollectionCell_Trending.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "CollectionCell_Trending.h"

@implementation CollectionCell_Trending

- (void)awakeFromNib
{
    //Tranding
    //[APP_DELEGATE setBorderToView:_subview withBorderWidth:0.0 radious:4.0 color:[UIColor clearColor]];
    
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = CGRectMake(0, 0, _subview.frame.size.width, _subview.frame.size.height);
    gradient.colors = @[(id)[[UIColor clearColor] CGColor],
                        (id)[[UIColor clearColor] CGColor],
                        (id)[[UIColor clearColor] CGColor],
                        (id)[[UIColor lightGrayColor] CGColor]];
    [_img_list.layer insertSublayer:gradient atIndex:0];

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
        arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CollectionCell_Trending" owner:self options:nil];
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
