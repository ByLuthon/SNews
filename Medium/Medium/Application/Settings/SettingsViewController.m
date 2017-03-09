//
//  SettingsViewController.m
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

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
    arrSettingsList = [[NSMutableArray alloc] init];
    
    NSMutableArray *arr = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d = [[NSMutableDictionary alloc] init];
    [d setObject:@"ic_twitter_24dp.png" forKey:@"image"];
    [d setObject:@"Twitter" forKey:@"title"];
    [arr addObject:d];
    
    NSMutableDictionary *d1 = [[NSMutableDictionary alloc] init];
    [d1 setObject:@"ic_facebook_24dp.png" forKey:@"image"];
    [d1 setObject:@"Facebook" forKey:@"title"];
    [arr addObject:d1];
    
    
    NSMutableArray *arr2 = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d11 = [[NSMutableDictionary alloc] init];
    [d11 setObject:@"Push notifications" forKey:@"title"];
    [arr2 addObject:d11];
    
    NSMutableDictionary *d21 = [[NSMutableDictionary alloc] init];
    [d21 setObject:@"Email notifications" forKey:@"title"];
    [arr2 addObject:d21];

    
    
    NSMutableArray *arr3 = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
    [d31 setObject:@"Clear image cache" forKey:@"title"];
    [arr3 addObject:d31];
    
    NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
    [d32 setObject:@"Clear all cache" forKey:@"title"];
    [arr3 addObject:d32];

    
    
    NSMutableArray *arr4 = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *d41 = [[NSMutableDictionary alloc] init];
    [d41 setObject:@"Signout" forKey:@"title"];
    [arr4 addObject:d41];
    

    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
    [dic1 setObject:@"Connected accounts" forKey:@"title"];
    [dic1 setObject:arr forKey:@"array"];
    [arrSettingsList addObject:dic1];
    
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
    [dic2 setObject:@"" forKey:@"title"];
    [dic2 setObject:arr2 forKey:@"array"];
    [arrSettingsList addObject:dic2];
    
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
    [dic3 setObject:@"" forKey:@"title"];
    [dic3 setObject:arr3 forKey:@"array"];
    [arrSettingsList addObject:dic3];

    
    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
    [dic4 setObject:@"" forKey:@"title"];
    [dic4 setObject:arr4 forKey:@"array"];
    [arrSettingsList addObject:dic4];


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

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrSettingsList count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 44;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 20)] ;
    //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
    headerVw.backgroundColor = [UIColor clearColor];;
    
    UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(8, 0, WIDTH, 20)];
    lblusername.textColor = [UIColor grayColor];
    lblusername.numberOfLines = 0;
    [lblusername setLineBreakMode:NSLineBreakByWordWrapping];
    lblusername.font = [UIFont boldSystemFontOfSize:12];
    lblusername.text = [[arrSettingsList objectAtIndex:section] objectForKey:@"title"];
    [headerVw addSubview:lblusername];
    
    return headerVw;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (section == 0)
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)] ;
        tableView.sectionHeaderHeight = view.frame.size.height;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, WIDTH-20, 30)];
        lblusername.textColor = [UIColor lightGrayColor];
        lblusername.numberOfLines = 0;
        [lblusername setLineBreakMode:NSLineBreakByWordWrapping];
        lblusername.textAlignment = NSTextAlignmentLeft;
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text =@"We will never post to Twitter or Facebook without your permission.";
        [view addSubview:lblusername];
        
        return view;
    }
    else if (section == 3)
    {
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 30)] ;
        tableView.sectionHeaderHeight = view.frame.size.height;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, WIDTH-20, 30)];
        lblusername.textColor = [UIColor lightGrayColor];
        lblusername.numberOfLines = 0;
        [lblusername setLineBreakMode:NSLineBreakByWordWrapping];
        lblusername.textAlignment = NSTextAlignmentLeft;
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text =@"Version : 1.0";
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
    if (section == 0 || section == 3)
    {
        return 30.0;
    }
    
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[arrSettingsList objectAtIndex:section] objectForKey:@"array"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0)
    {
        return [self createSocialFollowCell:tableView indexPath:indexPath chatMessage:[[[arrSettingsList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row]];
    }
    else
    {
        NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld %ld",(long)indexPath.row,(long)indexPath.section];
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        
        cell = nil;
        
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
            cell.backgroundColor = [UIColor whiteColor];
            
            cell.textLabel.text = [[[[arrSettingsList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"];
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            cell.textLabel.textColor = [UIColor blackColor];
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        return cell;
    }
    return nil;
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
    if (indexPath.section == 0)
    {
    }
    else
    {
        if ([[[[[arrSettingsList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"] isEqualToString:@"Push notifications"])
        {
            PushNotificaionViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PushNotificaionViewController"];
            [self.navigationController pushViewController:move animated:YES];
        }
        else if ([[[[[arrSettingsList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"] isEqualToString:@"Email notifications"])
        {
            NSString *iTunesLink = @"https://medium.com/me/settings";

            SFSafariViewController *svc = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:iTunesLink]];
            svc.delegate = self;
            [self presentViewController:svc animated:YES completion:nil];

        }
        if ([[[[[arrSettingsList objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"] isEqualToString:@"Signout"])
        {
            NSString *message = @"Are you sure you want to sign out?";
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                            message:message
                                                           delegate:self
                                                  cancelButtonTitle:@"No"
                                                  otherButtonTitles:@"Yes", nil];
            alert.tag = 20;
            [alert show];
        }
    }
}

#pragma mark - Alertview delegate
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 20)
    {
        if (buttonIndex == 1)
        {
            for (UIViewController *controller in self.navigationController.viewControllers) {
                
                //Do not forget to import AnOldViewController.h
                if ([controller isKindOfClass:[MainViewController class]]) {
                    
                    [self.navigationController popToViewController:controller
                                                          animated:YES];
                    break;
                }
            }
        }
    }
}


@end
