//
//  TrendingViewController.h
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
#import "DTParallaxTableView.h"


@interface TrendingViewController : UIViewController 
{
    BOOL isshow;
    IBOutlet UIView *subview_header;
    __weak IBOutlet UILabel *lbl_navigationTitle;
    __weak IBOutlet UILabel *lbl_navigationBG;
    
    __weak IBOutlet UILabel *lbl_headerTitle;
    __weak IBOutlet UILabel *lbl_HeaderSubtitle;
}

- (IBAction)Back:(id)sender;

@property (nonatomic, retain) NSMutableDictionary *dataDict;
@property (weak, nonatomic) IBOutlet UIView *view_navigationTitle;

@property (weak, nonatomic) IBOutlet DTParallaxTableView *tbl;

@end
