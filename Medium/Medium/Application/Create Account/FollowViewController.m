//
//  FollowViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "FollowViewController.h"

@interface FollowViewController ()

@end

@implementation FollowViewController

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
    arrList = [[NSMutableArray alloc] init];
    
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d = [[NSMutableDictionary alloc] init];
    [d setObject:@"ic_twitter_24dp.png" forKey:@"image"];
    [d setObject:@"Twitter" forKey:@"title"];
    [arr addObject:d];
    
    NSMutableDictionary *d1 = [[NSMutableDictionary alloc] init];
    [d1 setObject:@"ic_facebook_24dp.png" forKey:@"image"];
    [d1 setObject:@"Facebook" forKey:@"title"];
    [arr addObject:d1];
    
    
    NSMutableArray *arr1 = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *di = [[NSMutableDictionary alloc] init];
    [di setObject:@"funny-profile-pictures.jpg" forKey:@"image"];
    [di setObject:@"Fast Company" forKey:@"title"];
    [di setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [di setObject:@"Popular in Design" forKey:@"category"];
    [arr1 addObject:di];
    
    NSMutableDictionary *di1 = [[NSMutableDictionary alloc] init];
    [di1 setObject:@"funny-profile-pictures.jpg" forKey:@"image"];
    [di1 setObject:@"Tim'O Reilly" forKey:@"title"];
    [di1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [di1 setObject:@"Popular in Tech" forKey:@"category"];
    [arr1 addObject:di1];
    
    
    NSMutableDictionary *di2 = [[NSMutableDictionary alloc] init];
    [di2 setObject:@"funny-profile-pictures.jpg" forKey:@"image"];
    [di2 setObject:@"John Rampton" forKey:@"title"];
    [di2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [di2 setObject:@"Popular in Bitcoin" forKey:@"category"];
    [arr1 addObject:di2];
    
    
    NSMutableDictionary *di3 = [[NSMutableDictionary alloc] init];
    [di3 setObject:@"funny-profile-pictures.jpg" forKey:@"image"];
    [di3 setObject:@"AWS" forKey:@"title"];
    [di3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [di3 setObject:@"Popular in Internet Things" forKey:@"category"];
    [arr1 addObject:di3];
    
    
    
    
    NSMutableArray *arr2 = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d1i = [[NSMutableDictionary alloc] init];
    [d1i setObject:@"pUHtAZOh.jpg" forKey:@"image"];
    [d1i setObject:@"The Mission" forKey:@"title"];
    [d1i setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [d1i setObject:@"222k followers - Social Media" forKey:@"category"];
    [arr2 addObject:d1i];
    
    NSMutableDictionary *d1i1 = [[NSMutableDictionary alloc] init];
    [d1i1 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
    [d1i1 setObject:@"Startup Grind" forKey:@"title"];
    [d1i1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [d1i1 setObject:@"208k followers - Popular in Tech" forKey:@"category"];
    [arr2 addObject:d1i1];
    
    
    NSMutableDictionary *d1i2 = [[NSMutableDictionary alloc] init];
    [d1i2 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
    [d1i2 setObject:@"Backchannel" forKey:@"title"];
    [d1i2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [d1i2 setObject:@"158k followers - Privacy" forKey:@"category"];
    [arr2 addObject:d1i2];
    
    
    NSMutableDictionary *d1i3 = [[NSMutableDictionary alloc] init];
    [d1i3 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
    [d1i3 setObject:@"freeCodeCamp" forKey:@"title"];
    [d1i3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
    [d1i3 setObject:@"108k followers - Design" forKey:@"category"];
    [arr2 addObject:d1i3];
    
    
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"FIND FRIENDS ON SNEWS" forKey:@"title"];
    [dic1 setObject:arr forKey:@"array"];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"SUGGESTED PEOPLE" forKey:@"title"];
    [dic2 setObject:arr1 forKey:@"array"];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:@"SUGGESTED PUBLICATIONS" forKey:@"title"];
    [dic3 setObject:arr2 forKey:@"array"];
    
    [arrList addObject:dic1];
    [arrList addObject:dic2];
    [arrList addObject:dic3];

    [tbl reloadData];
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

- (IBAction)Next:(id)sender
{
    EnableNotificationViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"EnableNotificationViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (indexPath.section == 0)
    {
        return 44;
    }
    else
    {
        return 86;
    }
    return 0;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 35)] ;
    //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
    headerVw.backgroundColor = self.view.backgroundColor;;
    
    UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(8, 5, WIDTH, 30)];
    lblusername.textColor = [UIColor blackColor];
    lblusername.font = [UIFont boldSystemFontOfSize:10];
    lblusername.text = [[arrList objectAtIndex:section] objectForKey:@"title"];
    [headerVw addSubview:lblusername];
    
    return headerVw;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (section != 0)
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)] ;
        tableView.sectionHeaderHeight = view.frame.size.height;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 5, WIDTH-20, 30)];
        lblusername.textColor = [UIColor lightGrayColor];
        lblusername.textAlignment = NSTextAlignmentCenter;
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text =@"Show more....";
        [view addSubview:lblusername];

        return view;
    }
    else
    {
        return nil;
    }
    return nil;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section != 0)
    {
        return 30.0;
    }
    
    return 0;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // return [[[arrList objectAtIndex:section] objectForKey:@"array"] count];
    
    if (section == 1)
    {
        return 4;
    }
    else
    {
        return [[[arrList objectAtIndex:section] objectForKey:@"array"] count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        return [self createSocialFollowCell:tableView indexPath:indexPath chatMessage:[[[arrList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row]];
    }
    else if (indexPath.section == 1)
    {
        return [self createPeople_SuggestionCell:tableView indexPath:indexPath chatMessage:[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row]];
    }
    else
    {
        return [self createPeople_SuggestionCellPublication:tableView indexPath:indexPath chatMessage:[[[arrList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row]];
    }
    return nil;
}

-(Cell_follow *)createPeople_SuggestionCellPublication:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath chatMessage:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell_follow"];
    Cell_follow  *cell = (Cell_follow *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"Cell_follow" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    {
        
        cell.img_icon.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
        cell.lbl_title.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"title"]];
        cell.lbl_category.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"category"]];
        
        
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


-(Cell_follow *)createPeople_SuggestionCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath chatMessage:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell_follow"];
    Cell_follow  *cell = (Cell_follow *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"Cell_follow" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    {
        
        cell.img_icon.image =[UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[dic objectForKey:@"FirstName"]]];

        cell.lbl_title.text = [NSString stringWithFormat:@"%@ %@",[dic objectForKey:@"FirstName"],[dic objectForKey:@"LastName"]];
        cell.lbl_category.text = @"Popular in Design";
        
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
-(Cell_socialFollow *)createSocialFollowCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath chatMessage:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"Cell_socialFollow"];
    Cell_socialFollow  *cell = (Cell_socialFollow *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"Cell_socialFollow" bundle:nil] forCellReuseIdentifier:CellIdentifier];
        cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    }
    
    {
        cell.img_icon.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
        cell.lbl_title.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"title"]];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{

}

@end
