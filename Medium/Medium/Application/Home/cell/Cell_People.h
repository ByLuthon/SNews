//
//  Cell_People.h
//  SNews
//
//  Created by macmini on 07/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell_People : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *img_user;
@property (weak, nonatomic) IBOutlet UILabel *lbl_name;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Desc;
@property (weak, nonatomic) IBOutlet UIButton *btn_follow;

@end
