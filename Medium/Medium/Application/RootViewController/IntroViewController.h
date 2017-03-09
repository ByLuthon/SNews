//
//  IntroViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface IntroViewController : UIViewController
{

    __weak IBOutlet UIButton *btnSignin;
    __weak IBOutlet UITextField *txt_email;
    
    __weak IBOutlet UIView *subview_message;
    __weak IBOutlet UILabel *lbl_message;
    __weak IBOutlet UIButton *btn_wrongEmail;
}
- (IBAction)SignIn:(id)sender;
- (IBAction)close:(id)sender;
- (IBAction)wrongEmail:(id)sender;


@end
