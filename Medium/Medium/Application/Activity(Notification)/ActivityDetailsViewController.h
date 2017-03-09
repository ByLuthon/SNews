//
//  ActivityDetailsViewController.h
//  SNews
//
//  Created by macmini on 16/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface ActivityDetailsViewController : UIViewController
{
    IBOutlet UIView *view_Scrl;
    
    __weak IBOutlet UIScrollView *scrl;
    __weak IBOutlet UIButton *btn_bookmarks;
    __weak IBOutlet UIView *view_box;
}
- (IBAction)back:(id)sender;
- (IBAction)bookmarks:(id)sender;
- (IBAction)writeResponces:(id)sender;

@end
