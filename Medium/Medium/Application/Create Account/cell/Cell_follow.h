//
//  Cell_follow.h
//  SNews
//
//  Created by macmini on 02/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface Cell_follow : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *img_icon;
@property (weak, nonatomic) IBOutlet UILabel *lbl_title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_category;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Desc;
@property (weak, nonatomic) IBOutlet UIButton *btn_plus;

@end
