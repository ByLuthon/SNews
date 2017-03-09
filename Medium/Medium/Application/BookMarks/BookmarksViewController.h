//
//  BookmarksViewController.h
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface BookmarksViewController : UIViewController
{
    NSMutableArray *arrBokkmarks;
    
    __weak IBOutlet UITableView *tbl;
    __weak IBOutlet UIButton *btn_back;
}
@property (readwrite) BOOL isshowBack;
- (IBAction)Back:(id)sender;

@end
