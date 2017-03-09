//
//  TagsListViewController.h
//  SNews
//
//  Created by macmini on 10/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
#import "VENTokenField.h"

@interface TagsListViewController : UIViewController <VENTokenFieldDelegate, VENTokenFieldDataSource>
{
    int selectIndex;
    
    NSMutableArray *arrSuggestedSearch;
    
    __weak IBOutlet UITableView *tbl;
}
@property (weak, nonatomic) IBOutlet VENTokenField *tokenField;
@property (weak, nonatomic) IBOutlet UIView *view_navigation;
@property (strong, nonatomic) NSMutableArray *names;

- (IBAction)Done:(id)sender;

@end
