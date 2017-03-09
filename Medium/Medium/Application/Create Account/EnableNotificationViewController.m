//
//  EnableNotificationViewController.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "EnableNotificationViewController.h"

@interface EnableNotificationViewController ()

@end

@implementation EnableNotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)skip:(id)sender
{
    /*
    HomeViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeViewController"];
    [self.navigationController pushViewController:move animated:YES];
     */
    CustomTabbarViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomTabbarViewController"];
    [self.navigationController pushViewController:move animated:YES];

}
@end
