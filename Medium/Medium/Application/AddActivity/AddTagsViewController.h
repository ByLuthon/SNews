//
//  AddTagsViewController.h
//  SNews
//
//  Created by macmini on 10/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface AddTagsViewController : UIViewController
{
    

    __weak IBOutlet UIView *subview_bottom;
    __weak IBOutlet UIView *subview_tags;
    __weak IBOutlet UIButton *btn_AddTags;
}
- (IBAction)Tags:(id)sender;

@end
