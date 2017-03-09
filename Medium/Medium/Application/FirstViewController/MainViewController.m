//
//  MainViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    self.navigationController.navigationBarHidden = TRUE;
    
    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setInitParam
{
    /*
    {
        CALayer *layer = btn_twitter.layer;
        layer.shadowOffset = CGSizeMake(1, 1);
        layer.shadowColor = [UIColor lightGrayColor].CGColor;
        layer.shadowRadius = btn_twitter.layer.frame.size.height/4;
        layer.shadowOpacity = 1;
        layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    }
    
    {
        CALayer *layer = btn_fb.layer;
        layer.shadowOffset = CGSizeMake(2.0, 2.0);
        layer.shadowColor = [UIColor grayColor].CGColor;
        layer.shadowRadius = btn_fb.layer.frame.size.height/4;
        layer.shadowOpacity = 1;
        layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    }
    
    {
        CALayer *layer = btn_google.layer;
        layer.shadowOffset = CGSizeMake(1, 1);
        layer.shadowColor = [UIColor lightGrayColor].CGColor;
        layer.shadowRadius = btn_google.layer.frame.size.height/4;
        layer.shadowOpacity = 1;
        layer.shadowPath = [UIBezierPath bezierPathWithRect:layer.bounds].CGPath;
    }
     */
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)twitter:(id)sender
{
    CreateAccountViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAccountViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

- (IBAction)facebook:(id)sender
{
    CustomTabbarViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomTabbarViewController"];
    [self.navigationController pushViewController:move animated:YES];

    /*
    CreateAccountViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAccountViewController"];
    [self.navigationController pushViewController:move animated:YES];
     */
}

- (IBAction)google:(id)sender
{
    CreateAccountViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAccountViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

- (IBAction)signinWithEmail:(id)sender
{
    /*
    IntroViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"IntroViewController"];
    [self presentViewController:move animated:YES completion:nil];
     */
    
    Login_SignupViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"Login_SignupViewController"];
    [self.navigationController pushViewController:move animated:YES];

}
@end
