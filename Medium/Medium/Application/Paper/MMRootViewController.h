//
//  MMRootViewController.h
//  MMPaper
//
//  Created by mukesh mandora on 04/03/15.
//  Copyright (c) 2015 com.muku. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMRootViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>
//@property (nonatomic)BOOL toogle;
@property (nonatomic) NSArray *recipes;
-(void)setCollectionType:(BOOL)isLarge;
@end
