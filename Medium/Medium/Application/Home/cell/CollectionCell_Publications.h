//
//  CollectionCell_Publications.h
//  SNews
//
//  Created by macmini on 03/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface CollectionCell_Publications : UICollectionViewCell
{
    
}
@property (weak, nonatomic) IBOutlet UIView *subview_find;
@property (weak, nonatomic) IBOutlet UIView *subview;
@property (weak, nonatomic) IBOutlet UIButton *btn_follow;
@property (weak, nonatomic) IBOutlet UIImageView *img_box;
@property (weak, nonatomic) IBOutlet UILabel *lbl_title;

@end
