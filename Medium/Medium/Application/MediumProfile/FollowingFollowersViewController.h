//
//  FollowingFollowersViewController.h
//  SNews
//
//  Created by macmini on 16/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface FollowingFollowersViewController : UIViewController
{
    __weak IBOutlet UITableView *tbl;
    
    NSMutableArray *arrUser;
    
}
@property (weak, nonatomic) IBOutlet UILabel *lbl_navigationTitle;
@property (readwrite) BOOL isFollowing;
- (IBAction)back:(id)sender;

@end
