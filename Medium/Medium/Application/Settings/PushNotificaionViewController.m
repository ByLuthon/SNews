//
//  PushNotificaionViewController.m
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "PushNotificaionViewController.h"

@interface PushNotificaionViewController ()

@end

@implementation PushNotificaionViewController

- (void)viewDidLoad
{
    //[APP_DELEGATE animateWithShow:YES withView:subview_disable];
    subview_disable.hidden = FALSE;
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
    arrNotification = [[NSMutableArray alloc] init];
    
    {
        ////Daily
        NSMutableArray *arr = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d11 = [[NSMutableDictionary alloc] init];
        [d11 setObject:@"Off" forKey:@"title"];
        [d11 setObject:@"0" forKey:@"isSelect"];
        [arr addObject:d11];
        
        NSMutableDictionary *d12 = [[NSMutableDictionary alloc] init];
        [d12 setObject:@"On" forKey:@"title"];
        [d12 setObject:@"1" forKey:@"isSelect"];
        [arr addObject:d12];
        
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        [dic1 setObject:@"Daily Notification" forKey:@"title"];
        [dic1 setObject:@"A daily summary of the best of SNews,tailored for you." forKey:@"subtitle"];
        [dic1 setObject:arr forKey:@"array"];
        [arrNotification addObject:dic1];
        
    }
    
    
    {
        ////new Stories
        NSMutableArray *arr2 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d21 = [[NSMutableDictionary alloc] init];
        [d21 setObject:@"Off" forKey:@"title"];
        [d21 setObject:@"0" forKey:@"isSelect"];
        [arr2 addObject:d21];
        
        NSMutableDictionary *d22 = [[NSMutableDictionary alloc] init];
        [d22 setObject:@"Tailored for you" forKey:@"title"];
        [d22 setObject:@"1" forKey:@"isSelect"];
        [arr2 addObject:d22];
        
        NSMutableDictionary *d23 = [[NSMutableDictionary alloc] init];
        [d23 setObject:@"From everyone" forKey:@"title"];
        [d23 setObject:@"0" forKey:@"isSelect"];
        [arr2 addObject:d23];
        
        
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"New stories from users you follow" forKey:@"title"];
        [dic2 setObject:@"Emily Dickinson published \"My throughts on the Apple Watch\". " forKey:@"subtitle"];
        [dic2 setObject:arr2 forKey:@"array"];
        [arrNotification addObject:dic2];
    }
    
    
    {
        ////Follows
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"Tailored for you" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        NSMutableDictionary *d33 = [[NSMutableDictionary alloc] init];
        [d33 setObject:@"From everyone" forKey:@"title"];
        [d33 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d33];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Follows" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson followed you." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
    
    {
        ////Recommends of your stories
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"Tailored for you" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        NSMutableDictionary *d33 = [[NSMutableDictionary alloc] init];
        [d33 setObject:@"From everyone" forKey:@"title"];
        [d33 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d33];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Recommends of your stories" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson recommended your story." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
    
    {
        ////Highlights
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"Tailored for you" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        NSMutableDictionary *d33 = [[NSMutableDictionary alloc] init];
        [d33 setObject:@"From everyone" forKey:@"title"];
        [d33 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d33];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Highlights" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson highlights your story." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
    
    {
        ////Responces
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"Tailored for you" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        NSMutableDictionary *d33 = [[NSMutableDictionary alloc] init];
        [d33 setObject:@"From everyone" forKey:@"title"];
        [d33 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d33];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Responces to your stories" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson responded to your story." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
    
    {
        ////Mentions
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"Tailored for you" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        NSMutableDictionary *d33 = [[NSMutableDictionary alloc] init];
        [d33 setObject:@"From everyone" forKey:@"title"];
        [d33 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d33];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Mentions" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson mentioned you in \"My great story\"." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
    
    {
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d31 = [[NSMutableDictionary alloc] init];
        [d31 setObject:@"Off" forKey:@"title"];
        [d31 setObject:@"0" forKey:@"isSelect"];
        [arr3 addObject:d31];
        
        NSMutableDictionary *d32 = [[NSMutableDictionary alloc] init];
        [d32 setObject:@"On" forKey:@"title"];
        [d32 setObject:@"1" forKey:@"isSelect"];
        [arr3 addObject:d32];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Recommends by people you follow" forKey:@"title"];
        [dic3 setObject:@"Emily Dickinson and 5 others recommended a story." forKey:@"subtitle"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrNotification addObject:dic3];
    }
    
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

- (IBAction)EnablePush:(id)sender
{
    [APP_DELEGATE animateWithShow:NO withView:subview_disable];
    [tbl reloadData];
}


#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [arrNotification count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 44;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
    //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
    headerVw.backgroundColor = [UIColor clearColor];;
    
    UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(8, 0, WIDTH, 20)];
    lblusername.textColor = [UIColor grayColor];
    lblusername.numberOfLines = 0;
    [lblusername setLineBreakMode:NSLineBreakByWordWrapping];
    lblusername.font = [UIFont boldSystemFontOfSize:14];
    lblusername.text = [[arrNotification objectAtIndex:section] objectForKey:@"title"];
    [headerVw addSubview:lblusername];
    
    
    UILabel *lblsubtitle = [[UILabel alloc]initWithFrame:CGRectMake(8, 16, WIDTH, 20)];
    lblsubtitle.textColor = [UIColor lightGrayColor];
    lblsubtitle.numberOfLines = 0;
    [lblsubtitle setLineBreakMode:NSLineBreakByWordWrapping];
    lblsubtitle.font = [UIFont boldSystemFontOfSize:12];
    lblsubtitle.text = [[arrNotification objectAtIndex:section] objectForKey:@"subtitle"];
    [headerVw addSubview:lblsubtitle];
    
    
    return headerVw;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[[arrNotification objectAtIndex:section] objectForKey:@"array"] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld %ld",(long)indexPath.row,(long)indexPath.section];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
        cell.backgroundColor = [UIColor whiteColor];
        //isSelect
        
        if ([[[[[arrNotification objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"isSelect"] boolValue] == TRUE)
        {
            cell.imageView.image = [UIImage imageNamed:@"tick-green.png"];
        }
        else
        {
            cell.imageView.image = [UIImage imageNamed:@"tick-blank.png"];
        }
        
        cell.textLabel.text = [[[[arrNotification objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"];
        cell.textLabel.font = [UIFont systemFontOfSize:14];
        cell.textLabel.textColor = [UIColor blackColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSMutableArray *arr = [[arrNotification objectAtIndex:indexPath.section] objectForKey:@"array"];
    
    for (int i = 0; i < [arr count]; i++)
    {
        NSMutableDictionary *mutableDict = [arr objectAtIndex:i];
        
        if (indexPath.row == i)
        {
            [mutableDict setObject:@"1" forKey:@"isSelect"];
        }
        else
        {
            [mutableDict setObject:@"0" forKey:@"isSelect"];
        }
        [arr replaceObjectAtIndex:i withObject:mutableDict];
    }
    NSMutableDictionary *dic = [arrNotification objectAtIndex:indexPath.section];
    [dic setObject:arr forKey:@"array"];
    
    [arrNotification replaceObjectAtIndex:indexPath.section withObject:dic];
    dic = nil;
    [tbl reloadData];
}


@end
