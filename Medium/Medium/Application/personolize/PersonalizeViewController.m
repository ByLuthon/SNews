//
//  PersonalizeViewController.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "PersonalizeViewController.h"

@interface PersonalizeViewController ()

@end

@implementation PersonalizeViewController

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
    tbl.tableHeaderView = subview_header;
    [btn_headertitle setTitle:@"See all tags you follow" forState:UIControlStateNormal];

    
    {
        arrTags = [[NSMutableArray alloc] init];
        
        NSMutableArray *arr1 = [[NSMutableArray alloc] init];
        [arr1 addObject:@"iOS App Development"];
        [arr1 addObject:@"iOS"];
        [arr1 addObject:@"Objective C - SWIFT"];
        [arr1 addObject:@"Networking"];
        
        
        NSMutableArray *arr2 = [[NSMutableArray alloc] init];
        [arr2 addObject:@"NBA"];
        [arr2 addObject:@"NFL"];
        [arr2 addObject:@"Baseball"];
        [arr2 addObject:@"Criclet"];
        
        
        NSMutableArray *arr3 = [[NSMutableArray alloc] init];
        [arr3 addObject:@"Science"];
        [arr3 addObject:@"Education"];
        [arr3 addObject:@"History"];
        [arr3 addObject:@"Space"];
        
        
        NSMutableArray *arr4 = [[NSMutableArray alloc] init];
        [arr4 addObject:@"Culture"];
        [arr4 addObject:@"Fashion"];
        [arr4 addObject:@"Travels"];
        [arr4 addObject:@"Architecture"];
        
        
        NSMutableArray *arr5 = [[NSMutableArray alloc] init];
        [arr5 addObject:@"Creativity"];
        [arr5 addObject:@"Ideas"];
        [arr5 addObject:@"Future"];
        [arr5 addObject:@"New Thing"];
        
        
        NSMutableArray *arr6 = [[NSMutableArray alloc] init];
        [arr6 addObject:@"Climates Change"];
        [arr6 addObject:@"Water"];
        [arr6 addObject:@"Transportation"];
        [arr6 addObject:@"Energy"];
        
        
        NSMutableArray *arr7 = [[NSMutableArray alloc] init];
        [arr7 addObject:@"Design"];
        [arr7 addObject:@"Social Media"];
        [arr7 addObject:@"Internet of Things"];
        [arr7 addObject:@"Self Driving Cars"];
        
        
        NSMutableArray *arr8 = [[NSMutableArray alloc] init];
        [arr8 addObject:@"Startup"];
        [arr8 addObject:@"Venture Capital"];
        [arr8 addObject:@"Enterpreneurship"];
        
        
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        [dic1 setObject:@"Recommended for you" forKey:@"title"];
        [dic1 setObject:arr1 forKey:@"array"];
        [arrTags addObject:dic1];
        
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"Sports" forKey:@"title"];
        [dic2 setObject:arr2 forKey:@"array"];
        [arrTags addObject:dic2];
        
        
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"Explore our world" forKey:@"title"];
        [dic3 setObject:arr3 forKey:@"array"];
        [arrTags addObject:dic3];
        
        NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
        [dic4 setObject:@"Culture" forKey:@"title"];
        [dic4 setObject:arr4 forKey:@"array"];
        [arrTags addObject:dic4];
        
        
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] init];
        [dic5 setObject:@"Creativity" forKey:@"title"];
        [dic5 setObject:arr5 forKey:@"array"];
        [arrTags addObject:dic5];
        
        
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] init];
        [dic6 setObject:@"Looking towards the future" forKey:@"title"];
        [dic6 setObject:arr6 forKey:@"array"];
        [arrTags addObject:dic6];
        
        
        NSMutableDictionary *dic7 = [[NSMutableDictionary alloc] init];
        [dic7 setObject:@"Tech" forKey:@"title"];
        [dic7 setObject:arr7 forKey:@"array"];
        [arrTags addObject:dic7];
        
        
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"Startup life" forKey:@"title"];
        [dic8 setObject:arr8 forKey:@"array"];
        [arrTags addObject:dic8];
        
        
        TableMethod = SEARCH_Tags;
        
    }
    
    
    
    {
        arrPeople = [[NSMutableArray alloc] init];
        
        
        NSMutableArray *arr1 = [[NSMutableArray alloc] init];
        [arr1 addObject:@"Cucumber Tony"];
        [arr1 addObject:@"SACNAS"];
        [arr1 addObject:@"Kelly Hoey"];
        
        NSMutableArray *arr2 = [[NSMutableArray alloc] init];
        [arr2 addObject:@"Alicia Scott"];
        [arr2 addObject:@"Nora Reed"];
        [arr2 addObject:@"Eric Elliott"];
        [arr2 addObject:@"Winnie Lim"];
        [arr2 addObject:@"Carol Papper"];
        [arr2 addObject:@"Pedro Pinada"];
        
        
        NSMutableDictionary *dic7 = [[NSMutableDictionary alloc] init];
        [dic7 setObject:@"People Writing about Networking" forKey:@"title"];
        [dic7 setObject:arr1 forKey:@"array"];
        [arrPeople addObject:dic7];
        
        
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"More People to follow" forKey:@"title"];
        [dic8 setObject:arr2 forKey:@"array"];
        [arrPeople addObject:dic8];
        
        
    }
    
    
    
    {
        arrPublications = [[NSMutableArray alloc] init];
        
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
        
        
        
        [arrPublications addObject:dic1];
        [arrPublications addObject:dic2];
        [arrPublications addObject:dic3];
        [arrPublications addObject:dic4];
        [arrPublications addObject:dic5];
        [arrPublications addObject:dic6];
        [arrPublications addObject:dic8];
        [arrPublications addObject:dic9];
        [arrPublications addObject:dic10];
        [arrPublications addObject:dic11];
        [arrPublications addObject:dic12];
        [arrPublications addObject:dic13];
        [arrPublications addObject:dic14];
        [arrPublications addObject:dic15];
        [arrPublications addObject:dic16];
        [arrPublications addObject:dic17];
        [arrPublications addObject:dic18];
        [arrPublications addObject:dic19];
        [arrPublications addObject:dic20];
        [arrPublications addObject:dic21];
        [arrPublications addObject:dic22];
        
        
        
    }
    
    
    TableMethod = SEARCH_Tags;
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

- (IBAction)segmentValueChanged:(id)sender
{
    
    if (segmentController.selectedSegmentIndex == 0)
    {
        //stories
        TableMethod = SEARCH_Tags;
        
        [btn_headertitle setTitle:@"See all tags you follow" forState:UIControlStateNormal];

    }
    else if (segmentController.selectedSegmentIndex == 1)
    {
        //People
        TableMethod = SEARCH_People;
        
        [btn_headertitle setTitle:@"See all people you follow" forState:UIControlStateNormal];

    }
    else if (segmentController.selectedSegmentIndex == 2)
    {
        //Publications
        TableMethod = SEARCH_Publication;
        
        [btn_headertitle setTitle:@"See all publications you follow" forState:UIControlStateNormal];

    }
    
    [tbl reloadData];
    
}

- (IBAction)headerTapped:(id)sender
{
    if (TableMethod == SEARCH_Tags)
    {
        FollowTagsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FollowTagsViewController"];
        [self.navigationController pushViewController:move animated:YES];
    }
    else if (TableMethod == SEARCH_People)
    {
        FollowingFollowersViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FollowingFollowersViewController"];
        move.isFollowing = TRUE;
        [self.navigationController pushViewController:move animated:YES];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        PublicationsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationsViewController"];
        move.isPublicationList = TRUE;
        [self.navigationController pushViewController:move animated:YES];
    }
}
#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (TableMethod == SEARCH_Tags)
    {
        return [arrTags count];
    }
    else if (TableMethod == SEARCH_People)
    {
        return [arrPeople count];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return [arrPublications count];
    }
    return 0;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (TableMethod == SEARCH_Tags)
    {
        return 44;
    }
    else if (TableMethod == SEARCH_People)
    {
        return 60;
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return 86;
    }
    return 0;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Tags)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 30)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text = [[arrTags objectAtIndex:section] objectForKey:@"title"];
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    else if (TableMethod == SEARCH_People)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 30)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text = [[arrPeople objectAtIndex:section] objectForKey:@"title"];
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    else if (TableMethod == SEARCH_Publication)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 30)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:12];
        lblusername.text = [[arrPublications objectAtIndex:section] objectForKey:@"title"];
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    return nil;

}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    
    if (TableMethod == SEARCH_Tags)
    {
        if (section == [arrTags count]-1)
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 60)] ;
            tableView.sectionHeaderHeight = view.frame.size.height;
            
            UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 60)];
            lblusername.textColor = [UIColor whiteColor];
            lblusername.textAlignment = NSTextAlignmentCenter;
            lblusername.font = [UIFont boldSystemFontOfSize:12];
            lblusername.text =@"People to follow  ->";
            lblusername.backgroundColor = kColorLightGreen;
            [view addSubview:lblusername];
            
            
            UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, WIDTH, 60);
            button.backgroundColor = [UIColor clearColor];
            [button setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 
                 [segmentController setSelectedSegmentIndex:1];
                 TableMethod = SEARCH_People;
                 [tbl reloadData];
                 
                 [tbl setContentOffset:CGPointZero animated:YES];

             }];
            [view addSubview:button];

            return view;
        }
        else
        {
            return nil;
        }
    }
    if (TableMethod == SEARCH_People)
    {
        if (section == [arrPeople count]-1)
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 60)] ;
            tableView.sectionHeaderHeight = view.frame.size.height;
            
            UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 60)];
            lblusername.textColor = [UIColor whiteColor];
            lblusername.textAlignment = NSTextAlignmentCenter;
            lblusername.font = [UIFont boldSystemFontOfSize:12];
            lblusername.text =@"Publications to follow  ->";
            lblusername.backgroundColor = kColorLightGreen;
            [view addSubview:lblusername];
            
            UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, WIDTH, 60);
            button.backgroundColor = [UIColor clearColor];
            [button setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 [segmentController setSelectedSegmentIndex:2];
                 TableMethod = SEARCH_Publication;
                 [tbl reloadData];
                
                 [tbl setContentOffset:CGPointZero animated:YES];

             }];
            [view addSubview:button];

            return view;
        }
        else
        {
            return nil;
        }
    }
    if (TableMethod == SEARCH_Publication)
    {
        if (section == [arrPublications count]-1)
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.bounds.size.width, 60)] ;
            tableView.sectionHeaderHeight = view.frame.size.height;
            
            UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 60)];
            lblusername.textColor = [UIColor whiteColor];
            lblusername.textAlignment = NSTextAlignmentCenter;
            lblusername.font = [UIFont boldSystemFontOfSize:12];
            lblusername.text =@"Back to tags";
            lblusername.backgroundColor = kColorLightGreen;
            [view addSubview:lblusername];
            
            UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.frame = CGRectMake(0, 0, WIDTH, 60);
            button.backgroundColor = [UIColor clearColor];
            [button setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 [segmentController setSelectedSegmentIndex:0];
                 
                 TableMethod = SEARCH_Tags;
                 [tbl reloadData];
                 
                 [tbl setContentOffset:CGPointZero animated:YES];
             }];
            [view addSubview:button];

            return view;
        }
        else
        {
            return nil;
        }
    }
    return nil;

}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Tags)
    {
        if (section == [arrTags count]-1)
        {
            return 60;
        }
        else
        {
            return 0;
        }
    }
    if (TableMethod == SEARCH_People)
    {
        if (section == [arrPeople count]-1)
        {
            return 60;
        }
        else
        {
            return 0;
        }
    }
    if (TableMethod == SEARCH_Publication)
    {
        if (section == [arrPublications count]-1)
        {
            return 60;
        }
        else
        {
            return 0;
        }
    }
    return 0;

}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Tags)
    {
        return [[[arrTags objectAtIndex:section] objectForKey:@"array"] count];
    }
    else if (TableMethod == SEARCH_People)
    {
        return [APP_DELEGATE.arrUserlist count];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return [[[arrPublications objectAtIndex:section] objectForKey:@"array"] count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (TableMethod == SEARCH_Tags)
    {
        return [self TagsCell:tableView indexPath:indexPath Message:[arrTags objectAtIndex:indexPath.section]];
    }
    else if (TableMethod == SEARCH_People)
    {
        return [self propleCell:tableView indexPath:indexPath Message:[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.section]];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return [self publicationCell:tableView indexPath:indexPath Message:[arrPublications objectAtIndex:indexPath.section]];
    }
    return nil;
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
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            cell.img_title.image = [UIImage imageNamed:[[[dic objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"image"]];
            
            cell.lbl_title.text = [NSString stringWithFormat:@"%@",[[[dic objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"title"]];
            
            cell.lbl_Category.text = [NSString stringWithFormat:@"%@",[[[dic objectForKey:@"array"] objectAtIndex:indexPath.row] objectForKey:@"category"]];
            
            [cell.btn_folloow setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 if (cell.btn_folloow.selected == TRUE)
                 {
                     cell.btn_folloow.selected = FALSE;
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

-(Cell_People *)propleCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_People *cell = (Cell_People *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_People" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            cell.img_user.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[dic objectForKey:@"FirstName"]]];
            
            cell.lbl_name.text = [NSString stringWithFormat:@"%@ %@",[dic objectForKey:@"FirstName"],[dic objectForKey:@"LastName"]];

            
            //cell.img_user.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
            
            //cell.lbl_name.text = [[dic objectForKey:@"array"] objectAtIndex:indexPath.row];
            
            
            [cell.btn_follow setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 if (cell.btn_follow.selected == TRUE)
                 {
                     cell.btn_follow.selected = FALSE;
                 }
                 else
                 {
                     cell.btn_follow.selected = TRUE;
                 }
             }];
            
        }
        
    }
    return cell;
}
-(Cell_TagsList *)TagsCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_TagsList *cell = (Cell_TagsList *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_TagsList" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
        {
            cell.lbl_title.text = [[dic objectForKey:@"array"] objectAtIndex:indexPath.row];
        }
        cell.btn_select.hidden = TRUE;
        

    }
    return cell;

    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (TableMethod == SEARCH_Tags)
    {
        TagsDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"TagsDetailsViewController"];
        move.strTitle = [[[arrTags objectAtIndex:indexPath.section] objectForKey:@"array"] objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:move animated:YES];
    }
    else if (TableMethod == SEARCH_People)
    {
        /*
        FriendsProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FriendsProfileViewController"];
        [self.navigationController pushViewController:move animated:YES];
         */
        
        HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
        move.isfromResponces = FALSE;
        move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:move animated:YES];

    }
    else if (TableMethod == SEARCH_Publication)
    {
        PublicationDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationDetailsViewController"];
        [self.navigationController pushViewController:move animated:YES];
    }
}



@end
