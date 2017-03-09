//
//  FollowViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface FollowViewController : UIViewController
{
    NSMutableArray *arrList;
    
    __weak IBOutlet UITableView *tbl;
}
- (IBAction)Back:(id)sender;
- (IBAction)Next:(id)sender;

@end
