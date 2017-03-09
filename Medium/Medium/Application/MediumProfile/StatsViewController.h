//
//  StatsViewController.h
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
#import "HHHorizontalPagingView.h"

@interface StatsViewController : UIViewController
{
    int selectedTab;

    __weak IBOutlet UIView *view_navigation;
    __weak IBOutlet UIView *subview_header;
    
    NSMutableArray *arrSegment;

    
    __weak IBOutlet UIView *subview_graph;

    IBOutlet UITableView *tbl_stories;
    IBOutlet UITableView *tbl_responces;
}
- (IBAction)Back:(id)sender;

@end
