//
//  MainViewController.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface MainViewController : UIViewController
{
    
    __weak IBOutlet UIButton *btn_twitter;
    __weak IBOutlet UIButton *btn_fb;
    __weak IBOutlet UIButton *btn_google;
}
- (IBAction)twitter:(id)sender;
- (IBAction)facebook:(id)sender;
- (IBAction)google:(id)sender;
- (IBAction)signinWithEmail:(id)sender;

@end
