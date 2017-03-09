//
//  ProfileViewController.h
//  LinkedinClone
//
//  Created by macmini on 27/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
#import "DTParallaxTableView.h"

@interface ProfileViewController : UIViewController
{
    __weak IBOutlet UIView *view_navigation;
    __weak IBOutlet UISearchBar *searchbar;
    __weak IBOutlet UILabel *lbl_grediantBG;
    __weak IBOutlet UILabel *lbl_OtheUserGradiantBG;
    __weak IBOutlet UILabel *lbl_oppuserName;
    __weak IBOutlet UILabel *lbl_oppUserDetails;
    __weak IBOutlet UILabel *lbl_oPpUserLocation;
    __weak IBOutlet UILabel *lbl_navigationTitle;
    __weak IBOutlet UIProgressView *progressView;
    __weak IBOutlet UIButton *btn_back;
    __weak IBOutlet UIImageView *img_oppUserProfile;
    __weak IBOutlet UIImageView *img_user;

    
    IBOutlet UIView *view_tableHeader;
    IBOutlet UIView *view_OtherUserHeader;
    
    int changeImage;
    BOOL isshow;
}
@property (nonatomic) CGFloat previousScrollViewYOffset;

@property (nonatomic, retain) NSString *strUserName;
@property (nonatomic, retain) NSMutableDictionary *getUserDict;


@property (weak, nonatomic) IBOutlet DTParallaxTableView *tbl;

- (IBAction)Back:(id)sender;
- (IBAction)search:(id)sender;
- (IBAction)userImageTapped:(id)sender;
- (IBAction)OppUserImageTapped:(id)sender;
- (IBAction)userEditTapped:(id)sender;
- (IBAction)oppUserEditTapped:(id)sender;
- (IBAction)EditCoverImage:(id)sender;

@end
