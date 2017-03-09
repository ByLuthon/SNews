//
//  FriendsProfileViewController.m
//  SNews
//
//  Created by macmini on 17/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "FriendsProfileViewController.h"

@interface FriendsProfileViewController ()

@end

@implementation FriendsProfileViewController
 
- (void)viewDidLoad
{
    [self setPagingview];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setPagingview
{
    arrSegment = [[NSMutableArray alloc] initWithObjects:@"Profile",@"Latest",@"Recommends",@"Highlights",@"Responses", nil];
    
    NSMutableArray *buttonArray = [NSMutableArray array];
    NSMutableArray *tblArray = [NSMutableArray array];

    for(int i = 0; i < arrSegment.count; i++)
    {
        UIButton *segmentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [segmentButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [segmentButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
        segmentButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        [segmentButton setTitle:[NSString stringWithFormat:@"%@",[arrSegment objectAtIndex:i]] forState:UIControlStateNormal];
        [buttonArray addObject:segmentButton];
        
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.backgroundColor = [UIColor clearColor];
        [tblArray addObject:tableView];
    }
    
    
    
    HHHorizontalPagingView *pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:subview_header headerHeight:145.0 segmentButtons:buttonArray segmentHeight:40 contentViews:tblArray];
    pagingView.frame = CGRectMake(0, 60, WIDTH, HEIGHT-60);
    pagingView.segmentView.backgroundColor = [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0];

    /*
    [cellview.btn_click1 setOnTouchUpInside:^(UIEvent *event, id sender)
     {
         NSLog(@"Click1");
     }];

    [cellview.btn_click2 setOnTouchUpInside:^(UIEvent *event, id sender)
     {
         NSLog(@"Click2");
     }];
     */


    
    [self.view addSubview:pagingView];
    [self.view bringSubviewToFront:view_navgation];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)Tap:(id)sender {
}




- (IBAction)setting:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Block This user", nil];
    [actionSheet showInView:self.view];
}

- (IBAction)follow:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn.selected == FALSE)
    {
        btn.selected = TRUE;
        btn.backgroundColor = [UIColor clearColor];
    }
    else
    {
        btn.selected = FALSE;
        btn.backgroundColor = kColorLightGreen;
    }
}

- (IBAction)share:(id)sender
{
    [APP_DELEGATE share:@"Look at this awesome website for hiring iOS Developers!" Link:[NSURL URLWithString:@"http://www.rlogical.com/"]];
}
- (IBAction)Following:(id)sender
{
    FollowingFollowersViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FollowingFollowersViewController"];
    move.isFollowing = TRUE;
    [self.navigationController pushViewController:move animated:YES];
}
- (IBAction)Followers:(id)sender
{
    FollowingFollowersViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FollowingFollowersViewController"];
    move.isFollowing = FALSE;
    [self.navigationController pushViewController:move animated:YES];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 509;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [APP_DELEGATE.arrUserlist count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_Home *cell = (Cell_Home *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_Home" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        cell.imguser.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"]]];
        
        cell.lbl_username.text = [NSString stringWithFormat:@"%@ %@ in %@",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"LastName"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"BussinessUnit"]];

        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
        [cell.btn_like setOnTouchUpInside:^(id sender, UIEvent *event)
         {
             if (cell.btn_like.selected == TRUE)
             {
                 cell.btn_like.selected = FALSE;
             }
             else
             {
                 cell.btn_like.selected = TRUE;
             }
         }];
        
        
        [cell.btn_bookmarks setOnTouchUpInside:^(id sender, UIEvent *event)
         {
             if (cell.btn_bookmarks.selected == TRUE)
             {
                 cell.btn_bookmarks.selected = FALSE;
             }
             else
             {
                 cell.btn_bookmarks.selected = TRUE;
             }
         }];
        
        [cell.btn_img_profile setOnTouchUpInside:^(UIEvent *event, id sender)
         {
             ProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
             move.strUserName = @"Emma Watson";
             move.getUserDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
             APP_DELEGATE.isloginuser = NO;
             [self.navigationController pushViewController:move animated:YES];
         }];

    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
    move.isfromResponces = FALSE;
    move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:move animated:YES];
}

#pragma mark - actionSheet Delegates
- (void)willPresentActionSheet:(UIActionSheet *)actionSheet
{
    SEL selector = NSSelectorFromString(@"_alertController");
    if ([actionSheet respondsToSelector:selector])
    {
        UIAlertController *alertController = [actionSheet valueForKey:@"_alertController"];
        if ([alertController isKindOfClass:[UIAlertController class]])
        {
            //alertController.view.tintColor = [UIColor redColor];
        }
    }
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
        switch (buttonIndex)
        {
            case 0:
            {

            }
                break;
            default:
                break;
        }
}

@end
