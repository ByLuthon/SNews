//
//  HomeDetailsViewController.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "HomeDetailsViewController.h"

@interface HomeDetailsViewController ()

@end

@implementation HomeDetailsViewController
@synthesize isfromResponces,getDict;

- (void)viewDidLoad
{
    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)setInitParam
{
    
    view_Scrl.frame = CGRectMake(0, 0, WIDTH, view_Scrl.frame.size.height);
    
    arrTags = [[NSMutableArray alloc] init];
    [arrTags addObject:@"Life"];
    [arrTags addObject:@"On Writing"];
    [arrTags addObject:@"Politics"];
    [arrTags addObject:@"Travel"];
    [arrTags addObject:@"Music"];
    [arrTags addObject:@"Art"];
    [arrTags addObject:@"Movies and Television"];
    [arrTags addObject:@"Education"];
    [arrTags addObject:@"Design"];
    [arrTags addObject:@"Technology"];
    [arrTags addObject:@"Books"];
    [arrTags addObject:@"Food"];
    [arrTags addObject:@"Photography"];
    [arrTags addObject:@"Creative Writing"];
    [arrTags addObject:@"Health"];

    
    [self setTags];
    
    if (isfromResponces)
    {
        btn_edit.hidden = FALSE;
        btn_follow.hidden = TRUE;
    }
    else
    {
        btn_edit.hidden = TRUE;
        btn_follow.hidden = FALSE;
    }
    
    img_user.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[getDict objectForKey:@"FirstName"]]];
    
    lbl_userName.text = [NSString stringWithFormat:@"%@ %@",[getDict objectForKey:@"FirstName"],[getDict objectForKey:@"LastName"]];

    
    [scrl addSubview:view_Scrl];
    scrl.contentSize = CGSizeMake(WIDTH, view_Scrl.frame.size.height);

    CGFloat borderWidth = 0.5;
    
    // This creates a testing view to test the theory, in your case this will be your UILabel
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 1)];
    view.layer.borderColor = [UIColor grayColor].CGColor;
    view.layer.borderWidth = borderWidth;
    [_subview_bottom addSubview:view];

    
    _subview_bottom.frame = CGRectMake(0, HEIGHT - _subview_bottomTag.frame.size.height, WIDTH, _subview_bottomTag.frame.size.height);
    _subview_bottom.hidden = FALSE;
    [self.view bringSubviewToFront:_subview_bottom];

}
#pragma mark - TAGS

-(void)setTags
{
    int x_tags= 0;
    int y_tags = 10;
    
    int Heightview = 0;
    for (int ik=0; ik < [arrTags count]; ik++)
    {
        NSString *valueEmoj = [arrTags objectAtIndex:ik];
        UIFont *font = [UIFont systemFontOfSize:12];
        
        CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(250, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
        CGSize size = textRect.size;
        
        Heightview = y_tags + size.height + 10;
        
        UIButton *btn =  [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(x_tags, y_tags, size.width + 10, size.height + 10)];
        [btn setTitle:(valueEmoj ? valueEmoj : @"") forState:UIControlStateNormal];
        btn.titleLabel.font = font;
        btn.tag = ik;
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor whiteColor];
        //[btn addTarget:self action:@selector(ClickTag:) forControlEvents:UIControlEventTouchUpInside];
        [APP_DELEGATE setBorderToView:btn withBorderWidth:0 radious:4.0 color:[UIColor clearColor]];
        //[_globalGDXData setShaowOnView:btn shadowRadius:1.0 shadowOpacity:1.0 cornerRadius:0.0];
        // border radius
        [btn.layer setCornerRadius:4.0f];
        // border
        [btn.layer setBorderColor:[UIColor lightGrayColor].CGColor];
        [btn.layer setBorderWidth:1.0f];
        // drop shadow
        [btn.layer setShadowColor:[UIColor grayColor].CGColor];
        [btn.layer setShadowOpacity:0.8];
        [btn.layer setShadowRadius:1.0];
        [btn.layer setShadowOffset:CGSizeMake(1.0, 2.0)];
        
        [view_tags addSubview:btn];
                
        int checkposition = 0;
        int xposition = size.width + 10;
        
        if ([arrTags count]-1 == ik)
        {
            
        }
        else
        {
            NSString *valueEmoj = [arrTags objectAtIndex:ik+1];
            
            CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(WIDTH - 40, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
            
            CGSize size1 = textRect.size;
            
            checkposition = x_tags + xposition+size1.width;
        }
        if ((WIDTH - 40) <= checkposition)
        {
            x_tags = 0;
            y_tags += 30;
        }
        else
        {
            x_tags+=size.width + 20;
        }
        
    }
    
    //scrl.contentSize = CGSizeMake(WIDTH , Heightview);
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

- (IBAction)userTapped:(id)sender
{
    ProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    move.strUserName = @"Emma Watson";
    move.getUserDict = getDict;
    APP_DELEGATE.isloginuser = NO;
    [self.navigationController pushViewController:move animated:YES];
}

- (IBAction)Back:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)like:(id)sender
{
    int likecount = [btn_likeCount.titleLabel.text intValue];
    if (btn_like.selected == TRUE)
    {
        likecount = likecount - 1;
        btn_like.selected = FALSE;
    }
    else
    {
        likecount = likecount + 1;
        btn_like.selected = TRUE;
    }
    
    [btn_likeCount setTitle:[NSString stringWithFormat:@" %d",likecount] forState:UIControlStateNormal];
}

- (IBAction)bookmarks:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn.selected == TRUE)
    {
        btn.selected = FALSE;
    }
    else
    {
        btn.selected = TRUE;
    }
}

- (IBAction)FollowUser:(id)sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn.selected == FALSE)
    {
        btn.selected = TRUE;
        
        btn.backgroundColor = kColorLightGreen;
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitle:@"Following" forState:UIControlStateNormal];
    }
    else
    {
        btn.selected = FALSE;
        
        btn.backgroundColor = [UIColor whiteColor];
        [btn setTitleColor:kColorLightGreen forState:UIControlStateNormal];
        [btn setTitle:@"Follow" forState:UIControlStateNormal];
    }

}

- (IBAction)writeResponces:(id)sender
{
    ZSSDemoViewController *move = [[ZSSDemoViewController alloc] init];
    move.isFromResponce = TRUE;
    [self presentViewController:move animated:YES completion:nil];
}

- (IBAction)Edit:(id)sender
{
    ZSSDemoViewController *move = [[ZSSDemoViewController alloc] init];
    move.isFromResponce = FALSE;
    [self presentViewController:move animated:YES completion:nil];
}

#pragma mark - scrollview Delegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (((scrollView.contentOffset.y + scrollView.frame.size.height) - _subview_bottomTag.frame.size.height) > _subview_bottomTag.frame.origin.y)
    {
        _subview_bottom.hidden = TRUE;
    }
    else
    {
        _subview_bottom.hidden = FALSE;
    }
}

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 70;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 40)] ;
    //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
    headerVw.backgroundColor = self.view.backgroundColor;
    
    UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, WIDTH, 30)];
    lblusername.textColor = [UIColor darkGrayColor];
    lblusername.font = [UIFont boldSystemFontOfSize:12];
    lblusername.text = @"More stories written by Benjamin P. Hardy";
    lblusername.textAlignment = NSTextAlignmentCenter;
    [headerVw addSubview:lblusername];
    return headerVw;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self profileCell:tableView indexPath:indexPath Message:nil];
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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
    move.isfromResponces = FALSE;
    move.getDict = getDict;
    [self.navigationController pushViewController:move animated:YES];
}

@end
