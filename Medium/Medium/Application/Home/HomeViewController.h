//
//  HomeViewController.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface HomeViewController : UIViewController
{
    __weak IBOutlet UITableView *tbl;
    
    NSMutableArray *arrTrending;
    NSMutableArray *arrPublication;
    
    IBOutlet UIView *view_header;

    __weak IBOutlet UICollectionView *collection_tranding;
    __weak IBOutlet UICollectionView *collection_publication;
}

- (IBAction)search:(id)sender;

- (IBAction)Publications:(id)sender;
- (IBAction)Personalize:(id)sender;



@end
