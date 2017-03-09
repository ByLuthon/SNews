//
//  TagsViewController.m
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "TagsViewController.h"

@interface TagsViewController ()

@end

@implementation TagsViewController

- (void)viewDidLoad
{
    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

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
    
    
    btn_next.enabled = FALSE;

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

#pragma mark - TAGS

-(void)setTags
{
    int x_tags= 20;
    int y_tags = 10;
    int margin = 45;
    
    int Heightview = 0;
    for (int ik=0; ik < [arrTags count]; ik++)
    {
        NSString *valueEmoj = [arrTags objectAtIndex:ik];
        UIFont *font = [UIFont systemFontOfSize:16];
        
        CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(250, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
        CGSize size = textRect.size;
        
        Heightview = y_tags + size.height + 10;
        
        UIButton *btn =  [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setFrame:CGRectMake(x_tags, y_tags, size.width + 20, size.height + 20)];
        [btn setTitle:(valueEmoj ? valueEmoj : @"") forState:UIControlStateNormal];
        btn.titleLabel.font = font;
        btn.tag = ik;
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        btn.backgroundColor = [UIColor whiteColor];
        [btn addTarget:self action:@selector(ClickTag:) forControlEvents:UIControlEventTouchUpInside];
        [APP_DELEGATE setBorderToView:btn withBorderWidth:0 radious:4.0 color:[UIColor clearColor]];
        //[_globalGDXData setShaowOnView:btn shadowRadius:1.0 shadowOpacity:1.0 cornerRadius:0.0];
        // border radius
        [btn.layer setCornerRadius:4.0f];
        // border
        [btn.layer setBorderColor:[UIColor lightGrayColor].CGColor];
        [btn.layer setBorderWidth:0.5f];
        // drop shadow
        [btn.layer setShadowColor:[UIColor grayColor].CGColor];
        [btn.layer setShadowOpacity:0.8];
        [btn.layer setShadowRadius:1.0];
        [btn.layer setShadowOffset:CGSizeMake(1.0, 2.0)];

        [scrl addSubview:btn];
        
        
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
            y_tags += 55;
            margin += 45;
        }
        else
        {
            x_tags+=size.width + 30;
        }
        
    }
    
    scrl.contentSize = CGSizeMake(WIDTH , Heightview);
}
-(void)resetAllbutton
{
    for (UIView *view in scrl.subviews)
    {
        if([view isKindOfClass:[UIButton class]] )
        {
            UIButton *btn = (UIButton*)view;
            
            [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            btn.backgroundColor = [UIColor whiteColor];
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
    
    
    for (UIView *view in scrl.subviews)
    {
        if([view isKindOfClass:[UIButton class]] )
        {
            UIButton *btn = (UIButton*)view;
            
            for (int i = 0 ; i < [arrSelectedTags count]; i++)
            {
                if ([[arrSelectedTags objectAtIndex:i] isEqualToString:btn.titleLabel.text])
                {
                    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                    btn.backgroundColor = kColorLightGreen;
                }
            }
        }
    }
    
    
    if (arrSelectedTags.count > 2)
    {
        //
        btn_next.enabled = TRUE;
    }
    else
    {
        btn_next.enabled = FALSE;
    }
}


- (IBAction)Next:(id)sender
{
    FollowViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"FollowViewController"];
    [self.navigationController pushViewController:move animated:YES];
}
@end
