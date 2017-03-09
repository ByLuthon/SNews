//
//  AddActivityViewController.h
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"

@interface AddActivityViewController : UIViewController
{
    float keyboardHeight;

    UITextView *textView;
    
    int setTitleImage;
    int setQuoteImage;
    int setListImage;

    __weak IBOutlet UIButton *btn_Drafts;
    __weak IBOutlet UIButton *btn_next;
    
    __weak IBOutlet UIButton *btn_text;
    __weak IBOutlet UIButton *btn_quote;
    __weak IBOutlet UIButton *btn_list;
    __weak IBOutlet UIButton *btn_Section;
    __weak IBOutlet UIButton *btn_link;
    __weak IBOutlet UIButton *btn_images;
    
    __weak IBOutlet UIView *view_Tab;
}
- (IBAction)close:(id)sender;

- (IBAction)btnTextTapped:(id)sender;
- (IBAction)btn_QuoteTapped:(id)sender;
- (IBAction)btnListTapped:(id)sender;
- (IBAction)btnSectionTapped:(id)sender;
- (IBAction)btnLinkTapped:(id)sender;
- (IBAction)btnImageTapped:(id)sender;


@end
