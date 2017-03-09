//
//  ActivityDetailsViewController.m
//  SNews
//
//  Created by macmini on 16/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "ActivityDetailsViewController.h"

@interface ActivityDetailsViewController ()

@end

@implementation ActivityDetailsViewController

- (void)viewDidLoad
{
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
    [APP_DELEGATE setBorderToView:view_box withBorderWidth:0.5 radious:4.0 color:[UIColor grayColor]];

    view_Scrl.frame = CGRectMake(0, 0, WIDTH, view_Scrl.frame.size.height);
    
    [scrl addSubview:view_Scrl];
    scrl.contentSize = CGSizeMake(WIDTH, view_Scrl.frame.size.height);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)bookmarks:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn.selected == TRUE)
    {
        btn.selected = FALSE;
    }
    else
    {
        btn.selected = TRUE;
    }
}

- (IBAction)writeResponces:(id)sender
{
    ZSSDemoViewController *move = [[ZSSDemoViewController alloc] init];
    move.isFromResponce = TRUE;
    [self presentViewController:move animated:YES completion:nil];
}
@end
