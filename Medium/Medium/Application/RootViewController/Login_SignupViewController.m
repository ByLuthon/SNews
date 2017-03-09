//
//  Login_SignupViewController.m
//  SNews
//
//  Created by macmini on 15/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "Login_SignupViewController.h"

@interface Login_SignupViewController ()

@end

@implementation Login_SignupViewController

- (void)viewDidLoad
{
    [self initParam];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
#pragma mark - Init
-(void)initParam
{
    view_login.frame = CGRectMake(0, 0, WIDTH, scrl.frame.size.height);
    view_signup.frame = CGRectMake(WIDTH*1, 0, WIDTH, scrl.frame.size.height);
    
    [scrl addSubview:view_login];
    [scrl addSubview:view_signup];
    
    scrl.contentSize = CGSizeMake(WIDTH * 2 , scrl.frame.size.height);
    scrl.pagingEnabled = TRUE;
    
    CGPoint scrollPoint = CGPointMake(0, 0);
    [scrl setContentOffset:scrollPoint animated:YES];
    [scrl setDelegate:self];//Set delegate
    
    //Set Line Under Button
    [self setLineFrameUnderMenu:lbl_signin];
    
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

-(void)resetButtontitleColor
{
    lbl_signin.textColor = [UIColor darkGrayColor];
    lbl_signup.textColor = [UIColor darkGrayColor];
}

#pragma mark - UnderLine Button
-(void)setLineFrameUnderMenu:(UILabel *)lbl
{
    [self resetButtontitleColor];
    lbl.textColor = kColorLightGreen;
    
    [UIView animateWithDuration:0.2
                          delay:0.0
                        options: UIViewAnimationOptionCurveEaseIn
                     animations:^{
                         lbl_underline.frame = CGRectMake(lbl.frame.origin.x, lbl_underline.frame.origin.y, lbl.frame.size.width, 2.0);
                     }
                     completion:^(BOOL finished){
                     }];
}
#pragma mark - ScrollView Delegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrllView
{
    if (scrllView == scrl)
    {
        CGFloat pageWidth = scrllView.frame.size.width;
        int page = floor((scrllView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
        
        //NSLog(@"%f",scrllView.contentOffset.x);
        
        CGPoint scrollPoint;
        
        
        [self resetButtontitleColor];
        UILabel *lbl;
        
        
        if (page == 0)
        {
            lbl = lbl_signin;
            lbl.textColor = [UIColor blackColor];
            
            scrollPoint = CGPointMake(0, 0);
            [scrl setContentOffset:scrollPoint animated:YES];
        }
        else if (page == 1)
        {
            lbl = lbl_signup;
            lbl.textColor = [UIColor blackColor];
            
            scrollPoint = CGPointMake(WIDTH*1, 0);
            [scrl setContentOffset:scrollPoint animated:YES];
        }

        [UIView animateWithDuration:0.2
                              delay:0.0
                            options: UIViewAnimationOptionCurveEaseIn
                         animations:^{
                             lbl_underline.frame = CGRectMake(lbl.frame.origin.x, lbl_underline.frame.origin.y, lbl.frame.size.width, 2.0);
                         }
                         completion:^(BOOL finished){
                         }];
        
        //LoadingMenu = page+1;
        [self switchingtheSegments:page+1];
    }
}

- (IBAction)segmentTapped:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    int indx = 0;
    indx = (int)btn.tag;
    
    
    switch (indx)
    {
        case 1:
            [self setLineFrameUnderMenu:lbl_signin];
            break;
        case 2:
            
            [self setLineFrameUnderMenu:lbl_signup];
            break;
            
        default:
            break;
    }
    
    [self switchingtheSegments:indx];
    
}



#pragma mark - switchSegments
-(void)switchSegments:(UIButton *)btn
{
    int indx = 0;
    indx = (int)btn.tag;
    [self switchingtheSegments:indx];
}
-(void)switchingtheSegments:(int)idx
{
    //LoadingMenu = idx;
    
    CGPoint scrollPoint;
    switch (idx)
    {
        case 1:
            scrollPoint = CGPointMake(0, 0);
            [scrl setContentOffset:scrollPoint animated:YES];
            break;
        case 2:
            
            scrollPoint = CGPointMake(WIDTH, 0);
            [scrl setContentOffset:scrollPoint animated:YES];
            break;
        case 3:
            scrollPoint = CGPointMake(WIDTH*2, 0);
            [scrl setContentOffset:scrollPoint animated:YES];
            break;
            
        default:
            break;
    }
}

#pragma mark - Sign In
- (IBAction)SignIn:(id)sender
{
    if (![txt_login.text isEqualToString:@""])
    {
        if ([_globalGDXData isValidEmail:txt_login.text])
        {
            //caled services
            CustomTabbarViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CustomTabbarViewController"];
            [self.navigationController pushViewController:move animated:YES];
        }
        else
        {
            [[iToast makeText:@"Please enter valid email address."] show];
            [txt_login becomeFirstResponder];
        }
    }
    else
    {
        [[iToast makeText:@"Please enter email address."] show];
        [txt_login becomeFirstResponder];
    }
}

#pragma mark - SignUp
- (IBAction)SignUp:(id)sender
{
    if (![txt_signup.text isEqualToString:@""])
    {
        if ([_globalGDXData isValidEmail:txt_signup.text])
        {
            CreateAccountViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"CreateAccountViewController"];
            move.strEmail = txt_signup.text;
            [self.navigationController pushViewController:move animated:YES];
        }
        else
        {
            [[iToast makeText:@"Please enter valid email address."] show];
            [txt_signup becomeFirstResponder];
        }
    }
    else
    {
        [[iToast makeText:@"Please enter email address."] show];
        [txt_signup becomeFirstResponder];
    }
}

@end
