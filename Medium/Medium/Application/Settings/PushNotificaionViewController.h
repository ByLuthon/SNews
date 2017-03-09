//
//  PushNotificaionViewController.h
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface PushNotificaionViewController : UIViewController
{
    NSMutableArray *arrNotification;
    
    __weak IBOutlet UIView *subview_disable;
    __weak IBOutlet UITableView *tbl;
}
- (IBAction)Back:(id)sender;
- (IBAction)EnablePush:(id)sender;

@end
