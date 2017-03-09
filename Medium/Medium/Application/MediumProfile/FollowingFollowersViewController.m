//
//  FollowingFollowersViewController.m
//  SNews
//
//  Created by macmini on 16/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "FollowingFollowersViewController.h"

@interface FollowingFollowersViewController ()

@end

@implementation FollowingFollowersViewController
@synthesize isFollowing;

- (void)viewDidLoad
{
    [self setInitParam];

    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setInitParam
{
    if (isFollowing)
    {
        _lbl_navigationTitle.text = @"Following";
    }
    else
    {
        _lbl_navigationTitle.text = @"Followers";
    }
    arrUser = [[NSMutableArray alloc] init];
    
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"H Tugkan Kibar" forKey:@"name"];
        [dic setObject:@"" forKey:@"desc"];
        [arrUser addObject: dic];
    }
    
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Martin Meneses" forKey:@"name"];
        [dic setObject:@"" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Vedran Blazenka" forKey:@"name"];
        [dic setObject:@"Front-End Developer @Enterwell" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Mike Nolan" forKey:@"name"];
        [dic setObject:@"" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Petr" forKey:@"name"];
        [dic setObject:@"" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Muhammad Jkfar Shodik Hussain" forKey:@"name"];
        [dic setObject:@"Dreamer -- Football Player & iOS Developer" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"POTUS" forKey:@"name"];
        [dic setObject:@"President of the United States | Notes may be archived: http" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Ted Bendixson" forKey:@"name"];
        [dic setObject:@"Level 9000 iOS Developer with Bonus Expriences Points" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Cocoon Creations" forKey:@"name"];
        [dic setObject:@"Award winning boutique digital agency focusing on creationg bespoke mobile" forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Catelina Turlea" forKey:@"name"];
        [dic setObject:@"Professional iOS Developer @freeletics" forKey:@"desc"];
        [arrUser addObject: dic];
    }
    
    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"SNews" forKey:@"name"];
        [dic setObject:@"Recommended reading from the staff at SNews." forKey:@"desc"];
        [arrUser addObject: dic];
    }

    {
        NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
        [dic setObject:@"Netcyrax" forKey:@"name"];
        [dic setObject:@"Looking for something intresting." forKey:@"desc"];
        [arrUser addObject: dic];
    }
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

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return UITableViewAutomaticDimension;
}

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrUser count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell_FollowFollowing"];
    Cell_FollowFollowing  *cell = (Cell_FollowFollowing *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"Cell_FollowFollowing" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    {
        cell.lbl_name.text = [NSString stringWithFormat:@"%@",[[arrUser objectAtIndex:indexPath.row] objectForKey:@"name"]];
        cell.lbl_Desc.text = [NSString stringWithFormat:@"%@",[[arrUser objectAtIndex:indexPath.row] objectForKey:@"desc"]];

        /*
        if ([cell.lbl_Desc.text isEqualToString:@""])
        {
            cell.lbl_name.frame = CGRectMake(cell.lbl_name.frame.origin.x, 0, cell.lbl_name.frame.size.width, 80);
        }
        */
        
        [cell.btn_plus setOnTouchUpInside:^(id sender, UIEvent *event)
         {
             if (cell.btn_plus.selected == TRUE)
             {
                 cell.btn_plus.selected = FALSE;
             }
             else
             {
                 cell.btn_plus.selected = TRUE;
             }
         }];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    FriendsProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FriendsProfileViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

@end
