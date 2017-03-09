//
//  PersonalizeViewController.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface PersonalizeViewController : UIViewController
{
    NSMutableArray *arrTags;
    NSMutableArray *arrPeople;
    NSMutableArray *arrPublications;
    
    int TableMethod;
    __weak IBOutlet UITableView *tbl;
    
    __weak IBOutlet UISegmentedControl *segmentController;
    IBOutlet UIView *subview_header;
    __weak IBOutlet UIButton *btn_headertitle;
}
- (IBAction)Back:(id)sender;
- (IBAction)segmentValueChanged:(id)sender;
- (IBAction)headerTapped:(id)sender;

@end
