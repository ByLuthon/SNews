//
//  AddActivityViewController.m
//  SNews
//
//  Created by macmini on 06/02/17.
//  Copyright © 2017 macmini. All rights reserved.
//

#import "AddActivityViewController.h"
#import "IQKeyboardManager.h"

@interface AddActivityViewController ()
{

}

@end

@implementation AddActivityViewController

- (void)viewDidLoad
{
    self.view.frame = CGRectMake(0, 0, WIDTH, HEIGHT);
    
    textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 60, WIDTH, HEIGHT-60)];
    textView.backgroundColor = [UIColor whiteColor];
    textView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    textView.inputAccessoryView = [self inputAccessoryView];
    //[textView importHTMLString:@"Hello <b>W<strike>o</strike><u>r</u><mark>l</mark><i>d</i></b>"];
    //textView.plainText = @"Hello World";
    [self.view addSubview:textView];
    [textView becomeFirstResponder];

    //[txtview becomeFirstResponder];
    [[IQKeyboardManager sharedManager] setEnableAutoToolbar:FALSE];

    [self setInitParam];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self registerForKeyboardNotifications];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [self deregisterFromKeyboardNotifications];

    [[IQKeyboardManager sharedManager] setEnableAutoToolbar:TRUE];
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setInitParam
{
    //Title
    setTitleImage = 0;
    [self setTextImageOnbutton:0];
    
    //Quote
    setQuoteImage = 0;
    [self setQuoteImageOnbutton:0];

    
    //List
    setListImage = 0;
    [self setListImageOnButton:0];
}


-(void)setTextImageOnbutton:(int)buttonInt
{
    [btn_text setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_editor_title_%d_24dp.png",buttonInt]] forState:UIControlStateNormal];
}
-(void)setQuoteImageOnbutton:(int)buttonInt
{
    [btn_quote setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_editor_quote_%d_24dp.png",buttonInt]] forState:UIControlStateNormal];
}
-(void)setListImageOnButton:(int)buttonInt
{
    [btn_list setImage:[UIImage imageNamed:[NSString stringWithFormat:@"ic_editor_list_%d_24dp.png",buttonInt]] forState:UIControlStateNormal];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
#pragma mark - keyboard notif

- (void)registerForKeyboardNotifications
{
    [self deregisterFromKeyboardNotifications];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWasShown:)
                                                 name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillBeHidden:)
                                                 name:UIKeyboardWillHideNotification object:nil];
}

- (void)deregisterFromKeyboardNotifications
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}
- (void)keyboardWasShown:(NSNotification *)notification
{
    NSDictionary* info = [notification userInfo];
    //CGSize currentKeyboardSize = [[info objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
    CGSize currentKeyboardSize = [[info objectForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue].size;
    
    
    keyboardHeight = currentKeyboardSize.height;
    [self setViewMovedUp:YES];
}

- (void)keyboardWillBeHidden:(NSNotification *)notification
{
    keyboardHeight = 0;
    [self setViewMovedUp:NO];
    
    //[self.scrollView setContentOffset:CGPointZero animated:YES];
}
#pragma mark - Move view

- (void)setViewMovedUp:(BOOL)movedUp
{
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    CGRect rect = view_Tab.frame;
    
    rect.origin.y = self.view.frame.size.height - view_Tab.frame.size.height;
    if (movedUp)
    {
        rect.origin.y -= keyboardHeight;
    }
    
    if(!movedUp)
    {
        rect.origin.y = HEIGHT - view_Tab.frame.size.height;
    }
    
    view_Tab.frame = rect;
    
    textView.frame = CGRectMake(0, 60, WIDTH, HEIGHT - rect.origin.y);
    
    [UIView commitAnimations];
}


- (IBAction)close:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)btnTextTapped:(id)sender
{
    if (setTitleImage == 2)
    {
        setTitleImage = 0;
    }
    else
    {
        setTitleImage++;
    }
    [self setTextImageOnbutton:setTitleImage];
    
    
    
    if (setTitleImage == 0)
    {
        //[textView paragraphAction:self];
    }
    else if (setTitleImage == 1)
    {
       // [textView sectionAction:self];
    }
    else
    {
        //[textView subSectionAction:self];
    }
}

- (IBAction)btn_QuoteTapped:(id)sender
{
    //[textView paragraphAction:self];

    if (setQuoteImage == 2)
    {
        setQuoteImage = 0;
    }
    else
    {
        setQuoteImage++;
    }
    [self setQuoteImageOnbutton:setQuoteImage];
    
    
    
    
    if (setQuoteImage == 0)
    {
        //[textView paragraphAction:self];
    }
    else if (setQuoteImage == 1)
    {

    }
    else
    {
        //[textView blockquoteAction:self];
    }

}

- (IBAction)btnListTapped:(id)sender
{
    //[textView paragraphAction:self];

    if (setListImage == 2)
    {
        setListImage = 0;
    }
    else
    {
        setListImage++;
    }
    [self setListImageOnButton:setListImage];
    
    
    
    
    if (setListImage == 0)
    {
        //[textView paragraphAction:self];
    }
    else if (setListImage == 1)
    {
        //[textView bulletAction:self];
    }
    else
    {
        //[textView numberingAction:self];
    }
}

- (IBAction)btnSectionTapped:(id)sender {
}

- (IBAction)btnLinkTapped:(id)sender {
}

- (IBAction)btnImageTapped:(id)sender {
}
@end
