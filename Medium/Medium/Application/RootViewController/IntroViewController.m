//
//  IntroViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "IntroViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad
{
    subview_message.hidden = TRUE;

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
    
    [txt_email becomeFirstResponder];
    
    [APP_DELEGATE setBorderToView:btnSignin withBorderWidth:2.0 radious:4.0 color:kColorLightGreen];
    
    
    NSMutableAttributedString *commentString = [[NSMutableAttributedString alloc] initWithString:btn_wrongEmail.titleLabel.text];
    [commentString addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:NSMakeRange(0, [commentString length])];
    [btn_wrongEmail setAttributedTitle:commentString forState:UIControlStateNormal];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)SignIn:(id)sender
{
    if (![txt_email.text isEqualToString:@""])
    {
        if ([_globalGDXData isValidEmail:txt_email.text])
        {
            lbl_message.text = [NSString stringWithFormat:@"Please check your email (%@) for a link to create an account",txt_email.text];
            [APP_DELEGATE animateWithShow:YES withView:subview_message];
        }
        else
        {
            [[iToast makeText:@"Please enter valid email address"] show];
            [txt_email becomeFirstResponder];
        }
    }
    else
    {
        [[iToast makeText:@"Please enter email address"] show];
        [txt_email becomeFirstResponder];
    }
}

- (IBAction)close:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)wrongEmail:(id)sender
{
    txt_email.text = @"";
    [APP_DELEGATE animateWithShow:NO withView:subview_message];
}
@end
