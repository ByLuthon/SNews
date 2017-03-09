//
//  ViewProfileViewController.m
//  SNews
//
//  Created by macmini on 07/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "ViewProfileViewController.h"

@interface ViewProfileViewController ()

@end

@implementation ViewProfileViewController

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
    arrSegment = [[NSMutableArray alloc] initWithObjects:@"Profile",@"Recommends",@"Responses", nil];
    
    NSMutableArray *buttonArray = [NSMutableArray array];
    
    for(int i = 0; i < arrSegment.count; i++)
    {
        UIButton *segmentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [segmentButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [segmentButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
        segmentButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        [segmentButton setTitle:[NSString stringWithFormat:@"%@",[arrSegment objectAtIndex:i]] forState:UIControlStateNormal];
        [buttonArray addObject:segmentButton];
        
    }
    HHHorizontalPagingView *pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:_subview_header headerHeight:_subview_header.frame.size.height segmentButtons:buttonArray segmentHeight:40 contentViews:@[tbl_profile, tbl_recommends, tbl_responces]];
    
    tbl_profile.frame = CGRectMake(0, 0, WIDTH, HEIGHT-_view_navigation.frame.size.height);
    tbl_recommends.frame = CGRectMake(0, 0, WIDTH, HEIGHT-_view_navigation.frame.size.height);
    tbl_responces.frame = CGRectMake(0, 0, WIDTH, HEIGHT-_view_navigation.frame.size.height);

    [tbl_profile reloadData];
    [tbl_recommends reloadData];
    [tbl_responces reloadData];
    
    pagingView.frame = CGRectMake(0, 60, WIDTH, HEIGHT-60);
    pagingView.segmentView.backgroundColor = [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0];
    
    [self.view addSubview:pagingView];
    [self.view bringSubviewToFront:_view_navigation];
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


- (IBAction)Edit:(id)sender
{
    EditProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"EditProfileViewController"];
    [self presentViewController:move animated:YES completion:nil];
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

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    //NSInteger currentPage = scrollView.contentOffset.x/[[UIScreen mainScreen] bounds].size.width;
    //selectedTab = (int)currentPage;
}
#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (tableView == tbl_profile)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.text = @"Recommended by Rlogical";
        [headerVw addSubview:lblusername];
        
        UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(WIDTH - 100, 10, 90, 30);
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        [button setTitle:@"See more" forState:UIControlStateNormal];
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor clearColor];
        [button setOnTouchUpInside:^(id sender, UIEvent *event)
         {

         }];
        [headerVw addSubview:button];
        
        return headerVw;
    }
    else if (tableView == tbl_recommends)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.text = @"Recommended by Rlogical";
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    else if (tableView == tbl_responces)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.text = @"Responces";
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    else
    {
        return nil;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (tableView == tbl_profile)
    {
        return 70;
    }
    else if (tableView == tbl_recommends)
    {
        return 509;
    }
    else if (tableView == tbl_responces)
    {
        return 378;
    }
    else
    {
        return 0;
    }
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [APP_DELEGATE.arrUserlist count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == tbl_profile)
    {
        return [self profileCell:tableView indexPath:indexPath Message:nil];
    }
    else if (tableView == tbl_recommends)
    {
        return [self RecommendsCell:tableView indexPath:indexPath Message:nil];
    }
    else if (tableView == tbl_responces)
    {
        return  [self ResponcesCell:tableView indexPath:indexPath Message:nil];
    }
    return nil;
}

-(Cell_profile *)profileCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_profile *cell = (Cell_profile *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_profile" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            
        }
        
    }
    return cell;
}

-(Cell_Home *)RecommendsCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_Home *cell = (Cell_Home *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_Home" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;

        cell.imguser.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"]]];
        
        cell.lbl_username.text = [NSString stringWithFormat:@"%@ %@ in %@",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"LastName"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"BussinessUnit"]];

        
        {
            
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
    }
    return cell;
}

-(Cell_Responces *)ResponcesCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_Responces *cell = (Cell_Responces *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_Responces" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
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
            
            
            [cell.btn_user setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 FriendsProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FriendsProfileViewController"];
                 [self.navigationController pushViewController:move animated:YES];
             }];

        }
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
}



@end
