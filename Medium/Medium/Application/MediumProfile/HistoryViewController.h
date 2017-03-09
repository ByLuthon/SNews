//
//  HistoryViewController.h
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface HistoryViewController : UIViewController
{
    
    __weak IBOutlet UITableView *tbl;
}
- (IBAction)Back:(id)sender;

@end
