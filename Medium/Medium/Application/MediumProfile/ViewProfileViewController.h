//
//  ViewProfileViewController.h
//  SNews
//
//  Created by macmini on 07/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface ViewProfileViewController : UIViewController
{
    int selectedTab;

    NSMutableArray *arrSegment;

    IBOutlet UITableView *tbl_profile;
    IBOutlet UITableView *tbl_recommends;
    IBOutlet UITableView *tbl_responces;
}
@property (weak, nonatomic) IBOutlet UIView *view_navigation;
@property (weak, nonatomic) IBOutlet UIView *subview_header;

- (IBAction)Back:(id)sender;

- (IBAction)Edit:(id)sender;
- (IBAction)share:(id)sender;
- (IBAction)Following:(id)sender;
- (IBAction)Followers:(id)sender;

@end
