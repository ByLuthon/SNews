//
//  Cell_TrendingDetails.h
//  SNews
//
//  Created by macmini on 15/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell_TrendingDetails : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *img_user;
@property (weak, nonatomic) IBOutlet UILabel *lbl_username;
@property (weak, nonatomic) IBOutlet UIButton *btn_like;
@property (weak, nonatomic) IBOutlet UIButton *btn_bookmarks;
@property (weak, nonatomic) IBOutlet UIButton *btn_user;

@end
