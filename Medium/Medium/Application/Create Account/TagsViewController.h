//
//  TagsViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface TagsViewController : UIViewController
{
    NSMutableArray *arrTags;
    NSMutableArray *arrSelectedTags;

    __weak IBOutlet UIButton *btn_next;
    __weak IBOutlet UIScrollView *scrl;
}

- (IBAction)Next:(id)sender;

@end
