//
//  Login_SignupViewController.h
//  SNews
//
//  Created by macmini on 15/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface Login_SignupViewController : UIViewController <UIScrollViewDelegate>
{
    
    __weak IBOutlet UIView *view_segment;
    __weak IBOutlet UILabel *lbl_signin;
    __weak IBOutlet UILabel *lbl_signup;
    __weak IBOutlet UILabel *lbl_underline;
    
    __weak IBOutlet UIScrollView *scrl;
    IBOutlet UIView *view_login;
    __weak IBOutlet UITextField *txt_login;
    IBOutlet UIView *view_signup;
    __weak IBOutlet UITextField *txt_signup;
    
}
- (IBAction)Back:(id)sender;
- (IBAction)segmentTapped:(id)sender;
- (IBAction)SignIn:(id)sender;
- (IBAction)SignUp:(id)sender;

@end
