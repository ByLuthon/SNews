//
//  Cell_Responces.h
//  SNews
//
//  Created by macmini on 07/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface Cell_Responces : UITableViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIView *subview_profile;
@property (weak, nonatomic) IBOutlet UIView *subview_question;
@property (weak, nonatomic) IBOutlet UIButton *btn_like;
@property (weak, nonatomic) IBOutlet UIButton *btn_bookmarks;
@property (weak, nonatomic) IBOutlet UIButton *btn_user;

@end
