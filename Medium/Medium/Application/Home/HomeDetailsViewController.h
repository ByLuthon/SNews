//
//  HomeDetailsViewController.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface HomeDetailsViewController : UIViewController
{
    NSMutableArray *arrTags;

    __weak IBOutlet UIImageView *img_user;
    __weak IBOutlet UILabel *lbl_userName;
    
    
    __weak IBOutlet UIScrollView *scrl;
    IBOutlet UIView *view_Scrl;
    __weak IBOutlet UIView *view_tags;
    __weak IBOutlet UIButton *btn_like;
    __weak IBOutlet UIButton *btn_likeCount;
    __weak IBOutlet UIButton *btn_edit;
    __weak IBOutlet UIButton *btn_follow;
    
    
}
@property (weak, nonatomic) IBOutlet UIView *subview_bottomTag;
@property (weak, nonatomic) IBOutlet UIView *subview_bottom;
@property (nonatomic, retain) NSMutableDictionary *getDict;

@property (readwrite) BOOL isfromResponces;

@property (weak, nonatomic) IBOutlet UITableView *tbl;
- (IBAction)userTapped:(id)sender;
- (IBAction)Back:(id)sender;
- (IBAction)like:(id)sender;
- (IBAction)bookmarks:(id)sender;
- (IBAction)FollowUser:(id)sender;
- (IBAction)writeResponces:(id)sender;
- (IBAction)Edit:(id)sender;

@end
