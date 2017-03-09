//
//  TagsListViewController.m
//  SNews
//
//  Created by macmini on 10/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "TagsListViewController.h"

@interface TagsListViewController ()

@end

@implementation TagsListViewController

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

    
    [self setNavigationViewFrame:40.0];
    
    self.names = [NSMutableArray array];
    
    self.tokenField.delegate = self;
    self.tokenField.dataSource = self;
    self.tokenField.placeholderText = @"";
    self.tokenField.toLabelText = @"";
    [self.tokenField setColorScheme:[UIColor grayColor]];
    //self.tokenField.delimiters = @[@"  ", @";", @"--"];
    [self.tokenField setNeedsLayout];
    [self.tokenField becomeFirstResponder];
}

- (IBAction)Done:(id)sender
{
    NSMutableDictionary *dicData = [[NSMutableDictionary alloc]init];
    [dicData setValue:_names forKey:@"tagsArr"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"setTagsArr" object:nil userInfo:dicData];
    dicData = nil;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setNavigationViewFrame:(float)customHeight
{
    _view_navigation.frame = CGRectMake(0, 0, WIDTH, customHeight+20);
    
    tbl.frame = CGRectMake(0, _view_navigation.frame.size.height + 2, WIDTH, HEIGHT - _view_navigation.frame.size.height);
}

#pragma mark - VENTokenFieldDelegate

- (void)tokenField:(VENTokenField *)tokenField didEnterText:(NSString *)text
{
    if (_names.count == 5)
    {

    }
    else
    {
        [self.names addObject:[NSString stringWithFormat:@"%@",text]];
        [self.tokenField reloadData];
    }
}

- (void)tokenField:(VENTokenField *)tokenField didDeleteTokenAtIndex:(NSUInteger)index
{
    [self.names removeObjectAtIndex:index];
    [self.tokenField reloadData];
}

- (void)tokenField:(VENTokenField *)tokenField didChangeContentHeight:(CGFloat)height;
{
    NSLog(@"%f",height);
    [self setNavigationViewFrame:height];
}
#pragma mark - VENTokenFieldDataSource

- (NSString *)tokenField:(VENTokenField *)tokenField titleForTokenAtIndex:(NSUInteger)index
{
    return self.names[index];
}

- (NSUInteger)numberOfTokensInTokenField:(VENTokenField *)tokenField
{
    return [self.names count];
}

- (NSString *)tokenFieldCollapsedText:(VENTokenField *)tokenField
{
    return [NSString stringWithFormat:@"%tu people", [self.names count]];
}

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (_names.count == 5)
    {
        UIView *headerVw = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WIDTH, 20)] ;
        //headerVw.backgroundColor=[UIColor colorWithRed:236.0/255.0 green:236.0/255.0 blue:236.0/255.0 alpha:1.0];  // set color of header
        headerVw.backgroundColor = self.view.backgroundColor;;
        
        UILabel *lblusername = [[UILabel alloc]initWithFrame:CGRectMake(8, 0, WIDTH, 20)];
        lblusername.textColor = [UIColor darkGrayColor];
        lblusername.font = [UIFont boldSystemFontOfSize:14];
        lblusername.text = @"You can only add up to five tags";
        [headerVw addSubview:lblusername];
        
        return headerVw;
    }
    else
    {
        return nil;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (_names.count == 5)
    {
        return 20;
    }
    else
    {
        return 0;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 44;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrSuggestedSearch count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld %ld",(long)indexPath.row,(long)indexPath.section];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
        cell.backgroundColor = [UIColor clearColor];
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@",[arrSuggestedSearch objectAtIndex:indexPath.row]];
        cell.textLabel.font = [UIFont boldSystemFontOfSize:16];
        cell.textLabel.textColor = [UIColor grayColor];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    if (_names.count == 5)
    {

    }
    else
    {
        [self.names addObject:[NSString stringWithFormat:@"  %@  ",[arrSuggestedSearch objectAtIndex:indexPath.row]]];
        [self.tokenField reloadData];
        
        [arrSuggestedSearch removeObjectAtIndex:indexPath.row];
        [tbl reloadData];
    }
}



@end
