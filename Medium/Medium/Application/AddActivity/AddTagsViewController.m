//
//  AddTagsViewController.m
//  SNews
//
//  Created by macmini on 10/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "AddTagsViewController.h"

@interface AddTagsViewController ()

@end

@implementation AddTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:@"setTagsArr"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(setTags:) name:@"setTagsArr" object:nil];

    [super viewWillAppear:animated];
}


-(void)setTags:(NSNotification *)notify
{
    NSLog(@"%@",notify.userInfo);
    
    [self setTagsOnview:[notify.userInfo objectForKey:@"tagsArr"]];
}

#pragma mark - Tags on screen
-(void)setTagsOnview:(NSMutableArray *)arrTags
{
    if (arrTags.count > 0)
    {
        [btn_AddTags setTitle:@"" forState:UIControlStateNormal];
        
        int x_tags= btn_AddTags.frame.origin.x;
        int y_tags = 10;
        
        int Heightview = 0;
        for (int ik=0; ik < [arrTags count]; ik++)
        {
            NSString *valueEmoj = [arrTags objectAtIndex:ik];
            UIFont *font = [UIFont systemFontOfSize:12];
            
            valueEmoj = [valueEmoj stringByReplacingOccurrencesOfString:@"," withString:@""];
            valueEmoj = [valueEmoj stringByReplacingOccurrencesOfString:@" " withString:@""];

            CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(250, 20) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
            CGSize size = textRect.size;
            
            Heightview = y_tags + size.height + 30;
            
            UIButton *btn =  [UIButton buttonWithType:UIButtonTypeCustom];
            [btn setFrame:CGRectMake(x_tags, y_tags, size.width + 10, size.height + 10)];
            [btn setTitle:(valueEmoj ? valueEmoj : @"") forState:UIControlStateNormal];
            btn.titleLabel.font = font;
            btn.tag = ik;
            [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
            btn.backgroundColor = [UIColor whiteColor];

            [APP_DELEGATE setBorderToView:btn withBorderWidth:0 radious:4.0 color:[UIColor clearColor]];

            [btn.layer setCornerRadius:4.0f];
            // border
            [btn.layer setBorderColor:[UIColor lightGrayColor].CGColor];
            [btn.layer setBorderWidth:1.0f];

            
            [subview_tags addSubview:btn];
            
            int checkposition = 0;
            int xposition = size.width + 10;
            
            if ([arrTags count]-1 == ik)
            {
                
            }
            else
            {
                NSString *valueEmoj = [arrTags objectAtIndex:ik+1];
                
                CGRect textRect = [valueEmoj boundingRectWithSize:CGSizeMake(WIDTH, 9999) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
                
                CGSize size1 = textRect.size;
                
                checkposition = x_tags + xposition+size1.width;
            }
            if ((WIDTH-50) <= checkposition)
            {
                x_tags = btn_AddTags.frame.origin.x;
                y_tags += 30;
            }
            else
            {
                x_tags+=size.width + 20;
            }
            
        }
        
        btn_AddTags.frame = CGRectMake(0, 0, btn_AddTags.frame.size.height, Heightview);
        subview_tags.frame = CGRectMake(0, 0, WIDTH, Heightview);
        
        subview_bottom.frame = CGRectMake(0, HEIGHT - (Heightview+180), WIDTH, Heightview+180);
    }
    else
    {
        
    }
    
    
    //scrl.contentSize = CGSizeMake(WIDTH , Heightview);
}


- (IBAction)HIde:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Tags:(id)sender
{
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    TagsListViewController *move = [self.storyboard instantiateViewControllerWithIdentifier:@"TagsListViewController"];
    [self presentViewController:move animated:YES completion:nil];
}
@end
