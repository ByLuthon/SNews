//
//  SearchViewController.h
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface SearchViewController : UIViewController
{
    int TableMethod;
    
    NSMutableArray *arrSuggestedSearch;
    NSMutableArray *arrSearchHistory;
    
    NSMutableArray *arrStories;
    NSMutableArray *arrPeople;
    NSMutableArray *arrPublications;
    NSMutableArray *arrTags;

    __weak IBOutlet UITableView *tbl;
    __weak IBOutlet UISearchBar *searchbar;
    __weak IBOutlet UIView *view_navigation;
    __weak IBOutlet UISegmentedControl *segment;
}
- (IBAction)Back:(id)sender;
- (IBAction)segmentValuChanged:(id)sender;

@end
