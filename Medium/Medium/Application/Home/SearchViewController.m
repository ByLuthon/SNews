//
//  SearchViewController.m
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

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
    {
        arrSearchHistory = [[NSMutableArray alloc] init];
        
        TableMethod = SEARCH_Suggested;
        
        arrSuggestedSearch = [[NSMutableArray alloc] init];
        [arrSuggestedSearch addObject:@"2016 Election"];
        [arrSuggestedSearch addObject:@"Authors"];
        [arrSuggestedSearch addObject:@"BlackLivesMatter"];
        [arrSuggestedSearch addObject:@"Book Review"];
        [arrSuggestedSearch addObject:@"Books"];
        [arrSuggestedSearch addObject:@"Business"];
        [arrSuggestedSearch addObject:@"Career"];
        [arrSuggestedSearch addObject:@"Career Advice"];
        [arrSuggestedSearch addObject:@"Career Change"];
        [arrSuggestedSearch addObject:@"Career Development"];
        [arrSuggestedSearch addObject:@"Careers"];
        [arrSuggestedSearch addObject:@"Children"];
        [arrSuggestedSearch addObject:@"Christianity"];
        [arrSuggestedSearch addObject:@"Comedy"];
        [arrSuggestedSearch addObject:@"Comics"];
        [arrSuggestedSearch addObject:@"Communication"];
        [arrSuggestedSearch addObject:@"Cooking"];
        [arrSuggestedSearch addObject:@"Dating"];
        [arrSuggestedSearch addObject:@"Diversity"];
        [arrSuggestedSearch addObject:@"Economics"];
        [arrSuggestedSearch addObject:@"Equality"];
        [arrSuggestedSearch addObject:@"Family"];
        [arrSuggestedSearch addObject:@"Feminism"];
        [arrSuggestedSearch addObject:@"Fiction"];
        [arrSuggestedSearch addObject:@"Film"];
        [arrSuggestedSearch addObject:@"Finance"];
        [arrSuggestedSearch addObject:@"Food"];
        [arrSuggestedSearch addObject:@"Funny"];
        [arrSuggestedSearch addObject:@"Gay"];
        [arrSuggestedSearch addObject:@"Gay Merriage"];
        [arrSuggestedSearch addObject:@"Gender Equality"];
        [arrSuggestedSearch addObject:@"God"];
        [arrSuggestedSearch addObject:@"Goverment"];
        [arrSuggestedSearch addObject:@"Health"];
        [arrSuggestedSearch addObject:@"Healthcare"];
        [arrSuggestedSearch addObject:@"Humor"];
        [arrSuggestedSearch addObject:@"Humour"];
        [arrSuggestedSearch addObject:@"IMHQ"];
        [arrSuggestedSearch addObject:@"Innovation"];
        [arrSuggestedSearch addObject:@"Inspiration"];
        [arrSuggestedSearch addObject:@"Investing"];
        [arrSuggestedSearch addObject:@"Jobs"];
        [arrSuggestedSearch addObject:@"Leadership"];
        [arrSuggestedSearch addObject:@"LGBT"];
        [arrSuggestedSearch addObject:@"LGBTQ"];
        [arrSuggestedSearch addObject:@"Life Lessons"];
        [arrSuggestedSearch addObject:@"Lifestyle"];
        [arrSuggestedSearch addObject:@"Love"];
        [arrSuggestedSearch addObject:@"Marriage"];
        [arrSuggestedSearch addObject:@"Marriage Equality"];
        [arrSuggestedSearch addObject:@"Medicine"];
        [arrSuggestedSearch addObject:@"Memoirs"];
        [arrSuggestedSearch addObject:@"Mental Health"];
        [arrSuggestedSearch addObject:@"Money"];
        [arrSuggestedSearch addObject:@"Motherhood"];
        [arrSuggestedSearch addObject:@"Movies"];
        [arrSuggestedSearch addObject:@"Nutrition"];
        [arrSuggestedSearch addObject:@"Parenting"];
        [arrSuggestedSearch addObject:@"Parents"];
        [arrSuggestedSearch addObject:@"Photo Essay"];
        [arrSuggestedSearch addObject:@"Photography"];
        [arrSuggestedSearch addObject:@"Photojournalism"];
        [arrSuggestedSearch addObject:@"Poem"];
        [arrSuggestedSearch addObject:@"Poetry"];
        [arrSuggestedSearch addObject:@"Politics"];
        [arrSuggestedSearch addObject:@"Productivity"];
        [arrSuggestedSearch addObject:@"Race"];
        [arrSuggestedSearch addObject:@"Racism"];
        [arrSuggestedSearch addObject:@"Reading"];
        [arrSuggestedSearch addObject:@"Recipe"];
        [arrSuggestedSearch addObject:@"Relationship"];
        [arrSuggestedSearch addObject:@"Religion"];
        [arrSuggestedSearch addObject:@"Restaurants"];
        [arrSuggestedSearch addObject:@"Same Sex Marriage"];
        [arrSuggestedSearch addObject:@"Satire"];
        [arrSuggestedSearch addObject:@"Self Improvement"];
        [arrSuggestedSearch addObject:@"Sexism"];
        [arrSuggestedSearch addObject:@"Short Fiction"];
        [arrSuggestedSearch addObject:@"Short Stories"];
        [arrSuggestedSearch addObject:@"Spirituality"];
        [arrSuggestedSearch addObject:@"Sports"];
        [arrSuggestedSearch addObject:@"Stock Market"];
        [arrSuggestedSearch addObject:@"Television"];
        [arrSuggestedSearch addObject:@"Transgender"];
        [arrSuggestedSearch addObject:@"Women"];
        [arrSuggestedSearch addObject:@"Women in Tech"];
        [arrSuggestedSearch addObject:@"Womens Health"];
        [arrSuggestedSearch addObject:@"Writing"];
        [arrSuggestedSearch addObject:@"Writing Prompts"];
        [arrSuggestedSearch addObject:@"Writing Tips"];
        
    }
    
    
    {
        ///////////////////////////////////////////////////////
        
        arrPeople = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d1i = [[NSMutableDictionary alloc] init];
        [d1i setObject:@"zHVoWqKV.jpg" forKey:@"image"];
        [d1i setObject:@"Hillary Clinton" forKey:@"title"];
        [d1i setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d1i];
        
        NSMutableDictionary *d1i1 = [[NSMutableDictionary alloc] init];
        [d1i1 setObject:@"Trump1.jpg" forKey:@"image"];
        [d1i1 setObject:@"Doland Trump" forKey:@"title"];
        [d1i1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d1i1];
        
        NSMutableDictionary *d1i2 = [[NSMutableDictionary alloc] init];
        [d1i2 setObject:@"0.34592100-1450848819-indian-pm-narendra-modi-russia-remains-our-principal-partner.jpg" forKey:@"image"];
        [d1i2 setObject:@"MODI" forKey:@"title"];
        [d1i2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d1i2];
        
        
        NSMutableDictionary *d11i2 = [[NSMutableDictionary alloc] init];
        [d11i2 setObject:@"111412-politics-barack-obama-press-conference.jpg" forKey:@"image"];
        [d11i2 setObject:@"Barak OBAMA" forKey:@"title"];
        [d11i2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d11i2];
        
        
        NSMutableDictionary *d1i3 = [[NSMutableDictionary alloc] init];
        [d1i3 setObject:@"PUTIN_RUSO.jpg" forKey:@"image"];
        [d1i3 setObject:@"PUTIN" forKey:@"title"];
        [d1i3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d1i3];
        
        
        NSMutableDictionary *d13i3 = [[NSMutableDictionary alloc] init];
        [d13i3 setObject:@"96bb6c71-3ce5-485a-9be4-b335a8fbfa8b_560_420.jpg" forKey:@"image"];
        [d13i3 setObject:@"Dalai Lama" forKey:@"title"];
        [d13i3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d13i3];
        
        NSMutableDictionary *d12i3 = [[NSMutableDictionary alloc] init];
        [d12i3 setObject:@"article-0-16F4E343000005DC-374_634x459.jpg" forKey:@"image"];
        [d12i3 setObject:@"Nelson Mandela" forKey:@"title"];
        [d12i3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d12i3];
        
        NSMutableDictionary *d1i11 = [[NSMutableDictionary alloc] init];
        [d1i11 setObject:@"SONIC BOOOM nicAsOsama.jpg" forKey:@"image"];
        [d1i11 setObject:@"LADEN" forKey:@"title"];
        [d1i11 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [arrPeople addObject:d1i11];
    }
    
    
    {
        
        //////////////////////////////////////////////////////////////////////////////////
        
        arrPublications = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *d1 = [[NSMutableDictionary alloc] init];
        [d1 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d1 setObject:@"The Mission" forKey:@"title"];
        [d1 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d1 setObject:@"222k followers - Social Media" forKey:@"category"];
        [arrPublications addObject:d1];
        
        NSMutableDictionary *d2 = [[NSMutableDictionary alloc] init];
        [d2 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d2 setObject:@"Startup Grind" forKey:@"title"];
        [d2 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d2 setObject:@"208k followers - Popular in Tech" forKey:@"category"];
        [arrPublications addObject:d2];
        
        
        NSMutableDictionary *d3 = [[NSMutableDictionary alloc] init];
        [d3 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d3 setObject:@"Backchannel" forKey:@"title"];
        [d3 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d3 setObject:@"158k followers - Privacy" forKey:@"category"];
        [arrPublications addObject:d3];
        
        
        NSMutableDictionary *d4 = [[NSMutableDictionary alloc] init];
        [d4 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d4 setObject:@"freeCodeCamp" forKey:@"title"];
        [d4 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d4 setObject:@"108k followers - Design" forKey:@"category"];
        [arrPublications addObject:d4];
        
        
        NSMutableDictionary *d5 = [[NSMutableDictionary alloc] init];
        [d5 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d5 setObject:@"The Mission" forKey:@"title"];
        [d5 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d5 setObject:@"222k followers - Social Media" forKey:@"category"];
        [arrPublications addObject:d5];
        
        NSMutableDictionary *d6 = [[NSMutableDictionary alloc] init];
        [d6 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d6 setObject:@"Startup Grind" forKey:@"title"];
        [d6 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d6 setObject:@"208k followers - Popular in Tech" forKey:@"category"];
        [arrPublications addObject:d6];
        
        
        NSMutableDictionary *d7 = [[NSMutableDictionary alloc] init];
        [d7 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d7 setObject:@"Backchannel" forKey:@"title"];
        [d7 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d7 setObject:@"158k followers - Privacy" forKey:@"category"];
        [arrPublications addObject:d7];
        
        
        NSMutableDictionary *d8 = [[NSMutableDictionary alloc] init];
        [d8 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d8 setObject:@"freeCodeCamp" forKey:@"title"];
        [d8 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d8 setObject:@"108k followers - Design" forKey:@"category"];
        [arrPublications addObject:d8];
        
        
        NSMutableDictionary *d9 = [[NSMutableDictionary alloc] init];
        [d9 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d9 setObject:@"The Mission" forKey:@"title"];
        [d9 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d9 setObject:@"222k followers - Social Media" forKey:@"category"];
        [arrPublications addObject:d9];
        
        NSMutableDictionary *d10 = [[NSMutableDictionary alloc] init];
        [d10 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d10 setObject:@"Startup Grind" forKey:@"title"];
        [d10 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d10 setObject:@"208k followers - Popular in Tech" forKey:@"category"];
        [arrPublications addObject:d10];
        
        
        NSMutableDictionary *d11 = [[NSMutableDictionary alloc] init];
        [d11 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d11 setObject:@"Backchannel" forKey:@"title"];
        [d11 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d11 setObject:@"158k followers - Privacy" forKey:@"category"];
        [arrPublications addObject:d11];
        
        
        NSMutableDictionary *d12 = [[NSMutableDictionary alloc] init];
        [d12 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d12 setObject:@"freeCodeCamp" forKey:@"title"];
        [d12 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d12 setObject:@"108k followers - Design" forKey:@"category"];
        [arrPublications addObject:d12];
        
        
        NSMutableDictionary *d13 = [[NSMutableDictionary alloc] init];
        [d13 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d13 setObject:@"The Mission" forKey:@"title"];
        [d13 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d13 setObject:@"222k followers - Social Media" forKey:@"category"];
        [arrPublications addObject:d13];
        
        NSMutableDictionary *d14 = [[NSMutableDictionary alloc] init];
        [d14 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d14 setObject:@"Startup Grind" forKey:@"title"];
        [d14 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d2 setObject:@"208k followers - Popular in Tech" forKey:@"category"];
        [arrPublications addObject:d14];
        
        
        NSMutableDictionary *d15 = [[NSMutableDictionary alloc] init];
        [d15 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d15 setObject:@"Backchannel" forKey:@"title"];
        [d15 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d15 setObject:@"158k followers - Privacy" forKey:@"category"];
        [arrPublications addObject:d15];
        
        
        NSMutableDictionary *d16 = [[NSMutableDictionary alloc] init];
        [d16 setObject:@"pUHtAZOh.jpg" forKey:@"image"];
        [d16 setObject:@"freeCodeCamp" forKey:@"title"];
        [d16 setObject:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book" forKey:@"desc"];
        [d16 setObject:@"108k followers - Design" forKey:@"category"];
        [arrPublications addObject:d16];

    }
    

    
    //////////////////////////////////////////////////////////////////////////////////
    
    arrTags = [[NSMutableArray alloc] init];

    [arrTags addObject:@"2016 Election"];
    [arrTags addObject:@"Politics"];
    [arrTags addObject:@"Donald Trump"];
    [arrTags addObject:@"Hilary Clinton"];
    [arrTags addObject:@"Bernie Sanders"];
    [arrTags addObject:@"Trump"];
    [arrTags addObject:@"OBAMA"];
    [arrTags addObject:@"Elections"];
    [arrTags addObject:@"Racism"];
    [arrTags addObject:@"WhiteHouse"];
    [arrTags addObject:@"News"];

    [tbl reloadData];
    [self showSegmentController:NO];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)showSegmentController:(BOOL)isshow
{
    segment.hidden = !isshow;
    if (isshow)
    {
        view_navigation.frame = CGRectMake(0, 0, WIDTH, 104);
        tbl.frame = CGRectMake(0, view_navigation.frame.size.height, WIDTH, HEIGHT-view_navigation.frame.size.height);
    }
    else
    {
        view_navigation.frame = CGRectMake(0, 0, WIDTH, 60);
        tbl.frame = CGRectMake(0, view_navigation.frame.size.height, WIDTH, HEIGHT-view_navigation.frame.size.height);
    }
}
#pragma mark - BACK

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)segmentValuChanged:(id)sender
{
    if (segment.selectedSegmentIndex == 0)
    {
        //stories
        TableMethod = SEARCH_Stories;
    }
    else if (segment.selectedSegmentIndex == 1)
    {
        //People
        TableMethod = SEARCH_People;
    }
    else if (segment.selectedSegmentIndex == 2)
    {
        //Publications
        TableMethod = SEARCH_Publication;
    }
    else if (segment.selectedSegmentIndex == 3)
    {
        //Tags
        TableMethod = SEARCH_Tags;
    }
    [tbl reloadData];
    
}
#pragma mark - Searchbar
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar;                      // return NO to not become first responder
{
    //[searchbar becomeFirstResponder];
    searchbar.showsCancelButton = YES;
    
    TableMethod = SEARCH_SearchHistory;
    [tbl reloadData];
    
    return YES;
}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar
{
    [self showSegmentController:NO];

    searchbar.showsCancelButton = NO;
    [searchbar resignFirstResponder];
    
    searchbar.text = @"";

    TableMethod = SEARCH_Suggested;
    [tbl reloadData];
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar; // called when keyboard search button pressed
{
    
}
- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    if ([searchText length] == 0)
    {
        [self performSelector:@selector(calledCloseSearch)
                        withObject:nil
                        afterDelay:0];
        
        
    }
}
-(void)calledCloseSearch
{
    [self showSegmentController:NO];

    TableMethod = SEARCH_SearchHistory;
    [tbl reloadData];
    
    [searchbar becomeFirstResponder];
}
#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Suggested || TableMethod == SEARCH_SearchHistory)
    {
        return 40;
    }
    else
    {
        return 0;
    }
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Suggested)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = [UIColor whiteColor];
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor blackColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.textAlignment = NSTextAlignmentCenter;
        lblusername.text = @"Suggested";
        [headerVw addSubview:lblusername];

        return headerVw;
    }
    else if (TableMethod == SEARCH_SearchHistory)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = [UIColor whiteColor];
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, WIDTH, 30)];
        lblusername.textColor = [UIColor darkGrayColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.textAlignment = NSTextAlignmentLeft;
        lblusername.text = @"Search history";
        [headerVw addSubview:lblusername];
        
        
        UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(WIDTH- 70, 10, 60, 30);
        button.backgroundColor = [UIColor clearColor];
        [button setTitle:@"Clear" forState:UIControlStateNormal];
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        button.titleLabel.font = [UIFont systemFontOfSize:14];
        [button setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor clearColor];
        [button setOnTouchUpInside:^(id sender, UIEvent *event)
         {
             [arrSearchHistory removeAllObjects];
             TableMethod = SEARCH_SearchHistory;
             [tbl reloadData];
         }];
        [headerVw addSubview:button];

        return headerVw;
    }
    else
    {
        return nil;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (TableMethod == SEARCH_Suggested | TableMethod == SEARCH_SearchHistory)
    {
        return 40;
    }
    else if (TableMethod == SEARCH_Stories)
    {
        return 509;
    }
    else if (TableMethod == SEARCH_People)
    {
        return 60;
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return 60;
    }
    else if (TableMethod == SEARCH_Tags)
    {
        return 44;
    }
    else
    {
        return 0;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (TableMethod == SEARCH_Suggested)
    {
        return  [arrSuggestedSearch count];
    }
    else if (TableMethod == SEARCH_SearchHistory)
    {
        return  [arrSearchHistory count];
    }
    else if (TableMethod == SEARCH_Stories)
    {
        return  [APP_DELEGATE.arrUserlist count];
    }
    else if (TableMethod == SEARCH_People)
    {
        return  [APP_DELEGATE.arrUserlist count];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return  [arrPublications count];
    }
    else if (TableMethod == SEARCH_Tags)
    {
        return  [arrTags count];
    }
    else
    {
        return 0;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (TableMethod == SEARCH_Stories)
    {
        return [self storiesCell:tableView indexPath:indexPath Message:nil];
    }
    else if (TableMethod == SEARCH_People)
    {
        return [self propleCell:tableView indexPath:indexPath Message:[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row]];
    }
    else if (TableMethod == SEARCH_Publication)
    {
        return [self publicationCell:tableView indexPath:indexPath Message:[arrPublications objectAtIndex:indexPath.row]];
    }
    else if (TableMethod == SEARCH_Tags)
    {
        return [self TagsCell:tableView indexPath:indexPath Message:[arrTags objectAtIndex:indexPath.row]];
    }
    else
    {
        NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld %ld",(long)indexPath.row,(long)indexPath.section];
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        
        cell = nil;
        
        if (cell == nil)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
            
            if (TableMethod == SEARCH_Suggested)
            {
                cell.backgroundColor = [UIColor clearColor];
                
                cell.textLabel.text = [arrSuggestedSearch objectAtIndex:indexPath.row];
                cell.textLabel.textAlignment = NSTextAlignmentCenter;
                cell.textLabel.font = [UIFont boldSystemFontOfSize:14];
                cell.textLabel.textColor = kColorLightGreen;
            }
            else if (TableMethod == SEARCH_SearchHistory)
            {
                cell.backgroundColor = [UIColor clearColor];
                
                cell.textLabel.text = [arrSearchHistory objectAtIndex:indexPath.row];
                cell.textLabel.font = [UIFont boldSystemFontOfSize:14];
                cell.textLabel.textColor = kColorLightGreen;
            }
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        return cell;
    }
}

-(Cell_Home *)storiesCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
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
-(Cell_People *)propleCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_People *cell = (Cell_People *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_People" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            cell.img_user.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[dic objectForKey:@"FirstName"]]];
            
            cell.lbl_name.text = [NSString stringWithFormat:@"%@ %@",[dic objectForKey:@"FirstName"],[dic objectForKey:@"LastName"]];

            
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
            cell.img_title.image = [UIImage imageNamed:[dic objectForKey:@"image"]];
            
            cell.lbl_title.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"title"]];
            
            cell.lbl_Category.text = [NSString stringWithFormat:@"%@",[dic objectForKey:@"category"]];
            
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

-(Cell_Tags *)TagsCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_Tags *cell = (Cell_Tags *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_Tags" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            cell.lbl_title.text = [arrTags objectAtIndex:indexPath.row];
        }
        
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (TableMethod == SEARCH_Suggested)
    {
        searchbar.text = [arrSuggestedSearch objectAtIndex:indexPath.row];
        [searchbar becomeFirstResponder];
        searchbar.showsCancelButton = YES;
        
        [arrSearchHistory addObject:[arrSuggestedSearch objectAtIndex:indexPath.row]];
        
        TableMethod = SEARCH_Stories;
        [tbl reloadData];
        
        [self showSegmentController:YES];
    }
    else if (TableMethod == SEARCH_SearchHistory)
    {
        searchbar.text = [arrSuggestedSearch objectAtIndex:indexPath.row];
        [searchbar becomeFirstResponder];
        searchbar.showsCancelButton = YES;
        
        TableMethod = SEARCH_Stories;
        [tbl reloadData];
        
        [self showSegmentController:YES];
    }
    else if (TableMethod == SEARCH_Stories)
    {
        HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
        move.isfromResponces = FALSE;
        move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:0];
        [self.navigationController pushViewController:move animated:YES];
    }
    else if (TableMethod == SEARCH_People)
    {
        HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
        move.isfromResponces = FALSE;
        move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:move animated:YES];
    }

}


@end
