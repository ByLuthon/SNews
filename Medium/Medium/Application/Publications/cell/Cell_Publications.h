//
//  Cell_Publications.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Cell_Publications : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIImageView *img_title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_title;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Desc;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Category;
@property (weak, nonatomic) IBOutlet UIButton *btn_folloow;

@end
