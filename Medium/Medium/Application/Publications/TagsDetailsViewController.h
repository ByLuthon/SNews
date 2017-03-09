//
//  TagsDetailsViewController.h
//  SNews
//
//  Created by macmini on 21/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "common.h"

@interface TagsDetailsViewController : UIViewController
{
    
    __weak IBOutlet UILabel *lbl_navigationTitle;
    __weak IBOutlet UISegmentedControl *segmentController;
    __weak IBOutlet UITableView *tbl;
    
    int TableMethod;
}
@property (nonatomic, retain) NSMutableDictionary *getDict;
@property (nonatomic, retain) NSString *strTitle;

- (IBAction)Back:(id)sender;
- (IBAction)headerFollowing:(id)sender;
- (IBAction)segmentValueChanged:(id)sender;

@end
