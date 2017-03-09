//
//  StatsViewController.m
//  SNews
//
//  Created by macmini on 08/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "StatsViewController.h"

@interface StatsViewController ()
{
    
}
@property(strong, nonatomic) TWRChartView *chartView;

@end

@implementation StatsViewController

- (void)viewDidLoad
{
    [self setInitparam];
    
    [self setPagingController];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setInitparam
{
    //Graph
    _chartView = [[TWRChartView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, subview_graph.frame.size.height)];
    _chartView.backgroundColor = [UIColor clearColor];
    
    // Load chart by using a ChartJS javascript file
    NSString *jsFilePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"js"];
    [_chartView setChartJsFilePath:jsFilePath];
    
    // Add the chart view to the controller's view
    [subview_graph addSubview:_chartView];

    [self loadBarChart];

}
-(void)setPagingController
{
    arrSegment = [[NSMutableArray alloc] initWithObjects:@"Stories",@"Responses", nil];
    
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

    HHHorizontalPagingView *pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:subview_header headerHeight:subview_header.frame.size.height segmentButtons:buttonArray segmentHeight:40 contentViews:@[tbl_stories, tbl_responces]];
    //pagingView.segmentButtonSize = CGSizeMake(WIDTH/2, 40);              //自定义segmentButton的大小

    tbl_stories.frame = CGRectMake(0, 0, WIDTH, HEIGHT-view_navigation.frame.size.height);
    tbl_responces.frame = CGRectMake(0, 0, WIDTH, HEIGHT-view_navigation.frame.size.height);
    
    [tbl_stories reloadData];
    [tbl_responces reloadData];
    
    pagingView.frame = CGRectMake(0, 60, WIDTH, HEIGHT-60);
    pagingView.segmentView.backgroundColor = [UIColor colorWithRed:245.0/255.0 green:245.0/255.0 blue:245.0/255.0 alpha:1.0];
    
    [self.view addSubview:pagingView];
    [self.view bringSubviewToFront:view_navigation];

}
#pragma mark - Chart

- (void)loadBarChart
{
    // Build chart data
    TWRDataSet *dataSet1 = [[TWRDataSet alloc] initWithDataPoints:@[@2, @15, @2, @8, @1,@"", @11, @9, @18, @5,@"", @7, @17, @20, @"1",@10, @2, @5, @12, @5, @16, @15, @6, @9, @5,@"", @7, @2, @1, @8]
                                                        fillColor:[kColorLightGreen colorWithAlphaComponent:1.0]
                                                      strokeColor:kColorLightGreen];
    
    
    NSArray *labels = @[@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",@"",];
    
    TWRBarChart *bar = [[TWRBarChart alloc] initWithLabels:labels
                                                  dataSets:@[dataSet1]
                                                  animated:YES];
    // Load data
    [_chartView loadBarChart:bar];
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
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 98;
}
/*
 -(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
 {
 return 85;
 }
 */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == tbl_stories)
    {
        return 2;
    }
    else
    {
        return 15;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == tbl_stories)
    {
        return [self statsCell:tableView indexPath:indexPath Message:nil];
    }
    else if (tableView == tbl_responces)
    {
        return [self statsCell:tableView indexPath:indexPath Message:nil];
    }
    return nil;
}

-(Cell_statsResponces *)statsCell:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath Message:(NSMutableDictionary *)dic
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_statsResponces *cell = (Cell_statsResponces *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_statsResponces" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor whiteColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        {
            
        }
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
    move.isfromResponces = TRUE;
    move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:0];
    [self.navigationController pushViewController:move animated:YES];
}

@end
