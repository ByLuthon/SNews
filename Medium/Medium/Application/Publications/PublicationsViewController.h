//
//  PublicationsViewController.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface PublicationsViewController : UIViewController
{
    NSMutableArray *arrList;
    NSMutableArray *arrPublicationList;
    
    __weak IBOutlet UITableView *tbl;
}
@property (readwrite) BOOL isPublicationList;

@property (weak, nonatomic) IBOutlet UILabel *lbl_message;
@property (strong, nonatomic) IBOutlet UIView *subview_header;
- (IBAction)Back:(id)sender;
- (IBAction)AllPublications:(id)sender;

@end
