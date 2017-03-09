//
//  ProfileViewController.m
//  LinkedinClone
//
//  Created by macmini on 27/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
@synthesize strUserName,getUserDict;

- (void)viewDidLoad
{
    [self setInitParam];
    
    NSLog(@"%@",APP_DELEGATE.arrUserlist);
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setInitParam
{
    lbl_navigationTitle.hidden = TRUE;
    if (APP_DELEGATE.isloginuser)
    {
        lbl_navigationTitle.text = @"Bhavesh Nayi";
    }
    else
    {
        lbl_navigationTitle.text = [NSString stringWithFormat:@"%@ %@",[getUserDict objectForKey:@"FirstName"],[getUserDict objectForKey:@"LastName"]];;
    }
    
    searchbar.text = lbl_navigationTitle.text;
    
    if (APP_DELEGATE.isloginuser)
    {
        btn_back.hidden = TRUE;
        for (UIView *view in view_tableHeader.subviews)
        {
            if (view.tag == 10)
            {
                // border radius
                [view.layer setCornerRadius:view.frame.size.height/2];
                // border
                [view.layer setBorderColor:[UIColor whiteColor].CGColor];
                [view.layer setBorderWidth:5.0];
                // drop shadow
                [view.layer setShadowColor:[UIColor grayColor].CGColor];
                [view.layer setShadowOpacity:0.8];
                [view.layer setShadowRadius:0.8];
                [view.layer setShadowOffset:CGSizeMake(1.0,1.0)];
                
                //[APP_DELEGATE setBorderToView:view withBorderWidth:5 radious:view.frame.size.height/2 color:[UIColor whiteColor]];
            }
            else
            {
                // border radius
                [view.layer setCornerRadius:5.0f];
                // border
                [view.layer setBorderColor:[UIColor lightGrayColor].CGColor];
                [view.layer setBorderWidth:0.0f];
                // drop shadow
                [view.layer setShadowColor:[UIColor grayColor].CGColor];
                [view.layer setShadowOpacity:0.8];
                [view.layer setShadowRadius:0.5];
                [view.layer setShadowOffset:CGSizeMake(0.5, 0.5)];
                
                
                if (view.tag == 70)
                {
                    for (UIView *view1 in view.subviews)
                    {
                        [APP_DELEGATE setBorderToView:view1 withBorderWidth:0 radious:15 color:[UIColor clearColor]];
                    }
                }
            }
        }
        
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.frame = lbl_grediantBG.bounds;
        gradientLayer.colors = [NSArray arrayWithObjects:(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[self.view.backgroundColor CGColor], (id)[self.view.backgroundColor CGColor], nil];
        [lbl_grediantBG.layer insertSublayer:gradientLayer atIndex:0];
        
        
        view_tableHeader.backgroundColor = [UIColor clearColor];
        
        DTParallaxHeaderView *headerView = [[DTParallaxHeaderView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 200) withImage:[UIImage imageNamed:@"46955447-background-image.png"] withTabBar:nil];
        
        //    DTHeaderView *headerView = [[DTHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 200) withImageUrl:@"http://s3.favim.com/orig/47/colorful-fun-girl-night-ocean-Favim.com-437603.jpg" withTabBar:tabbar];
        
        [_tbl setDTHeaderView:headerView];
        _tbl.showShadow = NO;
        
        [_tbl reloadData];
    }
    else
    {
        searchbar.text = [NSString stringWithFormat:@"%@ %@",[getUserDict objectForKey:@"FirstName"],[getUserDict objectForKey:@"LastName"]];

        btn_back.hidden = FALSE;

        
        img_oppUserProfile.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[getUserDict objectForKey:@"FirstName"]]];
        
        lbl_oppuserName.text = [NSString stringWithFormat:@"%@ %@ • 1'st",[getUserDict objectForKey:@"FirstName"],[getUserDict objectForKey:@"LastName"]];
        
        lbl_oppUserDetails.text = [NSString stringWithFormat:@"%@,%@ at %@ ",[getUserDict objectForKey:@"UserRoll"],[getUserDict objectForKey:@"BussinessUnit"],[getUserDict objectForKey:@"Department"]];

        lbl_oPpUserLocation.text = [NSString stringWithFormat:@"%@",[getUserDict objectForKey:@"email"]];
        
        for (UIView *view in view_OtherUserHeader.subviews)
        {
            if (view.tag == 10)
            {
                // border radius
                [view.layer setCornerRadius:view.frame.size.height/2];
                // border
                [view.layer setBorderColor:[UIColor whiteColor].CGColor];
                [view.layer setBorderWidth:5.0];
                // drop shadow
                [view.layer setShadowColor:[UIColor grayColor].CGColor];
                [view.layer setShadowOpacity:0.8];
                [view.layer setShadowRadius:0.8];
                [view.layer setShadowOffset:CGSizeMake(1.0,1.0)];
            }
            else
            {
                // border radius
                [view.layer setCornerRadius:5.0f];
                // border
                [view.layer setBorderColor:[UIColor lightGrayColor].CGColor];
                [view.layer setBorderWidth:0.0f];
                // drop shadow
                [view.layer setShadowColor:[UIColor grayColor].CGColor];
                [view.layer setShadowOpacity:0.8];
                [view.layer setShadowRadius:0.5];
                [view.layer setShadowOffset:CGSizeMake(0.5, 0.5)];
                
                
                if (view.tag == 70)
                {
                    for (UIView *view1 in view.subviews)
                    {
                        [APP_DELEGATE setBorderToView:view1 withBorderWidth:0 radious:15 color:[UIColor clearColor]];
                    }
                }
            }
        }
        
        CAGradientLayer *gradientLayer = [CAGradientLayer layer];
        gradientLayer.frame = lbl_OtheUserGradiantBG.bounds;
        gradientLayer.colors = [NSArray arrayWithObjects:(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[view_tableHeader.backgroundColor CGColor],(id)[self.view.backgroundColor CGColor], (id)[self.view.backgroundColor CGColor], nil];
        [lbl_OtheUserGradiantBG.layer insertSublayer:gradientLayer atIndex:0];
        
        
        view_OtherUserHeader.backgroundColor = [UIColor clearColor];
        
        DTParallaxHeaderView *headerView = [[DTParallaxHeaderView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, 200) withImage:[UIImage imageNamed:@"46955447-background-image.png"] withTabBar:nil];
        
        [_tbl setDTHeaderView:headerView];
        _tbl.showShadow = NO;
        
        [_tbl reloadData];
    }
    
    [self.view bringSubviewToFront:view_navigation];
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

#pragma mark - scrollView Delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGRect frame = view_navigation.frame;
    CGFloat size = frame.size.height - 21;
    CGFloat framePercentageHidden = ((20 - frame.origin.y) / (frame.size.height - 1));
    CGFloat scrollOffset = scrollView.contentOffset.y;
    CGFloat scrollDiff = scrollOffset - self.previousScrollViewYOffset;
    CGFloat scrollHeight = scrollView.frame.size.height;
    CGFloat scrollContentSizeHeight = scrollView.contentSize.height + scrollView.contentInset.bottom;
    
    if (scrollOffset <= -scrollView.contentInset.top) {
        frame.origin.y = 00;
    } else if ((scrollOffset + scrollHeight) >= scrollContentSizeHeight) {
        frame.origin.y = -size;
    } else {
        frame.origin.y = MIN(00, MAX(-size, frame.origin.y - scrollDiff));
    }
    
    NSLog(@"%f",frame.origin.y);
    
    [view_navigation setFrame:frame];
    [self updateBarButtonItems:(1 - framePercentageHidden)];
    self.previousScrollViewYOffset = scrollOffset;
    
    /*
    if (scrollView.contentOffset.y > 140)
    {
        if (!isshow)
        {
            isshow = TRUE;
            [APP_DELEGATE animateWithShow:YES withView:lbl_navigationTitle];
        }
    }
    else
    {
        isshow = FALSE;
        [APP_DELEGATE animateWithShow:NO withView:lbl_navigationTitle];
    }
     */
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self stoppedScrolling];
}
- (void)stoppedScrolling
{
    CGRect frame = view_navigation.frame;
    if (frame.origin.y < 00) {
        [self animateNavBarTo:-(frame.size.height - 00)];
    }

    
    view_navigation.alpha = 1;
}

- (void)updateBarButtonItems:(CGFloat)alpha
{
    [self.navigationItem.leftBarButtonItems enumerateObjectsUsingBlock:^(UIBarButtonItem* item, NSUInteger i, BOOL *stop) {
        item.customView.alpha = alpha;
    }];
    [self.navigationItem.rightBarButtonItems enumerateObjectsUsingBlock:^(UIBarButtonItem* item, NSUInteger i, BOOL *stop) {
        item.customView.alpha = alpha;
    }];
    
    //NSLog(@"%f",alpha);
    view_navigation.alpha = alpha;
    
    //view_navigation.backgroundColor = [view_navigation.backgroundColor colorWithAlphaComponent:alpha];
    //self.navigationController.navigationBar.tintColor = [self.navigationController.navigationBar.tintColor colorWithAlphaComponent:alpha];
}

- (void)animateNavBarTo:(CGFloat)y
{
    NSLog(@"Stopped:%f",y);
    y=0;
    [UIView animateWithDuration:0.1 animations:^{
        CGRect frame = view_navigation.frame;
        CGFloat alpha = (frame.origin.y >= y ? 0 : 1);
        frame.origin.y = y;
        [view_navigation setFrame:frame];
        [self updateBarButtonItems:alpha];
    }];
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView
                  willDecelerate:(BOOL)decelerate
{
    if (!decelerate) {
        [self stoppedScrolling];
    }
}


- (IBAction)search:(id)sender {
}
#pragma mark - Change Photo

- (IBAction)userImageTapped:(id)sender
{
    changeImage = ChangeUserPicture;
    [self OpenActionsheet:@"Change profile photo"];
}

- (IBAction)OppUserImageTapped:(id)sender
{
    changeImage = ChangeOppUserPicture;
    [self OpenActionsheet:@"Change profile photo"];
}

- (IBAction)userEditTapped:(id)sender
{
    //changeImage = ChangeUserCoverPicture;
    //[self OpenActionsheet];
}

- (IBAction)oppUserEditTapped:(id)sender
{
    //changeImage = ChangeOppUserCoverPicture;
    //[self OpenActionsheet];
}

- (IBAction)EditCoverImage:(id)sender
{
    changeImage = ChangeCoverPicture;
    [self OpenActionsheet:@"Change cover image"];

}
-(void)OpenActionsheet:(NSString *)strTitle
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:strTitle
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"Take photo", @"Choose Existing", nil];
    [actionSheet showInView:self.view];
    
}
- (void)willPresentActionSheet:(UIActionSheet *)actionSheet
{
    SEL selector = NSSelectorFromString(@"_alertController");
    if ([actionSheet respondsToSelector:selector])
    {
        UIAlertController *alertController = [actionSheet valueForKey:@"_alertController"];
        if ([alertController isKindOfClass:[UIAlertController class]])
        {
            //alertController.view.tintColor = [UIColor whiteColor];
        }
    }
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
        {
            UIImagePickerController *picker = [[UIImagePickerController alloc] init];
            picker.allowsEditing = NO;
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
            picker.delegate = self;
            picker.navigationBar.tintColor = [UIColor redColor];
            [self presentViewController:picker animated:YES completion:nil];
        }
            break;
        case 1:
        {
            UIImagePickerController *picker = [[UIImagePickerController alloc] init];
            picker.allowsEditing = NO;
            picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            picker.delegate = self;
            picker.navigationBar.tintColor = [UIColor redColor];
            [self presentViewController:picker animated:YES completion:nil];
            
        }
            break;
        default:
            break;
    }
    
}

-(UIImage *)normalizedImage:(UIImage *) thisImage
{
    if (thisImage.imageOrientation == UIImageOrientationUp) return thisImage;
    
    UIGraphicsBeginImageContextWithOptions(thisImage.size, NO, thisImage.scale);
    [thisImage drawInRect:(CGRect){0, 0, thisImage.size}];
    UIImage *normalizedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return normalizedImage;
}

# pragma mark UIImagePickerDelegate Methods
-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
    UIImage *chosenImage = info[UIImagePickerControllerOriginalImage];
    
    UIImage *scaledImage;
    if (chosenImage.size.width > (WIDTH * 2))
    {
        scaledImage = [self resizeImage:chosenImage];
    }
    else
    {
        scaledImage = chosenImage;
    }
    
    if (changeImage == ChangeUserPicture)
    {
        img_user.image = scaledImage;
    }
    else if (changeImage == ChangeCoverPicture)
    {
        
    }
    else if (changeImage == ChangeOppUserPicture)
    {
        img_oppUserProfile.image = scaledImage;
    }


}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (UIImage *)resizeImage:(UIImage *)foregroundimage
{
    UIImage *image = foregroundimage; // SomeImage-900x675.png
    CGFloat targetWidth = WIDTH*2;
    
    CGFloat scaleFactor = targetWidth / image.size.width;
    CGFloat targetHeight = image.size.height * scaleFactor;
    CGSize targetSize = CGSizeMake(targetWidth, targetHeight);
    
    return [image resizedImage:targetSize interpolationQuality:kCGInterpolationHigh];
}

- (NSString *)getOrdinalStringFromInteger:(NSInteger)integer
{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setLocale:[NSLocale currentLocale]];
    [formatter setNumberStyle:NSNumberFormatterOrdinalStyle];
    return [formatter stringFromNumber:[NSNumber numberWithInteger:integer]];
}
#pragma mark - Tableview Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (APP_DELEGATE.isloginuser)
    {
        return view_tableHeader;
    }
    else
    {
        return view_OtherUserHeader;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (APP_DELEGATE.isloginuser)
    {
        return view_tableHeader.frame.size.height;
    }
    else
    {
        return view_OtherUserHeader.frame.size.height;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    return 85;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [APP_DELEGATE.arrUserlist count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *CellIdentifier = [NSString stringWithFormat:@"cell %ld",(long)indexPath.row];
    
    Cell_user *cell = (Cell_user *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    cell = nil;
    if (cell == nil)
    {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"Cell_user" owner:nil options:nil];
        cell = [topLevelObjects objectAtIndex:0];
        cell.backgroundColor = [UIColor clearColor];
        
        
        cell.img_user.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.jpg",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"]]];
        
        cell.lbl_username.text = [NSString stringWithFormat:@"%@ %@ • %@",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"FirstName"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"LastName"],[self getOrdinalStringFromInteger:indexPath.row+1]];
        
        cell.lbl_Desc.text = [NSString stringWithFormat:@"%@,%@ at %@ ",[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"UserRoll"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"BussinessUnit"],[[APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row] objectForKey:@"Department"]];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    ProfileViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"ProfileViewController"];
    move.strUserName = @"Emma Watson";
    move.getUserDict = [APP_DELEGATE.arrUserlist objectAtIndex:indexPath.row];
    APP_DELEGATE.isloginuser = NO;
    [self.navigationController pushViewController:move animated:YES];
}

@end
