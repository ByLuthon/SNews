//
//  FollowTagsViewController.h
//  SNews
//
//  Created by macmini on 21/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface FollowTagsViewController : UIViewController
{
    NSMutableArray *arrTagsList;
    
    __weak IBOutlet UITableView *tbl;
}
- (IBAction)Back:(id)sender;

@end
