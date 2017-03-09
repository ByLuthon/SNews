//
//  EditProfileViewController.h
//  SNews
//
//  Created by macmini on 15/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
#import "RSKImageCropViewController.h"

@interface EditProfileViewController : UIViewController <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
{
    BOOL isCamera;
    
    __weak IBOutlet UIImageView *img_profile;
    
    __weak IBOutlet UITextView *textview_about;
    __weak IBOutlet UITextField *txt_name;
}
- (IBAction)EditProfile:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)close:(id)sender;


@end
