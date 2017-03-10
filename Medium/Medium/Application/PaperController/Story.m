//
//  Story.m
//  Medium
//
//  Created by macmini on 10/03/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "Story.h"

@implementation Story

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //self.frame = CGRectMake(0, 0, WIDTH, HEIGHT);
        
        [self setBackgroundColor:[UIColor whiteColor]];
        [self.layer setCornerRadius:4.0];
        [self.layer setBorderColor:[UIColor blackColor].CGColor];
        [self.layer setBorderWidth:0.5];
        
    }
    return self;
}

@end
