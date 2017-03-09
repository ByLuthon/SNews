//
//  PublicationDetailsViewController.h
//  SNews
//
//  Created by macmini on 21/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "common.h"
#import "HHHorizontalPagingView.h"

@interface PublicationDetailsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *sectionArr;
    
    NSMutableArray *tblArray;
    NSMutableArray *buttonArray;
    
    HHHorizontalPagingView *pagingView;
    
    __weak IBOutlet UIView *subview_headerBottom;
    __weak IBOutlet UIView *subview_header;
    __weak IBOutlet UIView *view_navigation;
}
- (IBAction)Back:(id)sender;
- (IBAction)follow:(id)sender;

@end
