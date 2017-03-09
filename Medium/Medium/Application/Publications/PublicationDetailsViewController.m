//
//  PublicationDetailsViewController.m
//  SNews
//
//  Created by macmini on 21/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "PublicationDetailsViewController.h"

@interface PublicationDetailsViewController ()

@end

@implementation PublicationDetailsViewController

- (void)viewDidLoad
{
    
    [self setPagingview];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
-(void)setPagingview
{
    sectionArr = [[NSMutableArray alloc] initWithObjects:@"HOME",@"CLIMATE",@"POLITICS",@"RUSSIA",@"SUPREME COURT",@"FEATURE",@"IMMIGRATION",@"VIDEO", nil];
    
    buttonArray = [NSMutableArray array];
    tblArray = [NSMutableArray array];
    
    for(int i = 0; i < sectionArr.count; i++)
    {
        UIButton *segmentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [segmentButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [segmentButton setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
        segmentButton.titleLabel.font = [UIFont boldSystemFontOfSize:14];
        [segmentButton setTitle:[NSString stringWithFormat:@"%@",[sectionArr objectAtIndex:i]] forState:UIControlStateNormal];
        [buttonArray addObject:segmentButton];
        
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 0, 0) style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.backgroundColor = [UIColor clearColor];
        [tblArray addObject:tableView];
    }
    
    pagingView = [HHHorizontalPagingView pagingViewWithHeaderView:subview_header headerHeight:110.0 segmentButtons:buttonArray segmentHeight:40 contentViews:tblArray];
    pagingView.frame = CGRectMake(0, 60, WIDTH, HEIGHT-60);
    //    pagingView.segmentButtonSize = CGSizeMake(60., 30.);              //自定义segmentButton的大小
    pagingView.segmentView.backgroundColor = subview_header.backgroundColor;     //设置segmentView的背景色

    subview_headerBottom.hidden = TRUE;
    
    [self.view addSubview:pagingView];
    [self.view bringSubviewToFront:view_navigation];

}
-(void)setHeaderframe:(float)customHeight
{
    /*
    pagingView.headerViewHeight = customHeight;

    pagingView.headerView.frame = CGRectMake(0, 0, WIDTH, customHeight);
    pagingView.segmentView.frame = CGRectMake(pagingView.segmentView.frame.origin.x, customHeight, pagingView.segmentView.frame.size.width, pagingView.segmentView.frame.size.height);
    
    pagingView.currentScrollView.frame = CGRectMake(0, pagingView.segmentView.frame.origin.y + pagingView.segmentView.frame.size.height, WIDTH, HEIGHT - (pagingView.segmentView.frame.origin.y + pagingView.segmentView.frame.size.height));
     */
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)follow:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn.selected == FALSE)
    {
        btn.selected = TRUE;
        btn.backgroundColor = [UIColor whiteColor];
        //subview_headerBottom.hidden = FALSE;
        [self setHeaderframe:180.0];
    }
    else
    {
        btn.selected = FALSE;
        btn.backgroundColor = ColorFromHEX(@"#5421AE");
        //subview_headerBottom.hidden = TRUE;
        [self setHeaderframe:110.0];
        
    }
}

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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
    move.isfromResponces = FALSE;
    move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:move animated:YES];
}

@end
