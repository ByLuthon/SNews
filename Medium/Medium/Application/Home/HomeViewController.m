//
//  HomeViewController.m
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad
{
    
    {
        arrTrending = [[NSMutableArray alloc] init];
        
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"TopStory.jpg" forKey:@"image"];
            [dic1 setObject:@"Top Stories" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"EditorsPic.jpeg" forKey:@"image"];
            [dic1 setObject:@"Editor's Pics" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"Politics.jpeg" forKey:@"image"];
            [dic1 setObject:@"Politics" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"Technology.jpeg" forKey:@"image"];
            [dic1 setObject:@"Technology" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"Humans.jpeg" forKey:@"image"];
            [dic1 setObject:@"Humans" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"culure.jpeg" forKey:@"image"];
            [dic1 setObject:@"Cultures" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"business.jpg" forKey:@"image"];
            [dic1 setObject:@"Business" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"entertainment.jpeg" forKey:@"image"];
            [dic1 setObject:@"Entertainment" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"TopStory.jpg" forKey:@"image"];
            [dic1 setObject:@"Top Stories" forKey:@"title"];
            [arrTrending addObject:dic1];
        }
        
        
        //Tranding
        [collection_tranding registerClass:[CollectionCell_Trending class] forCellWithReuseIdentifier:@"CollectionCell_Trending"];
    }
    
    
    
    {
        arrPublication = [[NSMutableArray alloc] init];
        
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"ios_comunication.jpg" forKey:@"image"];
            [dic1 setObject:@"iOS Communication" forKey:@"title"];
            [arrPublication addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"rockN.jpeg" forKey:@"image"];
            [dic1 setObject:@"Rock" forKey:@"title"];
            [arrPublication addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"app-development-lifecycle.jpg" forKey:@"image"];
            [dic1 setObject:@"App Development" forKey:@"title"];
            [arrPublication addObject:dic1];
        }
        {
            NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
            [dic1 setObject:@"stackoverflow.png" forKey:@"image"];
            [dic1 setObject:@"Stackoverflow" forKey:@"title"];
            [arrPublication addObject:dic1];
        }
        //Publication
        [collection_publication registerClass:[CollectionCell_Publications class] forCellWithReuseIdentifier:@"CollectionCell_Publications"];

    }

    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


-(void)setInitParam
{
    [collection_tranding reloadData];
    [collection_publication reloadData];
    
    tbl.tableHeaderView = view_header;
    tbl.tableHeaderView.backgroundColor = [UIColor clearColor];
    
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

- (IBAction)search:(id)sender
{
    SearchViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

- (IBAction)Publications:(id)sender
{
    PublicationsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationsViewController"];
    move.isPublicationList = FALSE;
    [self.navigationController pushViewController:move animated:YES];
}

- (IBAction)Personalize:(id)sender
{
    PersonalizeViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PersonalizeViewController"];
    [self.navigationController pushViewController:move animated:YES];
}

#pragma mark - collectionview delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (collectionView == collection_tranding)
    {
        return [arrTrending count];
    }
    else
    {
        return [arrPublication count] + 1;
    }
}


- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout  *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == collection_tranding)
    {
        return CGSizeMake(104, 90); // as per your cell size
    }
    else
    {
        return CGSizeMake(160, 140); // as per your cell size
    }
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == collection_tranding)
    {
        static NSString *cellIdentifier = @"CollectionCell_Trending";
        CollectionCell_Trending *cell = (CollectionCell_Trending *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        // Return the cell
        
        cell.contentView.layer.cornerRadius = 4.0f;
        cell.contentView.layer.borderWidth = 1.0f;
        cell.contentView.layer.borderColor = [UIColor clearColor].CGColor;
        cell.contentView.layer.masksToBounds = YES;
        
        cell.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.layer.shadowOffset = CGSizeMake(1.0, 2.0f);
        cell.layer.shadowRadius = 2.0f;
        cell.layer.shadowOpacity = 1.0f;
        cell.layer.masksToBounds = NO;
        cell.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:cell.bounds cornerRadius:cell.contentView.layer.cornerRadius].CGPath;

        
        
        cell.img_list.image = [UIImage imageNamed:[[arrTrending objectAtIndex:indexPath.row] objectForKey:@"image"]];
        cell.lbl_title.text = [[arrTrending objectAtIndex:indexPath.row] objectForKey:@"title"];
        
        return cell;
    }
    else
    {
        static NSString *cellIdentifier = @"CollectionCell_Publications";
        CollectionCell_Publications *cell = (CollectionCell_Publications *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
        
        cell.contentView.layer.cornerRadius = 4.0f;
        cell.contentView.layer.borderWidth = 1.0f;
        cell.contentView.layer.borderColor = [UIColor clearColor].CGColor;
        cell.contentView.layer.masksToBounds = YES;
        
        cell.layer.shadowColor = [UIColor lightGrayColor].CGColor;
        cell.layer.shadowOffset = CGSizeMake(1.0, 2.0f);
        cell.layer.shadowRadius = 2.0f;
        cell.layer.shadowOpacity = 1.0f;
        cell.layer.masksToBounds = NO;
        cell.layer.shadowPath = [UIBezierPath bezierPathWithRoundedRect:cell.bounds cornerRadius:cell.contentView.layer.cornerRadius].CGPath;

        if (indexPath.row == arrPublication.count)
        {
            cell.subview_find.hidden = FALSE;
        }
        else
        {
            cell.subview_find.hidden = TRUE;

            cell.img_box.image = [UIImage imageNamed:[[arrPublication objectAtIndex:indexPath.row] objectForKey:@"image"]];
            cell.lbl_title.text = [[arrPublication objectAtIndex:indexPath.row] objectForKey:@"title"];
            
            
            [cell.btn_follow setOnTouchUpInside:^(id sender, UIEvent *event)
             {
                 if (cell.btn_follow.selected == FALSE)
                 {
                     cell.btn_follow.selected = TRUE;
                     
                     cell.btn_follow.backgroundColor = [UIColor whiteColor];
                     [cell.btn_follow setTitleColor:kColorLightGreen forState:UIControlStateNormal];
                     [cell.btn_follow setTitle:@"Following" forState:UIControlStateNormal];
                 }
                 else
                 {
                     cell.btn_follow.selected = FALSE;
                     
                     cell.btn_follow.backgroundColor = [UIColor clearColor];
                     [cell.btn_follow setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                     [cell.btn_follow setTitle:@"Follow" forState:UIControlStateNormal];
                 }
             }];
        }
        
        
        
        // Return the cell
        return cell;
    }
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if (collectionView == collection_tranding)
    {
        TrendingViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"TrendingViewController"];
        move.dataDict = [arrTrending objectAtIndex:indexPath.row];
        [self.navigationController pushViewController:move animated:YES];
    }
    else
    {
        if (indexPath.row == arrPublication.count)
        {
            PublicationsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationsViewController"];
            move.isPublicationList = FALSE;
            [self.navigationController pushViewController:move animated:YES];
        }
        else
        {
            PublicationDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"PublicationDetailsViewController"];
            [self.navigationController pushViewController:move animated:YES];
        }
    }
}

#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 480;
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
