//
//  FollowTagsViewController.m
//  SNews
//
//  Created by macmini on 21/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "FollowTagsViewController.h"

@interface FollowTagsViewController ()

@end

@implementation FollowTagsViewController

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
        arrTagsList = [[NSMutableArray alloc] init];
        
        arrTagsList = [[NSMutableArray alloc] init];
        [arrTagsList addObject:@"2016 Election"];
        [arrTagsList addObject:@"Authors"];
        [arrTagsList addObject:@"BlackLivesMatter"];
        [arrTagsList addObject:@"Book Review"];
        [arrTagsList addObject:@"Books"];
        [arrTagsList addObject:@"Business"];
        [arrTagsList addObject:@"Career"];
        [arrTagsList addObject:@"Career Advice"];
        [arrTagsList addObject:@"Career Change"];
        [arrTagsList addObject:@"Career Development"];
        [arrTagsList addObject:@"Careers"];
        [arrTagsList addObject:@"Children"];
        [arrTagsList addObject:@"Christianity"];
        [arrTagsList addObject:@"Comedy"];
        [arrTagsList addObject:@"Comics"];
        [arrTagsList addObject:@"Communication"];
        [arrTagsList addObject:@"Cooking"];
        [arrTagsList addObject:@"Dating"];
        [arrTagsList addObject:@"Diversity"];
        [arrTagsList addObject:@"Economics"];
        [arrTagsList addObject:@"Equality"];
        [arrTagsList addObject:@"Family"];
        [arrTagsList addObject:@"Feminism"];
        [arrTagsList addObject:@"Fiction"];
        [arrTagsList addObject:@"Film"];
        [arrTagsList addObject:@"Finance"];
        [arrTagsList addObject:@"Food"];
        [arrTagsList addObject:@"Funny"];
        [arrTagsList addObject:@"Gay"];
        [arrTagsList addObject:@"Gay Merriage"];
        [arrTagsList addObject:@"Gender Equality"];
        [arrTagsList addObject:@"God"];
        [arrTagsList addObject:@"Goverment"];
        [arrTagsList addObject:@"Health"];
        [arrTagsList addObject:@"Healthcare"];
        [arrTagsList addObject:@"Humor"];
        [arrTagsList addObject:@"Humour"];
        [arrTagsList addObject:@"IMHQ"];
        [arrTagsList addObject:@"Innovation"];
        [arrTagsList addObject:@"Inspiration"];
        [arrTagsList addObject:@"Investing"];
        [arrTagsList addObject:@"Jobs"];
        [arrTagsList addObject:@"Leadership"];
        [arrTagsList addObject:@"LGBT"];
        [arrTagsList addObject:@"LGBTQ"];
        [arrTagsList addObject:@"Life Lessons"];
        [arrTagsList addObject:@"Lifestyle"];
        [arrTagsList addObject:@"Love"];
        [arrTagsList addObject:@"Marriage"];
        [arrTagsList addObject:@"Marriage Equality"];
        [arrTagsList addObject:@"Medicine"];
        [arrTagsList addObject:@"Memoirs"];
        [arrTagsList addObject:@"Mental Health"];
        [arrTagsList addObject:@"Money"];
        [arrTagsList addObject:@"Motherhood"];
        [arrTagsList addObject:@"Movies"];
        [arrTagsList addObject:@"Nutrition"];
        [arrTagsList addObject:@"Parenting"];
        [arrTagsList addObject:@"Parents"];
        [arrTagsList addObject:@"Photo Essay"];
        [arrTagsList addObject:@"Photography"];
        [arrTagsList addObject:@"Photojournalism"];
        [arrTagsList addObject:@"Poem"];
        [arrTagsList addObject:@"Poetry"];
        [arrTagsList addObject:@"Politics"];
        [arrTagsList addObject:@"Productivity"];
        [arrTagsList addObject:@"Race"];
        [arrTagsList addObject:@"Racism"];
        [arrTagsList addObject:@"Reading"];
        [arrTagsList addObject:@"Recipe"];
        [arrTagsList addObject:@"Relationship"];
        [arrTagsList addObject:@"Religion"];
        [arrTagsList addObject:@"Restaurants"];
        [arrTagsList addObject:@"Same Sex Marriage"];
        [arrTagsList addObject:@"Satire"];
        [arrTagsList addObject:@"Self Improvement"];
        [arrTagsList addObject:@"Sexism"];
        [arrTagsList addObject:@"Short Fiction"];
        [arrTagsList addObject:@"Short Stories"];
        [arrTagsList addObject:@"Spirituality"];
        [arrTagsList addObject:@"Sports"];
        [arrTagsList addObject:@"Stock Market"];
        [arrTagsList addObject:@"Television"];
        [arrTagsList addObject:@"Transgender"];
        [arrTagsList addObject:@"Women"];
        [arrTagsList addObject:@"Women in Tech"];
        [arrTagsList addObject:@"Womens Health"];
        [arrTagsList addObject:@"Writing"];
        [arrTagsList addObject:@"Writing Prompts"];
        [arrTagsList addObject:@"Writing Tips"];
        
    }
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
    return 80;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrTagsList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
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
            cell.lbl_title.text = [arrTagsList objectAtIndex:indexPath.row];
        }
        
        
        [cell.btn_select setOnTouchUpInside:^(UIEvent *event, id sender)
         {
             if (cell.btn_select.selected == TRUE)
             {
                 cell.btn_select.selected = FALSE;
             }
             else
             {
                 cell.btn_select.selected = TRUE;
             }
         }];
    }
    return cell;
}




- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    TagsDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"TagsDetailsViewController"];
    move.strTitle = [arrTagsList objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:move animated:YES];
}


@end
