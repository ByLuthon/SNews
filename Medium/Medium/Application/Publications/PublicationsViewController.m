//
//  PublicationsViewController.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "PublicationsViewController.h"

@interface PublicationsViewController ()

@end

@implementation PublicationsViewController
@synthesize isPublicationList;

- (void)viewDidLoad
{
    
    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setInitParam
{
    if (isPublicationList)
    {
        /*
        tbl.tableHeaderView = nil;
        tbl.sectionHeaderHeight = 0.0f;
         */
        
        CGRect frame = tbl.tableHeaderView.frame;
        frame.size.height = 1;
        UIView *headerView = [[UIView alloc] initWithFrame:frame];
        [tbl setTableHeaderView:headerView];

    }
    else
    {
        _lbl_message.hidden = TRUE;
        tbl.tableHeaderView = _subview_header;
    }
    
    
    {
        arrPublicationList = [[NSMutableArray alloc] init];
        
        
        NSMutableDictionary *di = [[NSMutableDictionary alloc] init];
        [di setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di setObject:@"Fast Company" forKey:@"title"];
        [di setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di setObject:@"Popular in Design" forKey:@"category"];
        [arrPublicationList addObject:di];
        
        NSMutableDictionary *di1 = [[NSMutableDictionary alloc] init];
        [di1 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di1 setObject:@"Tim'O Reilly" forKey:@"title"];
        [di1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di1 setObject:@"Popular in Tech" forKey:@"category"];
        [arrPublicationList addObject:di1];
        
        
        NSMutableDictionary *di2 = [[NSMutableDictionary alloc] init];
        [di2 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di2 setObject:@"John Rampton" forKey:@"title"];
        [di2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di2 setObject:@"Popular in Bitcoin" forKey:@"category"];
        [arrPublicationList addObject:di2];
        
        
        NSMutableDictionary *di3 = [[NSMutableDictionary alloc] init];
        [di3 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di3 setObject:@"AWS" forKey:@"title"];
        [di3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di3 setObject:@"Popular in Internet Things" forKey:@"category"];
        [arrPublicationList addObject:di3];
        
    }
    
    
    {
        arrList = [[NSMutableArray alloc] init];
        
        
        NSMutableArray *arr1 = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *di = [[NSMutableDictionary alloc] init];
        [di setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di setObject:@"Fast Company" forKey:@"title"];
        [di setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di setObject:@"Popular in Design" forKey:@"category"];
        [arr1 addObject:di];
        
        NSMutableDictionary *di1 = [[NSMutableDictionary alloc] init];
        [di1 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di1 setObject:@"Tim'O Reilly" forKey:@"title"];
        [di1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di1 setObject:@"Popular in Tech" forKey:@"category"];
        [arr1 addObject:di1];
        
        
        NSMutableDictionary *di2 = [[NSMutableDictionary alloc] init];
        [di2 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
        [di2 setObject:@"John Rampton" forKey:@"title"];
        [di2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [di2 setObject:@"Popular in Bitcoin" forKey:@"category"];
        [arr1 addObject:di2];
        
        
        NSMutableDictionary *di3 = [[NSMutableDictionary alloc] init];
        [di3 setObject:@"42711793-abstract-colored-o-vector-icon-isolated-on-white-background-circle-colored-shape-globe-abstract-web-.jpg" forKey:@"image"];
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
        [dic1 setObject:@"New and notable" forKey:@"title"];
        [dic1 setObject:arr2 forKey:@"array"];
        
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"Recommended for you" forKey:@"title"];
        [dic2 setObject:arr1 forKey:@"array"];
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"For the strivers" forKey:@"title"];
        [dic3 setObject:arr2 forKey:@"array"];
        
        NSMutableDictionary *dic4= [[NSMutableDictionary alloc] init];
        [dic4 setObject:@"For the poets" forKey:@"title"];
        [dic4 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] init];
        [dic5 setObject:@"For the Macolytes" forKey:@"title"];
        [dic5 setObject:arr2 forKey:@"array"];
        
        
        
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] init];
        [dic6 setObject:@"For the Californians" forKey:@"title"];
        [dic6 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"For the lovers" forKey:@"title"];
        [dic8 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic9 = [[NSMutableDictionary alloc] init];
        [dic9 setObject:@"For the self-improvement" forKey:@"title"];
        [dic9 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic10 = [[NSMutableDictionary alloc] init];
        [dic10 setObject:@"For the Brits" forKey:@"title"];
        [dic10 setObject:arr2 forKey:@"array"];
        
        NSMutableDictionary *dic11 = [[NSMutableDictionary alloc] init];
        [dic11 setObject:@"For the Wonks" forKey:@"title"];
        [dic11 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic12 = [[NSMutableDictionary alloc] init];
        [dic12 setObject:@"For the Marketers" forKey:@"title"];
        [dic12 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic13 = [[NSMutableDictionary alloc] init];
        [dic13 setObject:@"For the Parents" forKey:@"title"];
        [dic13 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic14 = [[NSMutableDictionary alloc] init];
        [dic14 setObject:@"For the Internationalist" forKey:@"title"];
        [dic14 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic15 = [[NSMutableDictionary alloc] init];
        [dic15 setObject:@"For the fitness fanalics" forKey:@"title"];
        [dic15 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic16 = [[NSMutableDictionary alloc] init];
        [dic16 setObject:@"For the screen-obsessed" forKey:@"title"];
        [dic16 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic17 = [[NSMutableDictionary alloc] init];
        [dic17 setObject:@"For the Techies" forKey:@"title"];
        [dic17 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic18 = [[NSMutableDictionary alloc] init];
        [dic18 setObject:@"For the historians" forKey:@"title"];
        [dic18 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic19 = [[NSMutableDictionary alloc] init];
        [dic19 setObject:@"For the learners" forKey:@"title"];
        [dic19 setObject:arr1 forKey:@"array"];
        
        NSMutableDictionary *dic20 = [[NSMutableDictionary alloc] init];
        [dic20 setObject:@"For the worriers" forKey:@"title"];
        [dic20 setObject:arr2 forKey:@"array"];
        
        
        NSMutableDictionary *dic21 = [[NSMutableDictionary alloc] init];
        [dic21 setObject:@"For the reporters" forKey:@"title"];
        [dic21 setObject:arr1 forKey:@"array"];
        
        
        NSMutableDictionary *dic22 = [[NSMutableDictionary alloc] init];
        [dic22 setObject:@"For the super-fans" forKey:@"title"];
        [dic22 setObject:arr2 forKey:@"array"];
        
        
        
        [arrList addObject:dic1];
        [arrList addObject:dic2];
        [arrList addObject:dic3];
        [arrList addObject:dic4];
        [arrList addObject:dic5];
        [arrList addObject:dic6];
        [arrList addObject:dic8];
        [arrList addObject:dic9];
        [arrList addObject:dic10];
        [arrList addObject:dic11];
        [arrList addObject:dic12];
        [arrList addObject:dic13];
        [arrList addObject:dic14];
        [arrList addObject:dic15];
        [arrList addObject:dic16];
        [arrList addObject:dic17];
        [arrList addObject:dic18];
        [arrList addObject:dic19];
        [arrList addObject:dic20];
        [arrList addObject:dic21];
        [arrList addObject:dic22];
    }
    
    [tbl reloadData];
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
-(void)showAlert
{
    if ([arrPublicationList count] > 0)
    {
        tbl.hidden = FALSE;
    }
    else
    {
        tbl.hidden = TRUE;
    }
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)AllPublications:(id)sender
{
    PublicationsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationsViewController"];
    move.isPublicationList = TRUE;
    [self.navigationController pushViewController:move animated:YES];
}


#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (isPublicationList)
    {
        return 1;
    }
    else
    {
        return [arrList count];
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 86;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (isPublicationList)
    {
        return nil;
    }
    else
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(8, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.text = [[arrList objectAtIndex:section] objectForKey:@"title"];
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (isPublicationList)
    {
        return 0.0f;
    }
    else
    {
        
        return 40;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (isPublicationList)
    {
        return [arrPublicationList count];
    }
    else
    {
        
        return [[[arrList objectAtIndex:section] objectForKey:@"array"] count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (isPublicationList)
    {
        return [self publicationCell:tableView indexPath:indexPath Message:[arrPublicationList objectAtIndex:indexPath.row]];
    }
    else
    {
        return [self publicationCell:tableView indexPath:indexPath Message:[[[arrList objectAtIndex:indexPath.row] objectForKey:@"array"] objectAtIndex:indexPath.row]];
    }
    
}


-(Cell_Publications *)publicationCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_Publications *cell = (Cell_Publications *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_Publications" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            cell.btn_folloow.selected = TRUE;

            cell.img_title.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
            
            cell.lbl_title.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"title"]];
            
            cell.lbl_Category.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"category"]];
            
            [cell.btn_folloow setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 if (cell.btn_folloow.selected == TRUE)
                 {
                     cell.btn_folloow.selected = FALSE;
                     
                     if (isPublicationList)
                     {
                         [arrPublicationList removeObjectAtIndex:indexPath.row];
                         [tbl deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationRight];
                         [tbl reloadData];
                         
                         [self showAlert];
                     }
                 }
                 else
                 {
                     cell.btn_folloow.selected = TRUE;
                 }
             }];
            
        }
        
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (isPublicationList)
    {
        PublicationDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationDetailsViewController"];
        [self.navigationController pushViewController:move animated:YES];
    }
    else
    {
        PublicationDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationDetailsViewController"];
        [self.navigationController pushViewController:move animated:YES];
    }
}




@end
