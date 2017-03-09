//
//  ViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.navigationController.navigationBarHidden = TRUE;

    scrl.frame = CGRectMake(0, 0, WIDTH, HEIGHT);;
    
    subview_Scrl.frame = CGRectMake(0, 0, WIDTH*3, scrl.frame.size.height);

    CGPoint scrollPoint = CGPointMake(0, -20);
    [scrl setContentOffset:scrollPoint animated:YES];

    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - INIT


-(void)setInitParam
{
    arrSelectedTags = [[NSMutableArray alloc] init];
    
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
    [arrTags addObject:@"Family"];
    [arrTags addObject:@"Humor"];
    [arrTags addObject:@"Sports"];
    [arrTags addObject:@"Religion"];
    [arrTags addObject:@"Woman"];
    [arrTags addObject:@"Relationship"];
    [arrTags addObject:@"LGBTQ"];
    [arrTags addObject:@"Finance"];
    [arrTags addObject:@"Social Justice"];
    [arrTags addObject:@"Career Development"];
    
    
    [self setTags];
    [scrl addSubview:subview_Scrl];
    
    scrl.contentSize = CGSizeMake(WIDTH * 3 , 0);
    scrl.pagingEnabled = TRUE;
    
    CGPoint scrollPoint = CGPointMake(0, 0);
    [scrl setContentOffset:scrollPoint animated:YES];
    [scrl setDelegate:self];//Set delegate
    
    
    [APP_DELEGATE setBorderToView:btn_getStarted withBorderWidth:0.0 radious:4.0 color:[UIColor clearColor]];
    
    [APP_DELEGATE setBorderToView:subview_google withBorderWidth:0.0 radious:2.0 color:[UIColor clearColor]];
    [APP_DELEGATE setBorderToView:subview_twitter withBorderWidth:0.0 radious:2.0 color:[UIColor clearColor]];
    [APP_DELEGATE setBorderToView:subview_facebook withBorderWidth:0.0 radious:2.0 color:[UIColor clearColor]];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -

- (IBAction)GetStarted:(id)sender
{
    isSignup = TRUE;
    [self setTagsScreen];
}

- (IBAction)AlreadyMember_SingIn:(id)sender
{
    isSignup = FALSE;
    [self setTagsScreen];
    
    subview_social.center = self.view.center;
}
#pragma mark - TAGS

-(void)setTags
{
    subview_social.hidden = TRUE;
    
    int x_tags= 20;
    int y_tags = 10;
    int margin = 45;
    
    int Heightview = 0;
    for (int ik=0; ik < [arrTags count]; ik++)
    {
        NSString *valueEmoj = [arrTags objectAtIndex:ik];
        UIFont *font = [UIFont systemFontOfSize:12];
        
        CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(250, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
        CGSize size = textRect.size;
        
        Heightview = y_tags + size.height + 10;
        
        UIButton *btn =  [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(x_tags, y_tags, size.width + 20, size.height + 10)];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [btn setTitle:(valueEmoj ? valueEmoj : @"") forState:UIControlStateNormal];
        btn.titleLabel.font = font;
        btn.tag = ik;
        btn.backgroundColor = [UIColor colorWithRed:129.0/255.0 green:125.0/255.0 blue:155.0/255.0 alpha:1.0];
        [btn addTarget:self action:@selector(ClickTag:) forControlEvents:UIControlEventTouchUpInside];
        [APP_DELEGATE setBorderToView:btn withBorderWidth:0 radious:4.0 color:[UIColor clearColor]];
        [subview_tags addSubview:btn];
        
        
        /*
         UILabel *lbl_tags = [[UILabel alloc] initWithFrame:CGRectMake(x_tags, y_tags, size.width + 20, size.height + 10)];
         lbl_tags.numberOfLines = 0;
         lbl_tags.textColor = [UIColor whiteColor];
         lbl_tags.textAlignment = NSTextAlignmentCenter;
         lbl_tags.text = (valueEmoj ? valueEmoj : @"");
         lbl_tags.font = font;
         lbl_tags.layer.cornerRadius = 4.0;
         lbl_tags.layer.borderWidth = 1;
         lbl_tags.layer.borderColor = [[UIColor clearColor] CGColor];
         lbl_tags.layer.masksToBounds = YES;
         lbl_tags.backgroundColor = [UIColor colorWithRed:129.0/255.0 green:125.0/255.0 blue:155.0/255.0 alpha:1.0];
         [subview_tags addSubview:lbl_tags];
         */
        
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
            x_tags = 20;
            y_tags += 35;
            margin += 45;
        }
        else
        {
            x_tags+=size.width + 30;
        }
        
    }
    
    
    subview_tags.frame = CGRectMake(0, lbl_signin_title.frame.origin.y  + lbl_signin_title.frame.size.height, WIDTH, Heightview);
    
}
-(void)resetAllbutton
{
    for (UIView *view in subview_tags.subviews)
    {
        if([view isKindOfClass:[UIButton class]] )
        {
            UIButton *btn = (UIButton*)view;

            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            btn.backgroundColor = [UIColor colorWithRed:129.0/255.0 green:125.0/255.0 blue:155.0/255.0 alpha:1.0];
        }
        //Similarly you can check and change for UIButton , All UI Elements
    }

}
-(IBAction)ClickTag:(id)sender
{
    [self resetAllbutton];
    
    UIButton *btn = (UIButton *)sender;
    
    NSLog(@"%@",btn.titleLabel.text);
    NSString *strText = btn.titleLabel.text;
    
    if ([arrSelectedTags containsObject:strText])
    {
        NSInteger anIndexFrom = [arrSelectedTags indexOfObject:[NSString stringWithFormat:@"%@",strText]];

        [arrSelectedTags removeObjectAtIndex:anIndexFrom];
    }
    else
    {
        [arrSelectedTags addObject:strText];
    }


    for (UIView *view in subview_tags.subviews)
    {
        if([view isKindOfClass:[UIButton class]] )
        {
            UIButton *btn = (UIButton*)view;
            
            for (int i = 0 ; i < [arrSelectedTags count]; i++)
            {
                if ([[arrSelectedTags objectAtIndex:i] isEqualToString:btn.titleLabel.text])
                {
                    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
                    btn.backgroundColor = [UIColor whiteColor];
                }
            }
        }
    }
    
    
    if (arrSelectedTags.count > 2)
    {
        //Show
        
        if (!isShowPopup)
        {
            isShowPopup = TRUE;
            
            [APP_DELEGATE animateWithShow:YES withView:subview_social];
            
            subview_social.frame = CGRectMake(0, subview_tags.frame.origin.y, WIDTH, subview_social.frame.size.height);
            
            int remaingSpace = (HEIGHT - 30) - (subview_tags.frame.origin.y + subview_tags.frame.size.height);
            int Y_pos = remaingSpace - subview_social.frame.size.height;
            
            [UIView beginAnimations:@"" context:nil];
            [UIView setAnimationDuration:0.4];
            subview_social.frame = CGRectMake(0, (subview_tags.frame.origin.y + subview_tags.frame.size.height) + (Y_pos/2) , WIDTH, subview_social.frame.size.height);
            [UIView commitAnimations];

        }
    }
    else
    {
        isShowPopup = FALSE;

        //Hide
        [APP_DELEGATE animateWithShow:NO withView:subview_social];
    }
}

-(void)setTagsScreen
{
    CGPoint scrollPoint = CGPointMake(WIDTH*2, 0);
    [scrl setContentOffset:scrollPoint animated:YES];
}

- (IBAction)signInWithEmail:(id)sender
{
    Login_SignupViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"Login_SignupViewController"];
    [self.navigationController pushViewController:move animated:YES];
    /*
    IntroViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"IntroViewController"];
    [self.navigationController pushViewController:move animated:YES];
     */
}


#pragma mark - SOCIAL

- (IBAction)twitter:(id)sender {
}

- (IBAction)facebook:(id)sender {
}

- (IBAction)Google:(id)sender
{
}

- (IBAction)TermsAndPrivacy:(id)sender {
}
@end
