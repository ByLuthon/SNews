//
//  FriendsProfileViewController.h
//  SNews
//
//  Created by macmini on 17/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface FriendsProfileViewController : UIViewController <UITableViewDelegate,UITableViewDataSource, UIActionSheetDelegate>
{
    NSMutableArray *arrSegment;
    
    IBOutlet UIView *subview_header;
    __weak IBOutlet UIView *view_navgation;
}


- (IBAction)Back:(id)sender;

- (IBAction)Tap:(id)sender;
- (IBAction)Following:(id)sender;
- (IBAction)Followers:(id)sender;
- (IBAction)setting:(id)sender;
- (IBAction)follow:(id)sender;
- (IBAction)share:(id)sender;

@end
