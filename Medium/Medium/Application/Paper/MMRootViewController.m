//
//  MMRootViewController.m
//  MMPaper
//
//  Created by mukesh mandora on 04/03/15.
//  Copyright (c) 2015 com.muku. All rights reserved.
//

#import "MMRootViewController.h"
#import "MMBaseCollection.h"
#import "MMSmallLayout.h"
#import "MMLargeLayout.h"
#import "PaperBuble.h"
#import "MMCollectionViewCell.h"

@interface MMRootViewController ()<UIGestureRecognizerDelegate,UITableViewDataSource,UITableViewDelegate>
{
    BOOL toogle;
    PaperBuble *bubble;
    UIImageView *addfrd,*noti,*msg;
    
    UIPageControl *pageControl;
    MMLargeLayout *LargeLayout;
    
    UICollectionView *collectionView;
}


@property (weak, nonatomic) IBOutlet UIView *view_navigation;
@property (nonatomic) MMBaseCollection *baseController;
@property (nonatomic, assign) NSInteger slide;
@property (nonatomic, strong) UIView *mainView;
@property (nonatomic, strong) UIImageView *topImage;
@property (nonatomic, strong) UIImageView *reflected;
@property (nonatomic, strong) NSArray *galleryImages;


@end

@implementation MMRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    toogle = YES;
    
    // Do any additional setup after loading the view.
    MMSmallLayout *smallLayout = [[MMSmallLayout alloc] init];
    self.baseController=[[MMBaseCollection alloc] initWithCollectionViewLayout:smallLayout];
    
    //self.baseController.collectionView.userInteractionEnabled = FALSE;
    
    /*
     MMLargeLayout *smallLayout = [[MMLargeLayout alloc] init];
     self.baseController=[[MMBaseCollection alloc] initWithCollectionViewLayout:smallLayout];
     self.baseController.collectionView.pagingEnabled = TRUE;
     */
    
    self.baseController.collectionView.frame = CGRectMake(0, 60 ,self.baseController.collectionView.frame.size.width, self.baseController.collectionView.frame.size.height);
    [self.view addSubview:self.baseController.collectionView];
    //self.baseController.collectionView.userInteractionEnabled = FALSE;
    
    LargeLayout = [[MMLargeLayout alloc] init];
    
    _galleryImages = @[@"one.jpg", @"two.jpg", @"three.png", @"five.jpg", @"one.jpg"];
    _slide = 0;
    self.recipes=@[@""];
    
    // Init mainView
    //_mainView = [[UIView alloc] initWithFrame:self.view.bounds];
    _mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-240)];
    _mainView.clipsToBounds = YES;
    _mainView.layer.cornerRadius = 4;
    
    collectionView=[[UICollectionView alloc] initWithFrame:CGRectMake(0, 65, WIDTH, 440) collectionViewLayout:LargeLayout];
    [collectionView registerClass:[MMCollectionViewCell class] forCellWithReuseIdentifier:@"CELL_ID"];
    
    [collectionView setDataSource:self];
    [collectionView setDelegate:self];
    collectionView.pagingEnabled = TRUE;
    [_mainView addSubview:collectionView];
    
    // self.baseController.collectionView.delegate = self;
    [self.view insertSubview:_mainView belowSubview:self.baseController.collectionView];
    
    
    // ImageView on top
    _topImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, [[UIScreen mainScreen] bounds].size.height-256)];
    _reflected = [[UIImageView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(_topImage.bounds), self.view.frame.size.width, self.view.frame.size.height/2)];
    
    // [_mainView addSubview:_topImage];
    
    [_mainView addSubview:_reflected];
    
    _topImage.contentMode=UIViewContentModeScaleAspectFill;
    //_reflected.contentMode=UIViewContentModeScaleAspectFill;
    
    
    // Reflect imageView
    _reflected.transform = CGAffineTransformMakeScale(1.0, -1.0);
    
    
    // Gradient to top image
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = _topImage.bounds;
    gradient.colors = @[(id)[[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4] CGColor],
                        (id)[[UIColor colorWithWhite:0 alpha:0] CGColor]];
    [_topImage.layer insertSublayer:gradient atIndex:0];
    
    
    // Gradient to reflected image
    CAGradientLayer *gradientReflected = [CAGradientLayer layer];
    gradientReflected.frame = _reflected.bounds;
    gradientReflected.colors = @[(id)[[UIColor colorWithRed:0 green:0 blue:0 alpha:1] CGColor],
                                 (id)[[UIColor colorWithWhite:0 alpha:0] CGColor]];
    [_reflected.layer insertSublayer:gradientReflected atIndex:0];
    
    
    // Content perfect pixel
    UIView *perfectPixelContent = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(_topImage.bounds), 1)];
    perfectPixelContent.backgroundColor = [UIColor colorWithWhite:1 alpha:0.2];
    [_topImage addSubview:perfectPixelContent];
    
    
    // First Load
    [self changeSlide];
    
    

    
    pageControl = [[UIPageControl alloc] init];
    pageControl.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - 255  , [[UIScreen mainScreen] bounds].size.width, 20);
    pageControl.numberOfPages = 20;
    pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    pageControl.currentPageIndicatorTintColor = [UIColor darkGrayColor];
    pageControl.currentPage = 0;
    [_mainView addSubview:pageControl];
    [_mainView bringSubviewToFront:pageControl];
    
    
    //pageControl.hidden = TRUE;
    
    [self.view bringSubviewToFront:_mainView];
    [self.view bringSubviewToFront:_view_navigation];
}

- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(collectiontype:) name:@"setCollectionTypeNotify" object:nil];

    [super viewWillAppear:animated];
}

-(void)tapBubble:(UIGestureRecognizer *)sender
{
    NSInteger tag=sender.view.tag;
    
    //pageControl.currentPage = tag;
    
    if(tag==1)
    {
        [self toogleHelpAction:self];
    }
    else if (tag==2)
    {
        [self actionBut2:self];
    }
    else{
        [self actionbut3:self];
    }
    
}


-(void)collectiontype:(NSNotification *)notify
{
    NSLog(@"Notify%@",notify.userInfo);
    
    [self setCollectionType:[[notify.userInfo objectForKey:@"isExpandable"] boolValue]];
}

-(void)setCollectionType:(BOOL)isLarge
{
    NSLog(@"isLarge%d",isLarge);
    //    [self.view bringSubviewToFront:_mainView];
    
    if (isLarge)
    {
        [self.view bringSubviewToFront:_mainView];
        self.baseController.collectionView.pagingEnabled = FALSE;
    }
    else
    {
        [self.view sendSubviewToBack:_mainView];
        self.baseController.collectionView.pagingEnabled = TRUE;
    }
}
-(void)aMethod:(id)sender
{
    NSLog(@"Hello");
}
#pragma mark - UICollectionView Delegate

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MMCollectionViewCell *cell = (MMCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"CELL_ID" forIndexPath:indexPath];
    //    cell.backgroundColor = [UIColor whiteColor];
    //    cell.layer.cornerRadius = 4;
    //    cell.clipsToBounds = YES;
    //
    //    UIImageView *backgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2"]];
    //    cell.backgroundView = backgroundView;
    [cell setIndex:indexPath.row withSize:LargeLayout.itemSize];
    
    
    return cell;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}
- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout  *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(WIDTH, 440); // as per your cell size
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

/*
 - (void)collectionView:(UICollectionView *)colleview willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath
 {
 
 NSLog(@"%li",(long)indexPath.row);
 
 if(colleview == collectionView)
 {
 
 if(fmod(indexPath.row, 3) == 1 && indexPath.row != 1){
 
 if (scrollDirection == ScrollDirectionLeft)
 {
 [self.collectionView2 setContentOffset:CGPointMake(currScrollXPos+300, 0) animated:YES];
 currScrollXPos = currScrollXPos+300;
 }
 
 if (scrollDirection == ScrollDirectionRight)
 {
 [self.collectionView2 setContentOffset:CGPointMake(currScrollXPos-300, 0) animated:YES];
 currScrollXPos = currScrollXPos-300;
 }
 }
 }
 
 }
 */
- (void)collectionView:(UICollectionView *)collection willDisplayCell:(UICollectionViewCell *)cell forItemAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%li",(long)indexPath.row);
    
    if(collection == collectionView)
    {
        
        if(fmod(indexPath.row, 3) == 1 && indexPath.row != 1)
        {
            /*
             if (scrollDirection == ScrollDirectionLeft) {
             [self.collectionView2 setContentOffset:CGPointMake(currScrollXPos+300, 0) animated:YES];
             currScrollXPos = currScrollXPos+300;
             }
             if (scrollDirection == ScrollDirectionRight) {
             [self.collectionView2 setContentOffset:CGPointMake(currScrollXPos-300, 0) animated:YES];
             currScrollXPos = currScrollXPos-300;
             }
             */
        }
        
    }
}
- (UICollectionViewTransitionLayout *)collectionView:(UICollectionView *)collectionView
                        transitionLayoutForOldLayout:(UICollectionViewLayout *)fromLayout newLayout:(UICollectionViewLayout *)toLayout
{
    //NSLog(@"%@",fromLayout);
    //NSLog(@"%@",toLayout);
    
    return nil;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    HomeDetailsViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeDetailsViewController"];
    move.isfromResponces = FALSE;
    move.getDict = [APP_DELEGATE.arrUserlist objectAtIndex:0];
    [self.navigationController pushViewController:move animated:YES];
}
#pragma mark - UIScrollVewDelegate for UIPageControl

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGFloat pageWidth = collectionView.frame.size.width;
    float currentPage = collectionView.contentOffset.x / pageWidth;
    
    if (0.0f != fmodf(currentPage, 1.0f))
    {
        pageControl.currentPage = currentPage + 1;
    }
    else
    {
        pageControl.currentPage = currentPage;
    }
    
    NSIndexPath *nextItem = [NSIndexPath indexPathForItem:pageControl.currentPage inSection:0];
    
    [collectionView scrollToItemAtIndexPath:nextItem atScrollPosition:UICollectionViewScrollPositionNone animated:YES];
    
    NSLog(@"finishPage: %ld", (long)pageControl.currentPage);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden
{
    return YES;
}
#pragma mark - Change slider
- (void)changeSlide
{
    //    if (_fullscreen == NO && _transitioning == NO) {
    if(_slide > _galleryImages.count-1) _slide = 0;
    
    UIImage *toImage = [UIImage imageNamed:_galleryImages[_slide]];
    [UIView transitionWithView:_mainView
                      duration:0.6f
                       options:UIViewAnimationOptionTransitionCrossDissolve | UIViewAnimationCurveEaseInOut
                    animations:^{
                        _topImage.image = toImage;
                        _reflected.image = toImage;
                    } completion:nil];
    _slide++;
    //    }
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


#pragma mark Bubble Action
- (IBAction)toogleHelpAction:(id)sender {
    if(bubble==nil && toogle==YES){
        toogle=NO;
        bubble=[[PaperBuble alloc] initWithFrame:CGRectMake(8, noti.center.y+20, self.view.frame.size.width-16, self.view.frame.size.height) withAttachedView:noti];
        bubble.button1=noti;
        bubble.tableView.delegate=self;
        bubble.tableView.dataSource=self;
        [self.view addSubview:bubble];
        //        [bubble setAlpha:0.0];
        [bubble popBubble];
        
    }
    else{
        
        
        if(bubble.button1==noti){
            toogle=YES;
            [bubble pushBubble];
            bubble=nil;
        }
        else{
            bubble.button1=noti;
            [bubble updateArrow];
            [bubble.shapeLayer removeFromSuperlayer];
            
        }
        
        
        
        
    }
    
    [bubble.tableView reloadData];
}


- (IBAction)actionBut2:(id)sender {
    
    if(bubble==nil && toogle==YES){
        toogle=NO;
        bubble=[[PaperBuble alloc] initWithFrame:CGRectMake(8, addfrd.center.y+20, self.view.frame.size.width-16, self.view.frame.size.height) withAttachedView:addfrd];
        bubble.button1=addfrd;
        bubble.tableView.delegate=self;
        bubble.tableView.dataSource=self;
        
        [self.view addSubview:bubble];
        [bubble popBubble];
        
    }
    else{
        
        
        if(bubble.button1==addfrd){
            toogle=YES;
            [bubble pushBubble];
            bubble=nil;
        }
        else{
            bubble.button1=addfrd;
            [bubble updateArrow];
            
        }
        
        
        
        
    }
    [bubble.tableView reloadData];
}

- (IBAction)actionbut3:(id)sender {
    if(bubble==nil && toogle==YES){
        toogle=NO;
        bubble=[[PaperBuble alloc] initWithFrame:CGRectMake(8, msg.center.y+20, self.view.frame.size.width-16, self.view.frame.size.height) withAttachedView:msg];
        bubble.button1=msg;
        bubble.tableView.delegate=self;
        bubble.tableView.dataSource=self;
        
        [self.view addSubview:bubble];
        [bubble popBubble];
        
    }
    else{
        
        
        if(bubble.button1==msg){
            toogle=YES;
            [bubble pushBubble];
            bubble=nil;
        }
        else{
            bubble.button1=msg;
            [bubble updateArrow];
            [bubble.shapeLayer removeFromSuperlayer];
        }
        
        
        
        
    }
    
    [bubble.tableView reloadData];
    
}

#pragma tableview
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30.0;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    UIView *view = [[UIView alloc] init];
    [view setFrame:CGRectMake(0, 10, tableView.frame.size.width, 30)];
    [view setBackgroundColor:[UIColor whiteColor]];
    /* Create custom view to display section header... */
    
    unsigned colorInt = 0;
    [[NSScanner scannerWithString:@"0xe94c5e"] scanHexInt:&colorInt];
    
    UILabel *label = [[UILabel alloc] init];
    [label setTextAlignment:NSTextAlignmentLeft];
    [label setFrame:CGRectMake(18, 10, 300, 20)];
    label.textColor=[UIColor whiteColor];
    label.font=[UIFont fontWithName:@"HelveticaNeue" size:20];
    
    if(bubble.button1==noti){
        label.text=@"Notification";
    }
    else if (bubble.button1==addfrd){
        label.text=@"Friend Request";
    }
    else{
        label.text=@"Chats";
    }
    
    label.textColor=[UIColor lightGrayColor];
    [view addSubview:label];
    
    [view setBackgroundColor:[UIColor whiteColor]]; //your background color...
    view.layer.cornerRadius = 5.0f;
    view.clipsToBounds = NO;
    view.layer.masksToBounds = NO;
    
    return view;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.recipes.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.backgroundColor=[UIColor clearColor];
    
    //    cell.textLabel.text = [_recipes objectAtIndex:indexPath.row];
    //    cell.textLabel.textColor=[UIColor blackColor];
    //    cell.backgroundColor=[UIColor blueColor];
    return cell;
    
}

@end
