//
//  Cell_Home.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface Cell_Home : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UILabel *lbl_username;
@property (weak, nonatomic) IBOutlet UIImageView *imguser;
@property (weak, nonatomic) IBOutlet UIButton *btn_like;
@property (weak, nonatomic) IBOutlet UIButton *btn_bookmarks;
@property (weak, nonatomic) IBOutlet UIButton *btn_img_profile;


@end
