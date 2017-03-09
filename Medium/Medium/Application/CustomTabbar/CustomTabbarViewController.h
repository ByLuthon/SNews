//
//  CustomTabbarViewController.h
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface CustomTabbarViewController : UIViewController
{
    
    __weak IBOutlet UIScrollView *scrl;
    __weak IBOutlet UIView *view_tabbar;
    
    
    BOOL isHome;
    BOOL isBookmarks;
    BOOL isActivity;
    BOOL isProfile;
    
}
- (IBAction)Home:(id)sender;
- (IBAction)Bookmarks:(id)sender;
- (IBAction)AddActivity:(id)sender;
- (IBAction)Notification:(id)sender;
- (IBAction)Profile:(id)sender;

@end
