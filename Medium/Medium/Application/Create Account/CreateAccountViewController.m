//
//  CreateAccountViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController
@synthesize strEmail;

- (void)viewDidLoad
{
    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setInitParam
{
    if (![strEmail isEqualToString:@""])
    {
        txt_email.text = strEmail;
    }
    
    [APP_DELEGATE setBorderToView:btn_createAccount withBorderWidth:2.0 radious:4.0 color:kColorLightGreen];
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

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)createAccount:(id)sender
{
    TagsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"TagsViewController"];
    [self.navigationController pushViewController:move animated:YES];
}
@end
