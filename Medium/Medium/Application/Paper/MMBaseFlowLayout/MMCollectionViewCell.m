//
//  MMCollectionViewCell.m
//  MMPaper
//
//  Created by mukesh mandora on 04/03/15.
//  Copyright (c) 2015 com.muku. All rights reserved.
//

#import "MMCollectionViewCell.h"

@implementation MMCollectionViewCell
/*
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    indexData = -1;
    if(self)
    {
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 4;
        self.clipsToBounds = YES;
        
        UIImageView *backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"46955447-background-image.png"]];
        self.backgroundView = backgroundView;
        
        UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(10, 60, self.frame.size.width-20, 40)];
        lbl.backgroundColor = [UIColor whiteColor];
        lbl.text = @"dsfsdfsdfsdf dsf dsfdsfs";
        [self addSubview:lbl];
        
    }
    return self;
}
*/
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
        NSArray *arrayOfViews;
        arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"MMCollectionViewCell" owner:self options:nil];
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

-(void)setIndex:(NSUInteger )index withSize:(CGSize)size
{
    indexData=index;
    cellSize=size;
}

-(void)layout{
    
}
@end
