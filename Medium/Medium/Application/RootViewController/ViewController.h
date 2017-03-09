//
//  ViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface ViewController : UIViewController <UIScrollViewDelegate>
{
    NSMutableArray *arrTags;
    NSMutableArray *arrSelectedTags;

    BOOL isSignup;
    BOOL isShowPopup;

    __weak IBOutlet UIScrollView *scrl;
    IBOutlet UIView *subview_Scrl;
    __weak IBOutlet UIButton *btn_getStarted;
    
    __weak IBOutlet UILabel *lbl_signin_title;
    
    __weak IBOutlet UIView *subview_twitter;
    __weak IBOutlet UIView *subview_facebook;
    __weak IBOutlet UIView *subview_google;

    __weak IBOutlet UIView *subview_social;
    __weak IBOutlet UIView *subview_tags;
}
- (IBAction)GetStarted:(id)sender;
- (IBAction)AlreadyMember_SingIn:(id)sender;

- (IBAction)twitter:(id)sender;
- (IBAction)facebook:(id)sender;
- (IBAction)Google:(id)sender;
- (IBAction)signInWithEmail:(id)sender;
- (IBAction)TermsAndPrivacy:(id)sender;

@end

