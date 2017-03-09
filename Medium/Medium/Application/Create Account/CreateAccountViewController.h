//
//  CreateAccountViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface CreateAccountViewController : UIViewController
{
    
    __weak IBOutlet UITextField *txt_email;
    __weak IBOutlet UITextField *txt_name;
    __weak IBOutlet UITextField *txt_username;
    __weak IBOutlet UIButton *btn_createAccount;
}

@property (nonatomic, retain) NSString *strEmail;

- (IBAction)Back:(id)sender;
- (IBAction)createAccount:(id)sender;

@end
